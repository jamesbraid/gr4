# Source: /xlv55/kudzu-apr12/work/gfx/lib/libgl/iglooIGLOO.N32.D/gl_if.s
# Category: stubs
# Compiler Options: 
# Total Functions: 547

.text

# Function: __GLgbegin
# Declared: Line 527 (Source lines: 527-527)
# Address: 0x0f0c0ff4 - 0x0f0c10a0 (Size: 172 bytes, Frame: 224)
.globl __GLgbegin
.ent __GLgbegin
__GLgbegin:
    # Line 527
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,8788
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1088
    la	$t9,gl_g_gbegin
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gbegin
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1088
    nop
    la	$t9,gl_g_gbegin
.L0f0c1088:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgbegin

# Function: __GLgetwscrn
# Declared: Line 528 (Source lines: 528-528)
# Address: 0x0f0c10a0 - 0x0f0c1168 (Size: 200 bytes, Frame: 224)
.globl __GLgetwscrn
.ent __GLgetwscrn
__GLgetwscrn:
    # Line 528
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,8616
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1100
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1100:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1150
    la	$t9,gl_g_getwscrn
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getwscrn
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1150
    nop
    la	$t9,gl_g_getwscrn
.L0f0c1150:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetwscrn

# Function: __GLblanktime
# Declared: Line 529 (Source lines: 529-529)
# Address: 0x0f0c1168 - 0x0f0c1230 (Size: 200 bytes, Frame: 224)
.globl __GLblanktime
.ent __GLblanktime
__GLblanktime:
    # Line 529
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,8416
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c11c8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c11c8:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1218
    la	$t9,gl_g_blanktime
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_blanktime
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1218
    nop
    la	$t9,gl_g_blanktime
.L0f0c1218:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLblanktime

# Function: __GLnoport
# Declared: Line 530 (Source lines: 530-530)
# Address: 0x0f0c1230 - 0x0f0c12f8 (Size: 200 bytes, Frame: 224)
.globl __GLnoport
.ent __GLnoport
__GLnoport:
    # Line 530
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,8216
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1290
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1290:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c12e0
    la	$t9,gl_g_noport
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_noport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c12e0
    nop
    la	$t9,gl_g_noport
.L0f0c12e0:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLnoport

# Function: __GLtextcolor
# Declared: Line 531 (Source lines: 531-531)
# Address: 0x0f0c12f8 - 0x0f0c13a4 (Size: 172 bytes, Frame: 224)
.globl __GLtextcolor
.ent __GLtextcolor
__GLtextcolor:
    # Line 531
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,8016
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c138c
    la	$t9,gl_g_textcolor
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_textcolor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c138c
    nop
    la	$t9,gl_g_textcolor
.L0f0c138c:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLtextcolor

# Function: __GLscrnattach
# Declared: Line 532 (Source lines: 532-532)
# Address: 0x0f0c13a4 - 0x0f0c146c (Size: 200 bytes, Frame: 224)
.globl __GLscrnattach
.ent __GLscrnattach
__GLscrnattach:
    # Line 532
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,7844
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1404
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1404:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1454
    la	$t9,gl_g_scrnattach
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_scrnattach
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1454
    nop
    la	$t9,gl_g_scrnattach
.L0f0c1454:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLscrnattach

# Function: __GLvideocmd
# Declared: Line 533 (Source lines: 533-533)
# Address: 0x0f0c146c - 0x0f0c1534 (Size: 200 bytes, Frame: 224)
.globl __GLvideocmd
.ent __GLvideocmd
__GLvideocmd:
    # Line 533
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,7644
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c14cc
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c14cc:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c151c
    la	$t9,gl_g_videocmd
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_videocmd
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c151c
    nop
    la	$t9,gl_g_videocmd
.L0f0c151c:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLvideocmd

# Function: __GLtextinit
# Declared: Line 534 (Source lines: 534-534)
# Address: 0x0f0c1534 - 0x0f0c15e0 (Size: 172 bytes, Frame: 224)
.globl __GLtextinit
.ent __GLtextinit
__GLtextinit:
    # Line 534
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,7444
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c15c8
    la	$t9,gl_g_textinit
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_textinit
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c15c8
    nop
    la	$t9,gl_g_textinit
.L0f0c15c8:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLtextinit

# Function: __GLgetvaluator
# Declared: Line 535 (Source lines: 535-535)
# Address: 0x0f0c15e0 - 0x0f0c16a8 (Size: 200 bytes, Frame: 224)
.globl __GLgetvaluator
.ent __GLgetvaluator
__GLgetvaluator:
    # Line 535
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,7272
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1640
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1640:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1690
    la	$t9,gl_g_getvaluator
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getvaluator
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1690
    nop
    la	$t9,gl_g_getvaluator
.L0f0c1690:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetvaluator

# Function: __GLgetresetls
# Declared: Line 536 (Source lines: 536-536)
# Address: 0x0f0c16a8 - 0x0f0c1754 (Size: 172 bytes, Frame: 224)
.globl __GLgetresetls
.ent __GLgetresetls
__GLgetresetls:
    # Line 536
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,7072
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c173c
    la	$t9,gl_g_getresetls
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getresetls
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c173c
    nop
    la	$t9,gl_g_getresetls
.L0f0c173c:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetresetls

# Function: __GLblink
# Declared: Line 537 (Source lines: 537-537)
# Address: 0x0f0c1754 - 0x0f0c181c (Size: 200 bytes, Frame: 224)
.globl __GLblink
.ent __GLblink
__GLblink:
    # Line 537
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,6900
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c17b4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c17b4:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1804
    la	$t9,gl_g_blink
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_blink
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1804
    nop
    la	$t9,gl_g_blink
.L0f0c1804:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLblink

# Function: __GLqreset
# Declared: Line 538 (Source lines: 538-538)
# Address: 0x0f0c181c - 0x0f0c18e4 (Size: 200 bytes, Frame: 224)
.globl __GLqreset
.ent __GLqreset
__GLqreset:
    # Line 538
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,6700
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c187c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c187c:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c18cc
    la	$t9,gl_g_qreset
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_qreset
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c18cc
    nop
    la	$t9,gl_g_qreset
.L0f0c18cc:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLqreset

# Function: __GLdbtext
# Declared: Line 539 (Source lines: 539-539)
# Address: 0x0f0c18e4 - 0x0f0c19ac (Size: 200 bytes, Frame: 224)
.globl __GLdbtext
.ent __GLdbtext
__GLdbtext:
    # Line 539
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,6500
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1944
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1944:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1994
    la	$t9,gl_g_dbtext
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_dbtext
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1994
    nop
    la	$t9,gl_g_dbtext
.L0f0c1994:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLdbtext

# Function: __GLpagecolor
# Declared: Line 540 (Source lines: 540-540)
# Address: 0x0f0c19ac - 0x0f0c1a58 (Size: 172 bytes, Frame: 224)
.globl __GLpagecolor
.ent __GLpagecolor
__GLpagecolor:
    # Line 540
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,6300
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1a40
    la	$t9,gl_g_pagecolor
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pagecolor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1a40
    nop
    la	$t9,gl_g_pagecolor
.L0f0c1a40:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLpagecolor

# Function: __GLtpoff
# Declared: Line 541 (Source lines: 541-541)
# Address: 0x0f0c1a58 - 0x0f0c1b04 (Size: 172 bytes, Frame: 224)
.globl __GLtpoff
.ent __GLtpoff
__GLtpoff:
    # Line 541
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,6128
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1aec
    la	$t9,gl_g_tpoff
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_tpoff
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1aec
    nop
    la	$t9,gl_g_tpoff
.L0f0c1aec:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLtpoff

# Function: __GLqread
# Declared: Line 542 (Source lines: 542-542)
# Address: 0x0f0c1b04 - 0x0f0c1bcc (Size: 200 bytes, Frame: 224)
.globl __GLqread
.ent __GLqread
__GLqread:
    # Line 542
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,5956
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1b64
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1b64:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1bb4
    la	$t9,gl_g_qread
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_qread
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1bb4
    nop
    la	$t9,gl_g_qread
.L0f0c1bb4:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLqread

# Function: __GLqenter
# Declared: Line 543 (Source lines: 543-543)
# Address: 0x0f0c1bcc - 0x0f0c1c94 (Size: 200 bytes, Frame: 224)
.globl __GLqenter
.ent __GLqenter
__GLqenter:
    # Line 543
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,5756
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1c2c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1c2c:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1c7c
    la	$t9,gl_g_qenter
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_qenter
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1c7c
    nop
    la	$t9,gl_g_qenter
.L0f0c1c7c:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLqenter

# Function: __GLgethitcode
# Declared: Line 544 (Source lines: 544-544)
# Address: 0x0f0c1c94 - 0x0f0c1d40 (Size: 172 bytes, Frame: 224)
.globl __GLgethitcode
.ent __GLgethitcode
__GLgethitcode:
    # Line 544
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,5556
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1d28
    la	$t9,gl_g_gethitcode
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gethitcode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1d28
    nop
    la	$t9,gl_g_gethitcode
.L0f0c1d28:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgethitcode

# Function: __GLgetpor
# Declared: Line 545 (Source lines: 545-545)
# Address: 0x0f0c1d40 - 0x0f0c1e08 (Size: 200 bytes, Frame: 224)
.globl __GLgetpor
.ent __GLgetpor
__GLgetpor:
    # Line 545
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,5384
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1da0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1da0:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1df0
    la	$t9,gl_g_getpor
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getpor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1df0
    nop
    la	$t9,gl_g_getpor
.L0f0c1df0:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetpor

# Function: __GLgetbutton
# Declared: Line 546 (Source lines: 546-546)
# Address: 0x0f0c1e08 - 0x0f0c1ed0 (Size: 200 bytes, Frame: 224)
.globl __GLgetbutton
.ent __GLgetbutton
__GLgetbutton:
    # Line 546
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,5184
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1e68
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1e68:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1eb8
    la	$t9,gl_g_getbutton
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getbutton
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1eb8
    nop
    la	$t9,gl_g_getbutton
.L0f0c1eb8:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetbutton

# Function: __GLsetvideo
# Declared: Line 547 (Source lines: 547-547)
# Address: 0x0f0c1ed0 - 0x0f0c1f98 (Size: 200 bytes, Frame: 224)
.globl __GLsetvideo
.ent __GLsetvideo
__GLsetvideo:
    # Line 547
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,4984
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1f30
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1f30:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c1f80
    la	$t9,gl_g_setvideo
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setvideo
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c1f80
    nop
    la	$t9,gl_g_setvideo
.L0f0c1f80:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLsetvideo

# Function: __GLgetothermonitor
# Declared: Line 548 (Source lines: 548-548)
# Address: 0x0f0c1f98 - 0x0f0c2060 (Size: 200 bytes, Frame: 224)
.globl __GLgetothermonitor
.ent __GLgetothermonitor
__GLgetothermonitor:
    # Line 548
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,4784
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c1ff8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c1ff8:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2048
    la	$t9,gl_g_getothermonitor
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getothermonitor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2048
    nop
    la	$t9,gl_g_getothermonitor
.L0f0c2048:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetothermonitor

# Function: __GLismex
# Declared: Line 549 (Source lines: 549-549)
# Address: 0x0f0c2060 - 0x0f0c2128 (Size: 200 bytes, Frame: 224)
.globl __GLismex
.ent __GLismex
__GLismex:
    # Line 549
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,4584
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c20c0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c20c0:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2110
    la	$t9,gl_g_ismex
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_ismex
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2110
    nop
    la	$t9,gl_g_ismex
.L0f0c2110:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLismex

# Function: __GLqtest
# Declared: Line 550 (Source lines: 550-550)
# Address: 0x0f0c2128 - 0x0f0c21f0 (Size: 200 bytes, Frame: 224)
.globl __GLqtest
.ent __GLqtest
__GLqtest:
    # Line 550
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,4384
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2188
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2188:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c21d8
    la	$t9,gl_g_qtest
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_qtest
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c21d8
    nop
    la	$t9,gl_g_qtest
.L0f0c21d8:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLqtest

# Function: __GLqcontrol
# Declared: Line 551 (Source lines: 551-551)
# Address: 0x0f0c21f0 - 0x0f0c22b8 (Size: 200 bytes, Frame: 224)
.globl __GLqcontrol
.ent __GLqcontrol
__GLqcontrol:
    # Line 551
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,4184
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2250
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2250:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c22a0
    la	$t9,gl_g_qcontrol
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_qcontrol
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c22a0
    nop
    la	$t9,gl_g_qcontrol
.L0f0c22a0:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLqcontrol

# Function: __GLprefposition
# Declared: Line 552 (Source lines: 552-552)
# Address: 0x0f0c22b8 - 0x0f0c2380 (Size: 200 bytes, Frame: 224)
.globl __GLprefposition
.ent __GLprefposition
__GLprefposition:
    # Line 552
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,3984
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2318
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2318:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2368
    la	$t9,gl_g_prefposition
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_prefposition
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2368
    nop
    la	$t9,gl_g_prefposition
.L0f0c2368:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLprefposition

# Function: __GLblankscreen
# Declared: Line 553 (Source lines: 553-553)
# Address: 0x0f0c2380 - 0x0f0c2448 (Size: 200 bytes, Frame: 224)
.globl __GLblankscreen
.ent __GLblankscreen
__GLblankscreen:
    # Line 553
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,3784
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c23e0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c23e0:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2430
    la	$t9,gl_g_blankscreen
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_blankscreen
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2430
    nop
    la	$t9,gl_g_blankscreen
.L0f0c2430:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLblankscreen

# Function: __GLsetfastcom
# Declared: Line 554 (Source lines: 554-554)
# Address: 0x0f0c2448 - 0x0f0c2510 (Size: 200 bytes, Frame: 224)
.globl __GLsetfastcom
.ent __GLsetfastcom
__GLsetfastcom:
    # Line 554
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,3584
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c24a8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c24a8:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c24f8
    la	$t9,gl_g_setfastcom
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setfastcom
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c24f8
    nop
    la	$t9,gl_g_setfastcom
.L0f0c24f8:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLsetfastcom

# Function: __GLimakebackground
# Declared: Line 555 (Source lines: 555-555)
# Address: 0x0f0c2510 - 0x0f0c25d8 (Size: 200 bytes, Frame: 224)
.globl __GLimakebackground
.ent __GLimakebackground
__GLimakebackground:
    # Line 555
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,3384
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2570
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2570:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c25c0
    la	$t9,gl_g_imakebackground
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_imakebackground
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c25c0
    nop
    la	$t9,gl_g_imakebackground
.L0f0c25c0:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLimakebackground

# Function: __GLringbell
# Declared: Line 556 (Source lines: 556-556)
# Address: 0x0f0c25d8 - 0x0f0c26a0 (Size: 200 bytes, Frame: 224)
.globl __GLringbell
.ent __GLringbell
__GLringbell:
    # Line 556
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,3184
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2638
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2638:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2688
    la	$t9,gl_g_ringbell
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_ringbell
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2688
    nop
    la	$t9,gl_g_ringbell
.L0f0c2688:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLringbell

# Function: __GLprefsize
# Declared: Line 557 (Source lines: 557-557)
# Address: 0x0f0c26a0 - 0x0f0c2768 (Size: 200 bytes, Frame: 224)
.globl __GLprefsize
.ent __GLprefsize
__GLprefsize:
    # Line 557
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,2984
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2700
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2700:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2750
    la	$t9,gl_g_prefsize
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_prefsize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2750
    nop
    la	$t9,gl_g_prefsize
.L0f0c2750:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLprefsize

# Function: __GLforeground
# Declared: Line 558 (Source lines: 558-558)
# Address: 0x0f0c2768 - 0x0f0c2830 (Size: 200 bytes, Frame: 224)
.globl __GLforeground
.ent __GLforeground
__GLforeground:
    # Line 558
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,2784
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c27c8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c27c8:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2818
    la	$t9,gl_g_foreground
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_foreground
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2818
    nop
    la	$t9,gl_g_foreground
.L0f0c2818:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLforeground

# Function: __GLgetport
# Declared: Line 559 (Source lines: 559-559)
# Address: 0x0f0c2830 - 0x0f0c28f8 (Size: 200 bytes, Frame: 224)
.globl __GLgetport
.ent __GLgetport
__GLgetport:
    # Line 559
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,2584
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2890
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2890:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c28e0
    la	$t9,gl_g_getport
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c28e0
    nop
    la	$t9,gl_g_getport
.L0f0c28e0:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetport

# Function: __GLkeepaspect
# Declared: Line 560 (Source lines: 560-560)
# Address: 0x0f0c28f8 - 0x0f0c29c0 (Size: 200 bytes, Frame: 224)
.globl __GLkeepaspect
.ent __GLkeepaspect
__GLkeepaspect:
    # Line 560
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,2384
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2958
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2958:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c29a8
    la	$t9,gl_g_keepaspect
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_keepaspect
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c29a8
    nop
    la	$t9,gl_g_keepaspect
.L0f0c29a8:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLkeepaspect

# Function: __GLattachcursor
# Declared: Line 561 (Source lines: 561-561)
# Address: 0x0f0c29c0 - 0x0f0c2a88 (Size: 200 bytes, Frame: 224)
.globl __GLattachcursor
.ent __GLattachcursor
__GLattachcursor:
    # Line 561
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,2184
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2a20
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2a20:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2a70
    la	$t9,gl_g_attachcursor
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_attachcursor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2a70
    nop
    la	$t9,gl_g_attachcursor
.L0f0c2a70:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLattachcursor

# Function: __GLwinope
# Declared: Line 562 (Source lines: 562-562)
# Address: 0x0f0c2a88 - 0x0f0c2b50 (Size: 200 bytes, Frame: 224)
.globl __GLwinope
.ent __GLwinope
__GLwinope:
    # Line 562
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,1984
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2ae8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2ae8:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2b38
    la	$t9,gl_g_winope
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winope
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2b38
    nop
    la	$t9,gl_g_winope
.L0f0c2b38:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLwinope

# Function: __GLwinopen
# Declared: Line 563 (Source lines: 563-563)
# Address: 0x0f0c2b50 - 0x0f0c2c18 (Size: 200 bytes, Frame: 224)
.globl __GLwinopen
.ent __GLwinopen
__GLwinopen:
    # Line 563
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,1784
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2bb0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2bb0:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2c00
    la	$t9,gl_g_winopen
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winopen
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2c00
    nop
    la	$t9,gl_g_winopen
.L0f0c2c00:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLwinopen

# Function: __GLgetvideo
# Declared: Line 564 (Source lines: 564-564)
# Address: 0x0f0c2c18 - 0x0f0c2ce0 (Size: 200 bytes, Frame: 224)
.globl __GLgetvideo
.ent __GLgetvideo
__GLgetvideo:
    # Line 564
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,1584
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2c78
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2c78:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2cc8
    la	$t9,gl_g_getvideo
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getvideo
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2cc8
    nop
    la	$t9,gl_g_getvideo
.L0f0c2cc8:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetvideo

# Function: __GLtextport
# Declared: Line 565 (Source lines: 565-565)
# Address: 0x0f0c2ce0 - 0x0f0c2d8c (Size: 172 bytes, Frame: 224)
.globl __GLtextport
.ent __GLtextport
__GLtextport:
    # Line 565
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,1384
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2d74
    la	$t9,gl_g_textport
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_textport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2d74
    nop
    la	$t9,gl_g_textport
.L0f0c2d74:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLtextport

# Function: __GLfudge
# Declared: Line 566 (Source lines: 566-566)
# Address: 0x0f0c2d8c - 0x0f0c2e54 (Size: 200 bytes, Frame: 224)
.globl __GLfudge
.ent __GLfudge
__GLfudge:
    # Line 566
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,1212
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2dec
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2dec:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2e3c
    la	$t9,gl_g_fudge
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_fudge
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2e3c
    nop
    la	$t9,gl_g_fudge
.L0f0c2e3c:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLfudge

# Function: __GLsetbell
# Declared: Line 567 (Source lines: 567-567)
# Address: 0x0f0c2e54 - 0x0f0c2f1c (Size: 200 bytes, Frame: 224)
.globl __GLsetbell
.ent __GLsetbell
__GLsetbell:
    # Line 567
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,1012
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2eb4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2eb4:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2f04
    la	$t9,gl_g_setbell
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setbell
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2f04
    nop
    la	$t9,gl_g_setbell
.L0f0c2f04:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLsetbell

# Function: __GLpagewritemask
# Declared: Line 568 (Source lines: 568-568)
# Address: 0x0f0c2f1c - 0x0f0c2fe4 (Size: 200 bytes, Frame: 224)
.globl __GLpagewritemask
.ent __GLpagewritemask
__GLpagewritemask:
    # Line 568
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,812
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c2f7c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c2f7c:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c2fcc
    la	$t9,gl_g_pagewritemask
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pagewritemask
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c2fcc
    nop
    la	$t9,gl_g_pagewritemask
.L0f0c2fcc:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLpagewritemask

# Function: __GLclkon
# Declared: Line 569 (Source lines: 569-569)
# Address: 0x0f0c2fe4 - 0x0f0c30ac (Size: 200 bytes, Frame: 224)
.globl __GLclkon
.ent __GLclkon
__GLclkon:
    # Line 569
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,612
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3044
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c3044:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3094
    la	$t9,gl_g_clkon
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_clkon
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3094
    nop
    la	$t9,gl_g_clkon
.L0f0c3094:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLclkon

# Function: __GLscrnselect
# Declared: Line 570 (Source lines: 570-570)
# Address: 0x0f0c30ac - 0x0f0c3174 (Size: 200 bytes, Frame: 224)
.globl __GLscrnselect
.ent __GLscrnselect
__GLscrnselect:
    # Line 570
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,412
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c310c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c310c:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c315c
    la	$t9,gl_g_scrnselect
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_scrnselect
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c315c
    nop
    la	$t9,gl_g_scrnselect
.L0f0c315c:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLscrnselect

# Function: __GLsetslowcom
# Declared: Line 571 (Source lines: 571-571)
# Address: 0x0f0c3174 - 0x0f0c323c (Size: 200 bytes, Frame: 224)
.globl __GLsetslowcom
.ent __GLsetslowcom
__GLsetslowcom:
    # Line 571
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,212
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c31d4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c31d4:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3224
    la	$t9,gl_g_setslowcom
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setslowcom
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3224
    nop
    la	$t9,gl_g_setslowcom
.L0f0c3224:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLsetslowcom

# Function: __GLstepunit
# Declared: Line 572 (Source lines: 572-572)
# Address: 0x0f0c323c - 0x0f0c3304 (Size: 200 bytes, Frame: 224)
.globl __GLstepunit
.ent __GLstepunit
__GLstepunit:
    # Line 572
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,12
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c329c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c329c:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c32ec
    la	$t9,gl_g_stepunit
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_stepunit
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c32ec
    nop
    la	$t9,gl_g_stepunit
.L0f0c32ec:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLstepunit

# Function: __GLisqueued
# Declared: Line 573 (Source lines: 573-573)
# Address: 0x0f0c3304 - 0x0f0c33cc (Size: 200 bytes, Frame: 224)
.globl __GLisqueued
.ent __GLisqueued
__GLisqueued:
    # Line 573
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-188
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3364
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c3364:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c33b4
    la	$t9,gl_g_isqueued
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_isqueued
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c33b4
    nop
    la	$t9,gl_g_isqueued
.L0f0c33b4:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLisqueued

# Function: __GLminsize
# Declared: Line 574 (Source lines: 574-574)
# Address: 0x0f0c33cc - 0x0f0c3494 (Size: 200 bytes, Frame: 224)
.globl __GLminsize
.ent __GLminsize
__GLminsize:
    # Line 574
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-388
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c342c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c342c:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c347c
    la	$t9,gl_g_minsize
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_minsize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c347c
    nop
    la	$t9,gl_g_minsize
.L0f0c347c:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLminsize

# Function: __GLclkoff
# Declared: Line 575 (Source lines: 575-575)
# Address: 0x0f0c3494 - 0x0f0c355c (Size: 200 bytes, Frame: 224)
.globl __GLclkoff
.ent __GLclkoff
__GLclkoff:
    # Line 575
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-588
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c34f4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c34f4:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3544
    la	$t9,gl_g_clkoff
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_clkoff
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3544
    nop
    la	$t9,gl_g_clkoff
.L0f0c3544:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLclkoff

# Function: __GLtpon
# Declared: Line 576 (Source lines: 576-576)
# Address: 0x0f0c355c - 0x0f0c3608 (Size: 172 bytes, Frame: 224)
.globl __GLtpon
.ent __GLtpon
__GLtpon:
    # Line 576
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-788
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c35f0
    la	$t9,gl_g_tpon
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_tpon
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c35f0
    nop
    la	$t9,gl_g_tpon
.L0f0c35f0:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLtpon

# Function: __GLmaxsize
# Declared: Line 577 (Source lines: 577-577)
# Address: 0x0f0c3608 - 0x0f0c36d0 (Size: 200 bytes, Frame: 224)
.globl __GLmaxsize
.ent __GLmaxsize
__GLmaxsize:
    # Line 577
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-960
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3668
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c3668:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c36b8
    la	$t9,gl_g_maxsize
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_maxsize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c36b8
    nop
    la	$t9,gl_g_maxsize
.L0f0c36b8:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLmaxsize

# Function: __GLgetgdesc
# Declared: Line 578 (Source lines: 578-578)
# Address: 0x0f0c36d0 - 0x0f0c3798 (Size: 200 bytes, Frame: 224)
.globl __GLgetgdesc
.ent __GLgetgdesc
__GLgetgdesc:
    # Line 578
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-1160
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3730
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c3730:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3780
    la	$t9,gl_g_getgdesc
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getgdesc
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3780
    nop
    la	$t9,gl_g_getgdesc
.L0f0c3780:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetgdesc

# Function: __GLicontitle
# Declared: Line 579 (Source lines: 579-579)
# Address: 0x0f0c3798 - 0x0f0c3860 (Size: 200 bytes, Frame: 224)
.globl __GLicontitle
.ent __GLicontitle
__GLicontitle:
    # Line 579
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-1360
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c37f8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c37f8:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3848
    la	$t9,gl_g_icontitle
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_icontitle
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3848
    nop
    la	$t9,gl_g_icontitle
.L0f0c3848:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLicontitle

# Function: __GLgversion
# Declared: Line 580 (Source lines: 580-580)
# Address: 0x0f0c3860 - 0x0f0c3928 (Size: 200 bytes, Frame: 224)
.globl __GLgversion
.ent __GLgversion
__GLgversion:
    # Line 580
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-1560
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c38c0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c38c0:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3910
    la	$t9,gl_g_gversion
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gversion
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3910
    nop
    la	$t9,gl_g_gversion
.L0f0c3910:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgversion

# Function: __GLiconti
# Declared: Line 581 (Source lines: 581-581)
# Address: 0x0f0c3928 - 0x0f0c39f0 (Size: 200 bytes, Frame: 224)
.globl __GLiconti
.ent __GLiconti
__GLiconti:
    # Line 581
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-1760
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3988
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c3988:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c39d8
    la	$t9,gl_g_iconti
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_iconti
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c39d8
    nop
    la	$t9,gl_g_iconti
.L0f0c39d8:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLiconti

# Function: __GLlampon
# Declared: Line 582 (Source lines: 582-582)
# Address: 0x0f0c39f0 - 0x0f0c3ab8 (Size: 200 bytes, Frame: 224)
.globl __GLlampon
.ent __GLlampon
__GLlampon:
    # Line 582
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-1960
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3a50
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c3a50:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3aa0
    la	$t9,gl_g_lampon
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lampon
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3aa0
    nop
    la	$t9,gl_g_lampon
.L0f0c3aa0:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLlampon

# Function: __GLlampoff
# Declared: Line 583 (Source lines: 583-583)
# Address: 0x0f0c3ab8 - 0x0f0c3b80 (Size: 200 bytes, Frame: 224)
.globl __GLlampoff
.ent __GLlampoff
__GLlampoff:
    # Line 583
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-2160
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3b18
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    jalr	$t9
    nop
.L0f0c3b18:
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3b68
    la	$t9,gl_g_lampoff
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lampoff
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3b68
    nop
    la	$t9,gl_g_lampoff
.L0f0c3b68:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLlampoff

# Function: __GLginit
# Declared: Line 584 (Source lines: 584-584)
# Address: 0x0f0c3b80 - 0x0f0c3c2c (Size: 172 bytes, Frame: 224)
.globl __GLginit
.ent __GLginit
__GLginit:
    # Line 584
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-2360
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3c14
    la	$t9,gl_g_ginit
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_ginit
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3c14
    nop
    la	$t9,gl_g_ginit
.L0f0c3c14:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLginit

# Function: __GLgetlsbackup
# Declared: Line 585 (Source lines: 585-585)
# Address: 0x0f0c3c2c - 0x0f0c3cd8 (Size: 172 bytes, Frame: 224)
.globl __GLgetlsbackup
.ent __GLgetlsbackup
__GLgetlsbackup:
    # Line 585
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-2532
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3cc0
    la	$t9,gl_g_getlsbackup
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getlsbackup
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3cc0
    nop
    la	$t9,gl_g_getlsbackup
.L0f0c3cc0:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLgetlsbackup

# Function: __GLclearhitcode
# Declared: Line 586 (Source lines: 586-586)
# Address: 0x0f0c3cd8 - 0x0f0c3d84 (Size: 172 bytes, Frame: 224)
.globl __GLclearhitcode
.ent __GLclearhitcode
__GLclearhitcode:
    # Line 586
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-2704
    daddu	$gp,$gp,$t9
    la	$t9,gl_initializer
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    la	$t2,gl_immediate_mode
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    lw	$t2,0($t2)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    bnez	$t2,.L0f0c3d6c
    la	$t9,gl_g_clearhitcode
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_clearhitcode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3d6c
    nop
    la	$t9,gl_g_clearhitcode
.L0f0c3d6c:
    jalr	$t9
    ld	$gp,0($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    nop
.end __GLclearhitcode

# Function: __GLgetlsrepeat
# Declared: Line 593 (Source lines: 593-593)
# Address: 0x0f0c3d84 - 0x0f0c3e38 (Size: 180 bytes, Frame: 224)
.globl __GLgetlsrepeat
.ent __GLgetlsrepeat
__GLgetlsrepeat:
    # Line 593
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-2876
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3e04
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c3e04:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getlsrepeat
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c3e30
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getlsrepeat
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3e30
    nop
    la	$t9,gl_g_getlsrepeat
.L0f0c3e30:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetlsrepeat

# Function: __GLgreset
# Declared: Line 594 (Source lines: 594-594)
# Address: 0x0f0c3e38 - 0x0f0c3e7c (Size: 68 bytes, Frame: 0)
.globl __GLgreset
.ent __GLgreset
__GLgreset:
    # Line 594
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-3056
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_greset
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c3e74
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_greset
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3e74
    nop
    la	$t9,gl_g_greset
.L0f0c3e74:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgreset

# Function: __GLfbsubtexload
# Declared: Line 595 (Source lines: 595-595)
# Address: 0x0f0c3e7c - 0x0f0c3ec0 (Size: 68 bytes, Frame: 0)
.globl __GLfbsubtexload
.ent __GLfbsubtexload
__GLfbsubtexload:
    # Line 595
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-3124
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_fbsubtexload
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c3eb8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_fbsubtexload
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3eb8
    nop
    la	$t9,gl_g_fbsubtexload
.L0f0c3eb8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLfbsubtexload

# Function: __GLdefbasis
# Declared: Line 596 (Source lines: 596-596)
# Address: 0x0f0c3ec0 - 0x0f0c3f74 (Size: 180 bytes, Frame: 224)
.globl __GLdefbasis
.ent __GLdefbasis
__GLdefbasis:
    # Line 596
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-3192
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3f40
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c3f40:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_defbasis
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c3f6c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_defbasis
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c3f6c
    nop
    la	$t9,gl_g_defbasis
.L0f0c3f6c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdefbasis

# Function: __GLscreenspace
# Declared: Line 597 (Source lines: 597-597)
# Address: 0x0f0c3f74 - 0x0f0c4028 (Size: 180 bytes, Frame: 224)
.globl __GLscreenspace
.ent __GLscreenspace
__GLscreenspace:
    # Line 597
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-3372
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c3ff4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c3ff4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_screenspace
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4020
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_screenspace
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4020
    nop
    la	$t9,gl_g_screenspace
.L0f0c4020:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLscreenspace

# Function: __GLwinclose
# Declared: Line 598 (Source lines: 598-598)
# Address: 0x0f0c4028 - 0x0f0c40dc (Size: 180 bytes, Frame: 224)
.globl __GLwinclose
.ent __GLwinclose
__GLwinclose:
    # Line 598
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-3552
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c40a8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c40a8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winclose
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c40d4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winclose
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c40d4
    nop
    la	$t9,gl_g_winclose
.L0f0c40d4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinclose

# Function: __GLtevdef
# Declared: Line 599 (Source lines: 599-599)
# Address: 0x0f0c40dc - 0x0f0c4120 (Size: 68 bytes, Frame: 0)
.globl __GLtevdef
.ent __GLtevdef
__GLtevdef:
    # Line 599
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-3732
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_tevdef
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4118
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_tevdef
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4118
    nop
    la	$t9,gl_g_tevdef
.L0f0c4118:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLtevdef

# Function: __GLgetdcm
# Declared: Line 600 (Source lines: 600-600)
# Address: 0x0f0c4120 - 0x0f0c41d4 (Size: 180 bytes, Frame: 224)
.globl __GLgetdcm
.ent __GLgetdcm
__GLgetdcm:
    # Line 600
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-3800
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c41a0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c41a0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getdcm
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c41cc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getdcm
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c41cc
    nop
    la	$t9,gl_g_getdcm
.L0f0c41cc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetdcm

# Function: __GLRGBmode
# Declared: Line 601 (Source lines: 601-601)
# Address: 0x0f0c41d4 - 0x0f0c4288 (Size: 180 bytes, Frame: 224)
.globl __GLRGBmode
.ent __GLRGBmode
__GLRGBmode:
    # Line 601
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-3980
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4254
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4254:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_RGBmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4280
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_RGBmode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4280
    nop
    la	$t9,gl_g_RGBmode
.L0f0c4280:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLRGBmode

# Function: __GLsetmap
# Declared: Line 602 (Source lines: 602-602)
# Address: 0x0f0c4288 - 0x0f0c433c (Size: 180 bytes, Frame: 224)
.globl __GLsetmap
.ent __GLsetmap
__GLsetmap:
    # Line 602
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-4160
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4308
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4308:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setmap
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4334
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setmap
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4334
    nop
    la	$t9,gl_g_setmap
.L0f0c4334:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetmap

# Function: __GLgl_pixmode_misc
# Declared: Line 603 (Source lines: 603-603)
# Address: 0x0f0c433c - 0x0f0c4380 (Size: 68 bytes, Frame: 0)
.globl __GLgl_pixmode_misc
.ent __GLgl_pixmode_misc
__GLgl_pixmode_misc:
    # Line 603
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-4340
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_pixmode_misc
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4378
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_pixmode_misc
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4378
    nop
    la	$t9,gl_g_gl_pixmode_misc
.L0f0c4378:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_pixmode_misc

# Function: __GLgRGBcursor
# Declared: Line 604 (Source lines: 604-604)
# Address: 0x0f0c4380 - 0x0f0c43c4 (Size: 68 bytes, Frame: 0)
.globl __GLgRGBcursor
.ent __GLgRGBcursor
__GLgRGBcursor:
    # Line 604
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-4408
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gRGBcursor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c43bc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gRGBcursor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c43bc
    nop
    la	$t9,gl_g_gRGBcursor
.L0f0c43bc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgRGBcursor

# Function: __GLgetmcolor
# Declared: Line 605 (Source lines: 605-605)
# Address: 0x0f0c43c4 - 0x0f0c4478 (Size: 180 bytes, Frame: 224)
.globl __GLgetmcolor
.ent __GLgetmcolor
__GLgetmcolor:
    # Line 605
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-4476
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4444
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4444:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getmcolor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4470
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getmcolor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4470
    nop
    la	$t9,gl_g_getmcolor
.L0f0c4470:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetmcolor

# Function: __GLobjreplace
# Declared: Line 606 (Source lines: 606-606)
# Address: 0x0f0c4478 - 0x0f0c452c (Size: 180 bytes, Frame: 224)
.globl __GLobjreplace
.ent __GLobjreplace
__GLobjreplace:
    # Line 606
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-4656
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c44f8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c44f8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_objreplace
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4524
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_objreplace
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4524
    nop
    la	$t9,gl_g_objreplace
.L0f0c4524:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLobjreplace

# Function: __GLortho
# Declared: Line 607 (Source lines: 607-607)
# Address: 0x0f0c452c - 0x0f0c45e0 (Size: 180 bytes, Frame: 224)
.globl __GLortho
.ent __GLortho
__GLortho:
    # Line 607
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-4836
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c45ac
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c45ac:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_ortho
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c45d8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_ortho
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c45d8
    nop
    la	$t9,gl_g_ortho
.L0f0c45d8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLortho

# Function: __GLsetdepth
# Declared: Line 608 (Source lines: 608-608)
# Address: 0x0f0c45e0 - 0x0f0c4694 (Size: 180 bytes, Frame: 224)
.globl __GLsetdepth
.ent __GLsetdepth
__GLsetdepth:
    # Line 608
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-5016
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4660
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4660:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setdepth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c468c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setdepth
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c468c
    nop
    la	$t9,gl_g_setdepth
.L0f0c468c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetdepth

# Function: __GLgsync
# Declared: Line 609 (Source lines: 609-609)
# Address: 0x0f0c4694 - 0x0f0c4748 (Size: 180 bytes, Frame: 224)
.globl __GLgsync
.ent __GLgsync
__GLgsync:
    # Line 609
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-5196
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4714
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4714:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gsync
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4740
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gsync
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4740
    nop
    la	$t9,gl_g_gsync
.L0f0c4740:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgsync

# Function: __GLstensize
# Declared: Line 610 (Source lines: 610-610)
# Address: 0x0f0c4748 - 0x0f0c47fc (Size: 180 bytes, Frame: 224)
.globl __GLstensize
.ent __GLstensize
__GLstensize:
    # Line 610
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-5376
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c47c8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c47c8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_stensize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c47f4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_stensize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c47f4
    nop
    la	$t9,gl_g_stensize
.L0f0c47f4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLstensize

# Function: __GLrectwrite
# Declared: Line 611 (Source lines: 611-611)
# Address: 0x0f0c47fc - 0x0f0c48b0 (Size: 180 bytes, Frame: 224)
.globl __GLrectwrite
.ent __GLrectwrite
__GLrectwrite:
    # Line 611
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-5556
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c487c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c487c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_rectwrite
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c48a8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_rectwrite
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c48a8
    nop
    la	$t9,gl_g_rectwrite
.L0f0c48a8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrectwrite

# Function: __GLlmdef
# Declared: Line 612 (Source lines: 612-612)
# Address: 0x0f0c48b0 - 0x0f0c48f4 (Size: 68 bytes, Frame: 0)
.globl __GLlmdef
.ent __GLlmdef
__GLlmdef:
    # Line 612
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-5736
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lmdef
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c48ec
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lmdef
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c48ec
    nop
    la	$t9,gl_g_lmdef
.L0f0c48ec:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlmdef

# Function: __GLsetdblights
# Declared: Line 613 (Source lines: 613-613)
# Address: 0x0f0c48f4 - 0x0f0c49a8 (Size: 180 bytes, Frame: 224)
.globl __GLsetdblights
.ent __GLsetdblights
__GLsetdblights:
    # Line 613
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-5804
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4974
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4974:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setdblights
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c49a0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setdblights
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c49a0
    nop
    la	$t9,gl_g_setdblights
.L0f0c49a0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetdblights

# Function: __GLgl_misc
# Declared: Line 614 (Source lines: 614-614)
# Address: 0x0f0c49a8 - 0x0f0c4a5c (Size: 180 bytes, Frame: 224)
.globl __GLgl_misc
.ent __GLgl_misc
__GLgl_misc:
    # Line 614
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-5984
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4a28
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4a28:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_misc
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4a54
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_misc
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4a54
    nop
    la	$t9,gl_g_gl_misc
.L0f0c4a54:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_misc

# Function: __GLtextwritemask
# Declared: Line 615 (Source lines: 615-615)
# Address: 0x0f0c4a5c - 0x0f0c4aa0 (Size: 68 bytes, Frame: 0)
.globl __GLtextwritemask
.ent __GLtextwritemask
__GLtextwritemask:
    # Line 615
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-6164
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_textwritemask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4a98
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_textwritemask
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4a98
    nop
    la	$t9,gl_g_textwritemask
.L0f0c4a98:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLtextwritemask

# Function: __GLgetopenobj
# Declared: Line 616 (Source lines: 616-616)
# Address: 0x0f0c4aa0 - 0x0f0c4b54 (Size: 180 bytes, Frame: 224)
.globl __GLgetopenobj
.ent __GLgetopenobj
__GLgetopenobj:
    # Line 616
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-6232
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4b20
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4b20:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getopenobj
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4b4c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getopenobj
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4b4c
    nop
    la	$t9,gl_g_getopenobj
.L0f0c4b4c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetopenobj

# Function: __GLobjinsert
# Declared: Line 617 (Source lines: 617-617)
# Address: 0x0f0c4b54 - 0x0f0c4c08 (Size: 180 bytes, Frame: 224)
.globl __GLobjinsert
.ent __GLobjinsert
__GLobjinsert:
    # Line 617
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-6412
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4bd4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4bd4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_objinsert
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4c00
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_objinsert
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4c00
    nop
    la	$t9,gl_g_objinsert
.L0f0c4c00:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLobjinsert

# Function: __GLdefcursor
# Declared: Line 618 (Source lines: 618-618)
# Address: 0x0f0c4c08 - 0x0f0c4cbc (Size: 180 bytes, Frame: 224)
.globl __GLdefcursor
.ent __GLdefcursor
__GLdefcursor:
    # Line 618
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-6592
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4c88
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4c88:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_defcursor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4cb4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_defcursor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4cb4
    nop
    la	$t9,gl_g_defcursor
.L0f0c4cb4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdefcursor

# Function: __GLmapw
# Declared: Line 619 (Source lines: 619-619)
# Address: 0x0f0c4cbc - 0x0f0c4d70 (Size: 180 bytes, Frame: 224)
.globl __GLmapw
.ent __GLmapw
__GLmapw:
    # Line 619
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-6772
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4d3c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4d3c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_mapw
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4d68
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_mapw
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4d68
    nop
    la	$t9,gl_g_mapw
.L0f0c4d68:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLmapw

# Function: __GLlsetdepth
# Declared: Line 620 (Source lines: 620-620)
# Address: 0x0f0c4d70 - 0x0f0c4e24 (Size: 180 bytes, Frame: 224)
.globl __GLlsetdepth
.ent __GLlsetdepth
__GLlsetdepth:
    # Line 620
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-6952
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4df0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4df0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lsetdepth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4e1c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lsetdepth
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4e1c
    nop
    la	$t9,gl_g_lsetdepth
.L0f0c4e1c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlsetdepth

# Function: __GLgflush
# Declared: Line 621 (Source lines: 621-621)
# Address: 0x0f0c4e24 - 0x0f0c4ed8 (Size: 180 bytes, Frame: 224)
.globl __GLgflush
.ent __GLgflush
__GLgflush:
    # Line 621
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-7132
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4ea4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4ea4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gflush
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4ed0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gflush
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4ed0
    nop
    la	$t9,gl_g_gflush
.L0f0c4ed0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgflush

# Function: __GLpixelmap
# Declared: Line 622 (Source lines: 622-622)
# Address: 0x0f0c4ed8 - 0x0f0c4f1c (Size: 68 bytes, Frame: 0)
.globl __GLpixelmap
.ent __GLpixelmap
__GLpixelmap:
    # Line 622
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-7312
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_pixelmap
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4f14
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pixelmap
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4f14
    nop
    la	$t9,gl_g_pixelmap
.L0f0c4f14:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpixelmap

# Function: __GLonemap
# Declared: Line 623 (Source lines: 623-623)
# Address: 0x0f0c4f1c - 0x0f0c4fd0 (Size: 180 bytes, Frame: 224)
.globl __GLonemap
.ent __GLonemap
__GLonemap:
    # Line 623
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-7380
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c4f9c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c4f9c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_onemap
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c4fc8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_onemap
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c4fc8
    nop
    la	$t9,gl_g_onemap
.L0f0c4fc8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLonemap

# Function: __GLcrvn
# Declared: Line 624 (Source lines: 624-624)
# Address: 0x0f0c4fd0 - 0x0f0c5084 (Size: 180 bytes, Frame: 224)
.globl __GLcrvn
.ent __GLcrvn
__GLcrvn:
    # Line 624
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-7560
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5050
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5050:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_crvn
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c507c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_crvn
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c507c
    nop
    la	$t9,gl_g_crvn
.L0f0c507c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcrvn

# Function: __GLtie
# Declared: Line 625 (Source lines: 625-625)
# Address: 0x0f0c5084 - 0x0f0c5138 (Size: 180 bytes, Frame: 224)
.globl __GLtie
.ent __GLtie
__GLtie:
    # Line 625
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-7740
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5104
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5104:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_tie
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5130
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_tie
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5130
    nop
    la	$t9,gl_g_tie
.L0f0c5130:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLtie

# Function: __GLzbsize
# Declared: Line 626 (Source lines: 626-626)
# Address: 0x0f0c5138 - 0x0f0c517c (Size: 68 bytes, Frame: 0)
.globl __GLzbsize
.ent __GLzbsize
__GLzbsize:
    # Line 626
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-7920
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_zbsize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5174
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_zbsize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5174
    nop
    la	$t9,gl_g_zbsize
.L0f0c5174:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLzbsize

# Function: __GLcompactify
# Declared: Line 627 (Source lines: 627-627)
# Address: 0x0f0c517c - 0x0f0c5230 (Size: 180 bytes, Frame: 224)
.globl __GLcompactify
.ent __GLcompactify
__GLcompactify:
    # Line 627
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-7988
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c51fc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c51fc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_compactify
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5228
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_compactify
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5228
    nop
    la	$t9,gl_g_compactify
.L0f0c5228:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcompactify

# Function: __GLgl_setdisplay
# Declared: Line 628 (Source lines: 628-628)
# Address: 0x0f0c5230 - 0x0f0c5274 (Size: 68 bytes, Frame: 0)
.globl __GLgl_setdisplay
.ent __GLgl_setdisplay
__GLgl_setdisplay:
    # Line 628
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-8168
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_setdisplay
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c526c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_setdisplay
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c526c
    nop
    la	$t9,gl_g_gl_setdisplay
.L0f0c526c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_setdisplay

# Function: __GLgetmmode
# Declared: Line 629 (Source lines: 629-629)
# Address: 0x0f0c5274 - 0x0f0c5328 (Size: 180 bytes, Frame: 224)
.globl __GLgetmmode
.ent __GLgetmmode
__GLgetmmode:
    # Line 629
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-8236
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c52f4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c52f4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getmmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5320
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getmmode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5320
    nop
    la	$t9,gl_g_getmmode
.L0f0c5320:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetmmode

# Function: __GLcircfi
# Declared: Line 630 (Source lines: 630-630)
# Address: 0x0f0c5328 - 0x0f0c53dc (Size: 180 bytes, Frame: 224)
.globl __GLcircfi
.ent __GLcircfi
__GLcircfi:
    # Line 630
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-8416
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c53a8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c53a8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_circfi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c53d4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_circfi
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c53d4
    nop
    la	$t9,gl_g_circfi
.L0f0c53d4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcircfi

# Function: __GLfullscrn
# Declared: Line 631 (Source lines: 631-631)
# Address: 0x0f0c53dc - 0x0f0c5490 (Size: 180 bytes, Frame: 224)
.globl __GLfullscrn
.ent __GLfullscrn
__GLfullscrn:
    # Line 631
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-8596
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c545c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c545c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_fullscrn
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5488
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_fullscrn
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5488
    nop
    la	$t9,gl_g_fullscrn
.L0f0c5488:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLfullscrn

# Function: __GLmultimap
# Declared: Line 632 (Source lines: 632-632)
# Address: 0x0f0c5490 - 0x0f0c5544 (Size: 180 bytes, Frame: 224)
.globl __GLmultimap
.ent __GLmultimap
__GLmultimap:
    # Line 632
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-8776
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5510
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5510:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_multimap
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c553c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_multimap
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c553c
    nop
    la	$t9,gl_g_multimap
.L0f0c553c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLmultimap

# Function: __GLlshaderange
# Declared: Line 633 (Source lines: 633-633)
# Address: 0x0f0c5544 - 0x0f0c55f8 (Size: 180 bytes, Frame: 224)
.globl __GLlshaderange
.ent __GLlshaderange
__GLlshaderange:
    # Line 633
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-8956
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c55c4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c55c4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lshaderange
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c55f0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lshaderange
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c55f0
    nop
    la	$t9,gl_g_lshaderange
.L0f0c55f0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlshaderange

# Function: __GLperspective
# Declared: Line 634 (Source lines: 634-634)
# Address: 0x0f0c55f8 - 0x0f0c56ac (Size: 180 bytes, Frame: 224)
.globl __GLperspective
.ent __GLperspective
__GLperspective:
    # Line 634
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-9136
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5678
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5678:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_perspective
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c56a4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_perspective
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c56a4
    nop
    la	$t9,gl_g_perspective
.L0f0c56a4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLperspective

# Function: __GLwriteRGB
# Declared: Line 635 (Source lines: 635-635)
# Address: 0x0f0c56ac - 0x0f0c56f0 (Size: 68 bytes, Frame: 0)
.globl __GLwriteRGB
.ent __GLwriteRGB
__GLwriteRGB:
    # Line 635
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-9316
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_writeRGB
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c56e8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_writeRGB
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c56e8
    nop
    la	$t9,gl_g_writeRGB
.L0f0c56e8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwriteRGB

# Function: __GLendselect
# Declared: Line 636 (Source lines: 636-636)
# Address: 0x0f0c56f0 - 0x0f0c57a4 (Size: 180 bytes, Frame: 224)
.globl __GLendselect
.ent __GLendselect
__GLendselect:
    # Line 636
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-9384
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5770
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5770:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_endselect
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c579c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_endselect
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c579c
    nop
    la	$t9,gl_g_endselect
.L0f0c579c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendselect

# Function: __GLgl_sincos
# Declared: Line 637 (Source lines: 637-637)
# Address: 0x0f0c57a4 - 0x0f0c5858 (Size: 180 bytes, Frame: 224)
.globl __GLgl_sincos
.ent __GLgl_sincos
__GLgl_sincos:
    # Line 637
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-9564
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5824
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5824:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_sincos
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5850
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_sincos
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5850
    nop
    la	$t9,gl_g_gl_sincos
.L0f0c5850:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_sincos

# Function: __GLwinconstraints
# Declared: Line 638 (Source lines: 638-638)
# Address: 0x0f0c5858 - 0x0f0c590c (Size: 180 bytes, Frame: 224)
.globl __GLwinconstraints
.ent __GLwinconstraints
__GLwinconstraints:
    # Line 638
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-9744
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c58d8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c58d8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winconstraints
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5904
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winconstraints
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5904
    nop
    la	$t9,gl_g_winconstraints
.L0f0c5904:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinconstraints

# Function: __GLpicksize
# Declared: Line 639 (Source lines: 639-639)
# Address: 0x0f0c590c - 0x0f0c59c0 (Size: 180 bytes, Frame: 224)
.globl __GLpicksize
.ent __GLpicksize
__GLpicksize:
    # Line 639
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-9924
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c598c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c598c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_picksize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c59b8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_picksize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c59b8
    nop
    la	$t9,gl_g_picksize
.L0f0c59b8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpicksize

# Function: __GLreshapeviewport
# Declared: Line 640 (Source lines: 640-640)
# Address: 0x0f0c59c0 - 0x0f0c5a74 (Size: 180 bytes, Frame: 224)
.globl __GLreshapeviewport
.ent __GLreshapeviewport
__GLreshapeviewport:
    # Line 640
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-10104
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5a40
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5a40:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_reshapeviewport
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5a6c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_reshapeviewport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5a6c
    nop
    la	$t9,gl_g_reshapeviewport
.L0f0c5a6c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLreshapeviewport

# Function: __GLcircfs
# Declared: Line 641 (Source lines: 641-641)
# Address: 0x0f0c5a74 - 0x0f0c5b28 (Size: 180 bytes, Frame: 224)
.globl __GLcircfs
.ent __GLcircfs
__GLcircfs:
    # Line 641
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-10284
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5af4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5af4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_circfs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5b20
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_circfs
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5b20
    nop
    la	$t9,gl_g_circfs
.L0f0c5b20:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcircfs

# Function: __GLgexit
# Declared: Line 642 (Source lines: 642-642)
# Address: 0x0f0c5b28 - 0x0f0c5bdc (Size: 180 bytes, Frame: 224)
.globl __GLgexit
.ent __GLgexit
__GLgexit:
    # Line 642
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-10464
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5ba8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5ba8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gexit
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5bd4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gexit
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5bd4
    nop
    la	$t9,gl_g_gexit
.L0f0c5bd4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgexit

# Function: __GLtlutdef
# Declared: Line 643 (Source lines: 643-643)
# Address: 0x0f0c5bdc - 0x0f0c5c20 (Size: 68 bytes, Frame: 0)
.globl __GLtlutdef
.ent __GLtlutdef
__GLtlutdef:
    # Line 643
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-10644
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_tlutdef
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5c18
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_tlutdef
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5c18
    nop
    la	$t9,gl_g_tlutdef
.L0f0c5c18:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLtlutdef

# Function: __GLwinset
# Declared: Line 644 (Source lines: 644-644)
# Address: 0x0f0c5c20 - 0x0f0c5cd4 (Size: 180 bytes, Frame: 224)
.globl __GLwinset
.ent __GLwinset
__GLwinset:
    # Line 644
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-10712
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5ca0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5ca0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winset
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5ccc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winset
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5ccc
    nop
    la	$t9,gl_g_winset
.L0f0c5ccc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinset

# Function: __GLrectzoom
# Declared: Line 645 (Source lines: 645-645)
# Address: 0x0f0c5cd4 - 0x0f0c5d88 (Size: 180 bytes, Frame: 224)
.globl __GLrectzoom
.ent __GLrectzoom
__GLrectzoom:
    # Line 645
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-10892
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5d54
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5d54:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_rectzoom
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5d80
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_rectzoom
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5d80
    nop
    la	$t9,gl_g_rectzoom
.L0f0c5d80:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrectzoom

# Function: __GLcirc
# Declared: Line 646 (Source lines: 646-646)
# Address: 0x0f0c5d88 - 0x0f0c5e3c (Size: 180 bytes, Frame: 224)
.globl __GLcirc
.ent __GLcirc
__GLcirc:
    # Line 646
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-11072
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5e08
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5e08:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_circ
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5e34
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_circ
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5e34
    nop
    la	$t9,gl_g_circ
.L0f0c5e34:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcirc

# Function: __GLcloseobj
# Declared: Line 647 (Source lines: 647-647)
# Address: 0x0f0c5e3c - 0x0f0c5ef0 (Size: 180 bytes, Frame: 224)
.globl __GLcloseobj
.ent __GLcloseobj
__GLcloseobj:
    # Line 647
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-11252
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5ebc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5ebc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_closeobj
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5ee8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_closeobj
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5ee8
    nop
    la	$t9,gl_g_closeobj
.L0f0c5ee8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcloseobj

# Function: __GLstereobuffer
# Declared: Line 648 (Source lines: 648-648)
# Address: 0x0f0c5ef0 - 0x0f0c5f34 (Size: 68 bytes, Frame: 0)
.globl __GLstereobuffer
.ent __GLstereobuffer
__GLstereobuffer:
    # Line 648
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-11432
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_stereobuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5f2c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_stereobuffer
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5f2c
    nop
    la	$t9,gl_g_stereobuffer
.L0f0c5f2c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLstereobuffer

# Function: __GLminmax
# Declared: Line 649 (Source lines: 649-649)
# Address: 0x0f0c5f34 - 0x0f0c5f78 (Size: 68 bytes, Frame: 0)
.globl __GLminmax
.ent __GLminmax
__GLminmax:
    # Line 649
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-11500
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_minmax
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c5f70
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_minmax
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c5f70
    nop
    la	$t9,gl_g_minmax
.L0f0c5f70:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLminmax

# Function: __GLarc
# Declared: Line 650 (Source lines: 650-650)
# Address: 0x0f0c5f78 - 0x0f0c602c (Size: 180 bytes, Frame: 224)
.globl __GLarc
.ent __GLarc
__GLarc:
    # Line 650
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-11568
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c5ff8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c5ff8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_arc
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6024
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_arc
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6024
    nop
    la	$t9,gl_g_arc
.L0f0c6024:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLarc

# Function: __GLarcf
# Declared: Line 651 (Source lines: 651-651)
# Address: 0x0f0c602c - 0x0f0c60e0 (Size: 180 bytes, Frame: 224)
.globl __GLarcf
.ent __GLarcf
__GLarcf:
    # Line 651
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-11748
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c60ac
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c60ac:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_arcf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c60d8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_arcf
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c60d8
    nop
    la	$t9,gl_g_arcf
.L0f0c60d8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLarcf

# Function: __GLgetdrawmode
# Declared: Line 652 (Source lines: 652-652)
# Address: 0x0f0c60e0 - 0x0f0c6194 (Size: 180 bytes, Frame: 224)
.globl __GLgetdrawmode
.ent __GLgetdrawmode
__GLgetdrawmode:
    # Line 652
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-11928
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6160
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6160:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getdrawmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c618c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getdrawmode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c618c
    nop
    la	$t9,gl_g_getdrawmode
.L0f0c618c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetdrawmode

# Function: __GLwinmove
# Declared: Line 653 (Source lines: 653-653)
# Address: 0x0f0c6194 - 0x0f0c6248 (Size: 180 bytes, Frame: 224)
.globl __GLwinmove
.ent __GLwinmove
__GLwinmove:
    # Line 653
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-12108
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6214
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6214:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winmove
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6240
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winmove
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6240
    nop
    la	$t9,gl_g_winmove
.L0f0c6240:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinmove

# Function: __GLarci
# Declared: Line 654 (Source lines: 654-654)
# Address: 0x0f0c6248 - 0x0f0c62fc (Size: 180 bytes, Frame: 224)
.globl __GLarci
.ent __GLarci
__GLarci:
    # Line 654
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-12288
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c62c8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c62c8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_arci
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c62f4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_arci
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c62f4
    nop
    la	$t9,gl_g_arci
.L0f0c62f4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLarci

# Function: __GListag
# Declared: Line 655 (Source lines: 655-655)
# Address: 0x0f0c62fc - 0x0f0c63b0 (Size: 180 bytes, Frame: 224)
.globl __GListag
.ent __GListag
__GListag:
    # Line 655
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-12468
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c637c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c637c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_istag
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c63a8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_istag
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c63a8
    nop
    la	$t9,gl_g_istag
.L0f0c63a8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GListag

# Function: __GLdoublebuffer
# Declared: Line 656 (Source lines: 656-656)
# Address: 0x0f0c63b0 - 0x0f0c6464 (Size: 180 bytes, Frame: 224)
.globl __GLdoublebuffer
.ent __GLdoublebuffer
__GLdoublebuffer:
    # Line 656
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-12648
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6430
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6430:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_doublebuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c645c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_doublebuffer
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c645c
    nop
    la	$t9,gl_g_doublebuffer
.L0f0c645c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdoublebuffer

# Function: __GLgetcmmode
# Declared: Line 657 (Source lines: 657-657)
# Address: 0x0f0c6464 - 0x0f0c6518 (Size: 180 bytes, Frame: 224)
.globl __GLgetcmmode
.ent __GLgetcmmode
__GLgetcmmode:
    # Line 657
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-12828
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c64e4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c64e4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getcmmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6510
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getcmmode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6510
    nop
    la	$t9,gl_g_getcmmode
.L0f0c6510:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetcmmode

# Function: __GLgetmonitor
# Declared: Line 658 (Source lines: 658-658)
# Address: 0x0f0c6518 - 0x0f0c65cc (Size: 180 bytes, Frame: 224)
.globl __GLgetmonitor
.ent __GLgetmonitor
__GLgetmonitor:
    # Line 658
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-13008
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6598
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6598:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getmonitor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c65c4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getmonitor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c65c4
    nop
    la	$t9,gl_g_getmonitor
.L0f0c65c4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetmonitor

# Function: __GLnoborder
# Declared: Line 659 (Source lines: 659-659)
# Address: 0x0f0c65cc - 0x0f0c6680 (Size: 180 bytes, Frame: 224)
.globl __GLnoborder
.ent __GLnoborder
__GLnoborder:
    # Line 659
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-13188
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c664c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c664c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_noborder
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6678
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_noborder
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6678
    nop
    la	$t9,gl_g_noborder
.L0f0c6678:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLnoborder

# Function: __GLfeedback
# Declared: Line 660 (Source lines: 660-660)
# Address: 0x0f0c6680 - 0x0f0c6734 (Size: 180 bytes, Frame: 224)
.globl __GLfeedback
.ent __GLfeedback
__GLfeedback:
    # Line 660
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-13368
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6700
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6700:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_feedback
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c672c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_feedback
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c672c
    nop
    la	$t9,gl_g_feedback
.L0f0c672c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLfeedback

# Function: __GLscrmask
# Declared: Line 661 (Source lines: 661-661)
# Address: 0x0f0c6734 - 0x0f0c67e8 (Size: 180 bytes, Frame: 224)
.globl __GLscrmask
.ent __GLscrmask
__GLscrmask:
    # Line 661
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-13548
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c67b4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c67b4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_scrmask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c67e0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_scrmask
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c67e0
    nop
    la	$t9,gl_g_scrmask
.L0f0c67e0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLscrmask

# Function: __GLglcompat
# Declared: Line 662 (Source lines: 662-662)
# Address: 0x0f0c67e8 - 0x0f0c689c (Size: 180 bytes, Frame: 224)
.globl __GLglcompat
.ent __GLglcompat
__GLglcompat:
    # Line 662
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-13728
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6868
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6868:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_glcompat
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6894
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_glcompat
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6894
    nop
    la	$t9,gl_g_glcompat
.L0f0c6894:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLglcompat

# Function: __GLpopviewport
# Declared: Line 663 (Source lines: 663-663)
# Address: 0x0f0c689c - 0x0f0c6950 (Size: 180 bytes, Frame: 224)
.globl __GLpopviewport
.ent __GLpopviewport
__GLpopviewport:
    # Line 663
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-13908
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c691c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c691c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_popviewport
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6948
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_popviewport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6948
    nop
    la	$t9,gl_g_popviewport
.L0f0c6948:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpopviewport

# Function: __GLpopattributes
# Declared: Line 664 (Source lines: 664-664)
# Address: 0x0f0c6950 - 0x0f0c6a04 (Size: 180 bytes, Frame: 224)
.globl __GLpopattributes
.ent __GLpopattributes
__GLpopattributes:
    # Line 664
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-14088
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c69d0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c69d0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_popattributes
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c69fc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_popattributes
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c69fc
    nop
    la	$t9,gl_g_popattributes
.L0f0c69fc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpopattributes

# Function: __GLarcs
# Declared: Line 665 (Source lines: 665-665)
# Address: 0x0f0c6a04 - 0x0f0c6ab8 (Size: 180 bytes, Frame: 224)
.globl __GLarcs
.ent __GLarcs
__GLarcs:
    # Line 665
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-14268
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6a84
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6a84:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_arcs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6ab0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_arcs
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6ab0
    nop
    la	$t9,gl_g_arcs
.L0f0c6ab0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLarcs

# Function: __GLgl_glx_getconfig
# Declared: Line 666 (Source lines: 666-666)
# Address: 0x0f0c6ab8 - 0x0f0c6afc (Size: 68 bytes, Frame: 0)
.globl __GLgl_glx_getconfig
.ent __GLgl_glx_getconfig
__GLgl_glx_getconfig:
    # Line 666
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-14448
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_glx_getconfig
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6af4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_glx_getconfig
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6af4
    nop
    la	$t9,gl_g_gl_glx_getconfig
.L0f0c6af4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_glx_getconfig

# Function: __GLendsurface
# Declared: Line 667 (Source lines: 667-667)
# Address: 0x0f0c6afc - 0x0f0c6b40 (Size: 68 bytes, Frame: 0)
.globl __GLendsurface
.ent __GLendsurface
__GLendsurface:
    # Line 667
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-14516
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_endsurface
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6b38
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_endsurface
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6b38
    nop
    la	$t9,gl_g_endsurface
.L0f0c6b38:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendsurface

# Function: __GLrectread
# Declared: Line 668 (Source lines: 668-668)
# Address: 0x0f0c6b40 - 0x0f0c6bf4 (Size: 180 bytes, Frame: 224)
.globl __GLrectread
.ent __GLrectread
__GLrectread:
    # Line 668
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-14584
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6bc0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6bc0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_rectread
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6bec
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_rectread
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6bec
    nop
    la	$t9,gl_g_rectread
.L0f0c6bec:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrectread

# Function: __GLgetzbuffer
# Declared: Line 669 (Source lines: 669-669)
# Address: 0x0f0c6bf4 - 0x0f0c6ca8 (Size: 180 bytes, Frame: 224)
.globl __GLgetzbuffer
.ent __GLgetzbuffer
__GLgetzbuffer:
    # Line 669
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-14764
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6c74
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6c74:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getzbuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6ca0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getzbuffer
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6ca0
    nop
    la	$t9,gl_g_getzbuffer
.L0f0c6ca0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetzbuffer

# Function: __GLwinpop
# Declared: Line 670 (Source lines: 670-670)
# Address: 0x0f0c6ca8 - 0x0f0c6d5c (Size: 180 bytes, Frame: 224)
.globl __GLwinpop
.ent __GLwinpop
__GLwinpop:
    # Line 670
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-14944
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6d28
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6d28:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winpop
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6d54
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winpop
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6d54
    nop
    la	$t9,gl_g_winpop
.L0f0c6d54:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinpop

# Function: __GLRGBsize
# Declared: Line 671 (Source lines: 671-671)
# Address: 0x0f0c6d5c - 0x0f0c6da0 (Size: 68 bytes, Frame: 0)
.globl __GLRGBsize
.ent __GLRGBsize
__GLRGBsize:
    # Line 671
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-15124
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_RGBsize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6d98
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_RGBsize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6d98
    nop
    la	$t9,gl_g_RGBsize
.L0f0c6d98:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLRGBsize

# Function: __GLcmode
# Declared: Line 672 (Source lines: 672-672)
# Address: 0x0f0c6da0 - 0x0f0c6e54 (Size: 180 bytes, Frame: 224)
.globl __GLcmode
.ent __GLcmode
__GLcmode:
    # Line 672
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-15192
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6e20
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6e20:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_cmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6e4c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_cmode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6e4c
    nop
    la	$t9,gl_g_cmode
.L0f0c6e4c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcmode

# Function: __GLcurorigin
# Declared: Line 673 (Source lines: 673-673)
# Address: 0x0f0c6e54 - 0x0f0c6f08 (Size: 180 bytes, Frame: 224)
.globl __GLcurorigin
.ent __GLcurorigin
__GLcurorigin:
    # Line 673
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-15372
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6ed4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6ed4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_curorigin
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6f00
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_curorigin
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6f00
    nop
    la	$t9,gl_g_curorigin
.L0f0c6f00:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcurorigin

# Function: __GLdopup
# Declared: Line 674 (Source lines: 674-674)
# Address: 0x0f0c6f08 - 0x0f0c6fbc (Size: 180 bytes, Frame: 224)
.globl __GLdopup
.ent __GLdopup
__GLdopup:
    # Line 674
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-15552
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c6f88
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c6f88:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_dopup
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c6fb4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_dopup
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c6fb4
    nop
    la	$t9,gl_g_dopup
.L0f0c6fb4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdopup

# Function: __GLpick
# Declared: Line 675 (Source lines: 675-675)
# Address: 0x0f0c6fbc - 0x0f0c7070 (Size: 180 bytes, Frame: 224)
.globl __GLpick
.ent __GLpick
__GLpick:
    # Line 675
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-15732
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c703c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c703c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_pick
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7068
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pick
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7068
    nop
    la	$t9,gl_g_pick
.L0f0c7068:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpick

# Function: __GLgetgpos
# Declared: Line 676 (Source lines: 676-676)
# Address: 0x0f0c7070 - 0x0f0c7124 (Size: 180 bytes, Frame: 224)
.globl __GLgetgpos
.ent __GLgetgpos
__GLgetgpos:
    # Line 676
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-15912
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c70f0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c70f0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getgpos
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c711c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getgpos
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c711c
    nop
    la	$t9,gl_g_getgpos
.L0f0c711c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetgpos

# Function: __GLreadpixels
# Declared: Line 677 (Source lines: 677-677)
# Address: 0x0f0c7124 - 0x0f0c71d8 (Size: 180 bytes, Frame: 224)
.globl __GLreadpixels
.ent __GLreadpixels
__GLreadpixels:
    # Line 677
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-16092
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c71a4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c71a4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_readpixels
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c71d0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_readpixels
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c71d0
    nop
    la	$t9,gl_g_readpixels
.L0f0c71d0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLreadpixels

# Function: __GLaddtop
# Declared: Line 678 (Source lines: 678-678)
# Address: 0x0f0c71d8 - 0x0f0c728c (Size: 180 bytes, Frame: 224)
.globl __GLaddtop
.ent __GLaddtop
__GLaddtop:
    # Line 678
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-16272
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7258
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7258:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_addtop
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7284
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_addtop
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7284
    nop
    la	$t9,gl_g_addtop
.L0f0c7284:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLaddtop

# Function: __GLwintitle
# Declared: Line 679 (Source lines: 679-679)
# Address: 0x0f0c728c - 0x0f0c7340 (Size: 180 bytes, Frame: 224)
.globl __GLwintitle
.ent __GLwintitle
__GLwintitle:
    # Line 679
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-16452
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c730c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c730c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_wintitle
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7338
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_wintitle
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7338
    nop
    la	$t9,gl_g_wintitle
.L0f0c7338:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwintitle

# Function: __GLgetcolor
# Declared: Line 680 (Source lines: 680-680)
# Address: 0x0f0c7340 - 0x0f0c73f4 (Size: 180 bytes, Frame: 224)
.globl __GLgetcolor
.ent __GLgetcolor
__GLgetcolor:
    # Line 680
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-16632
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c73c0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c73c0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getcolor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c73ec
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getcolor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c73ec
    nop
    la	$t9,gl_g_getcolor
.L0f0c73ec:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetcolor

# Function: __GLgetdepth
# Declared: Line 681 (Source lines: 681-681)
# Address: 0x0f0c73f4 - 0x0f0c74a8 (Size: 180 bytes, Frame: 224)
.globl __GLgetdepth
.ent __GLgetdepth
__GLgetdepth:
    # Line 681
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-16812
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7474
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7474:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getdepth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c74a0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getdepth
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c74a0
    nop
    la	$t9,gl_g_getdepth
.L0f0c74a0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetdepth

# Function: __GLdeflfont
# Declared: Line 682 (Source lines: 682-682)
# Address: 0x0f0c74a8 - 0x0f0c755c (Size: 180 bytes, Frame: 224)
.globl __GLdeflfont
.ent __GLdeflfont
__GLdeflfont:
    # Line 682
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-16992
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7528
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7528:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_deflfont
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7554
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_deflfont
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7554
    nop
    la	$t9,gl_g_deflfont
.L0f0c7554:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdeflfont

# Function: __GLviewport
# Declared: Line 683 (Source lines: 683-683)
# Address: 0x0f0c755c - 0x0f0c7610 (Size: 180 bytes, Frame: 224)
.globl __GLviewport
.ent __GLviewport
__GLviewport:
    # Line 683
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-17172
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c75dc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c75dc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_viewport
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7608
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_viewport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7608
    nop
    la	$t9,gl_g_viewport
.L0f0c7608:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLviewport

# Function: __GLgetdev
# Declared: Line 684 (Source lines: 684-684)
# Address: 0x0f0c7610 - 0x0f0c76c4 (Size: 180 bytes, Frame: 224)
.globl __GLgetdev
.ent __GLgetdev
__GLgetdev:
    # Line 684
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-17352
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7690
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7690:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getdev
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c76bc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getdev
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c76bc
    nop
    la	$t9,gl_g_getdev
.L0f0c76bc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetdev

# Function: __GLgetminmax
# Declared: Line 685 (Source lines: 685-685)
# Address: 0x0f0c76c4 - 0x0f0c7708 (Size: 68 bytes, Frame: 0)
.globl __GLgetminmax
.ent __GLgetminmax
__GLgetminmax:
    # Line 685
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-17532
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getminmax
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7700
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getminmax
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7700
    nop
    la	$t9,gl_g_getminmax
.L0f0c7700:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetminmax

# Function: __GLgethgram
# Declared: Line 686 (Source lines: 686-686)
# Address: 0x0f0c7708 - 0x0f0c774c (Size: 68 bytes, Frame: 0)
.globl __GLgethgram
.ent __GLgethgram
__GLgethgram:
    # Line 686
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-17600
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gethgram
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7744
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gethgram
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7744
    nop
    la	$t9,gl_g_gethgram
.L0f0c7744:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgethgram

# Function: __GLreadsource
# Declared: Line 687 (Source lines: 687-687)
# Address: 0x0f0c774c - 0x0f0c7800 (Size: 180 bytes, Frame: 224)
.globl __GLreadsource
.ent __GLreadsource
__GLreadsource:
    # Line 687
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-17668
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c77cc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c77cc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_readsource
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c77f8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_readsource
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c77f8
    nop
    la	$t9,gl_g_readsource
.L0f0c77f8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLreadsource

# Function: __GLnoise
# Declared: Line 688 (Source lines: 688-688)
# Address: 0x0f0c7800 - 0x0f0c78b4 (Size: 180 bytes, Frame: 224)
.globl __GLnoise
.ent __GLnoise
__GLnoise:
    # Line 688
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-17848
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7880
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7880:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_noise
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c78ac
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_noise
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c78ac
    nop
    la	$t9,gl_g_noise
.L0f0c78ac:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLnoise

# Function: __GLgl_resetls
# Declared: Line 689 (Source lines: 689-689)
# Address: 0x0f0c78b4 - 0x0f0c7968 (Size: 180 bytes, Frame: 224)
.globl __GLgl_resetls
.ent __GLgl_resetls
__GLgl_resetls:
    # Line 689
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-18028
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7934
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7934:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_resetls
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7960
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_resetls
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7960
    nop
    la	$t9,gl_g_gl_resetls
.L0f0c7960:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_resetls

# Function: __GLgl_readscreen
# Declared: Line 690 (Source lines: 690-690)
# Address: 0x0f0c7968 - 0x0f0c7a1c (Size: 180 bytes, Frame: 224)
.globl __GLgl_readscreen
.ent __GLgl_readscreen
__GLgl_readscreen:
    # Line 690
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-18208
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c79e8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c79e8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_readscreen
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7a14
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_readscreen
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7a14
    nop
    la	$t9,gl_g_gl_readscreen
.L0f0c7a14:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_readscreen

# Function: __GLisobj
# Declared: Line 691 (Source lines: 691-691)
# Address: 0x0f0c7a1c - 0x0f0c7ad0 (Size: 180 bytes, Frame: 224)
.globl __GLisobj
.ent __GLisobj
__GLisobj:
    # Line 691
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-18388
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7a9c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7a9c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_isobj
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7ac8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_isobj
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7ac8
    nop
    la	$t9,gl_g_isobj
.L0f0c7ac8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLisobj

# Function: __GLgetscrbox
# Declared: Line 692 (Source lines: 692-692)
# Address: 0x0f0c7ad0 - 0x0f0c7b84 (Size: 180 bytes, Frame: 224)
.globl __GLgetscrbox
.ent __GLgetscrbox
__GLgetscrbox:
    # Line 692
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-18568
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7b50
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7b50:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getscrbox
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7b7c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getscrbox
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7b7c
    nop
    la	$t9,gl_g_getscrbox
.L0f0c7b7c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetscrbox

# Function: __GLmapw2
# Declared: Line 693 (Source lines: 693-693)
# Address: 0x0f0c7b84 - 0x0f0c7c38 (Size: 180 bytes, Frame: 224)
.globl __GLmapw2
.ent __GLmapw2
__GLmapw2:
    # Line 693
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-18748
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7c04
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7c04:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_mapw2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7c30
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_mapw2
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7c30
    nop
    la	$t9,gl_g_mapw2
.L0f0c7c30:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLmapw2

# Function: __GLreadRGB
# Declared: Line 694 (Source lines: 694-694)
# Address: 0x0f0c7c38 - 0x0f0c7cec (Size: 180 bytes, Frame: 224)
.globl __GLreadRGB
.ent __GLreadRGB
__GLreadRGB:
    # Line 694
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-18928
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7cb8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7cb8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_readRGB
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7ce4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_readRGB
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7ce4
    nop
    la	$t9,gl_g_readRGB
.L0f0c7ce4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLreadRGB

# Function: __GLshaderange
# Declared: Line 695 (Source lines: 695-695)
# Address: 0x0f0c7cec - 0x0f0c7da0 (Size: 180 bytes, Frame: 224)
.globl __GLshaderange
.ent __GLshaderange
__GLshaderange:
    # Line 695
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-19108
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7d6c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7d6c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_shaderange
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7d98
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_shaderange
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7d98
    nop
    la	$t9,gl_g_shaderange
.L0f0c7d98:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLshaderange

# Function: __GLgammaramp
# Declared: Line 696 (Source lines: 696-696)
# Address: 0x0f0c7da0 - 0x0f0c7e54 (Size: 180 bytes, Frame: 224)
.globl __GLgammaramp
.ent __GLgammaramp
__GLgammaramp:
    # Line 696
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-19288
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7e20
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7e20:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gammaramp
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7e4c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gammaramp
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7e4c
    nop
    la	$t9,gl_g_gammaramp
.L0f0c7e4c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgammaramp

# Function: __GLstrwid
# Declared: Line 697 (Source lines: 697-697)
# Address: 0x0f0c7e54 - 0x0f0c7f08 (Size: 180 bytes, Frame: 224)
.globl __GLstrwid
.ent __GLstrwid
__GLstrwid:
    # Line 697
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-19468
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7ed4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7ed4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_strwid
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7f00
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_strwid
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7f00
    nop
    la	$t9,gl_g_strwid
.L0f0c7f00:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLstrwid

# Function: __GLobjdelete
# Declared: Line 698 (Source lines: 698-698)
# Address: 0x0f0c7f08 - 0x0f0c7fbc (Size: 180 bytes, Frame: 224)
.globl __GLobjdelete
.ent __GLobjdelete
__GLobjdelete:
    # Line 698
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-19648
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c7f88
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c7f88:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_objdelete
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c7fb4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_objdelete
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c7fb4
    nop
    la	$t9,gl_g_objdelete
.L0f0c7fb4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLobjdelete

# Function: __GLgetpattern
# Declared: Line 699 (Source lines: 699-699)
# Address: 0x0f0c7fbc - 0x0f0c8070 (Size: 180 bytes, Frame: 224)
.globl __GLgetpattern
.ent __GLgetpattern
__GLgetpattern:
    # Line 699
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-19828
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c803c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c803c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getpattern
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8068
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getpattern
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8068
    nop
    la	$t9,gl_g_getpattern
.L0f0c8068:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetpattern

# Function: __GLlookat
# Declared: Line 700 (Source lines: 700-700)
# Address: 0x0f0c8070 - 0x0f0c8124 (Size: 180 bytes, Frame: 224)
.globl __GLlookat
.ent __GLlookat
__GLlookat:
    # Line 700
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-20008
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c80f0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c80f0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lookat
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c811c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lookat
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c811c
    nop
    la	$t9,gl_g_lookat
.L0f0c811c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlookat

# Function: __GLsetshade
# Declared: Line 701 (Source lines: 701-701)
# Address: 0x0f0c8124 - 0x0f0c8168 (Size: 68 bytes, Frame: 0)
.globl __GLsetshade
.ent __GLsetshade
__GLsetshade:
    # Line 701
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-20188
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setshade
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8160
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setshade
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8160
    nop
    la	$t9,gl_g_setshade
.L0f0c8160:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetshade

# Function: __GLfinish
# Declared: Line 702 (Source lines: 702-702)
# Address: 0x0f0c8168 - 0x0f0c821c (Size: 180 bytes, Frame: 224)
.globl __GLfinish
.ent __GLfinish
__GLfinish:
    # Line 702
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-20256
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c81e8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c81e8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_finish
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8214
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_finish
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8214
    nop
    la	$t9,gl_g_finish
.L0f0c8214:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLfinish

# Function: __GLpolarview
# Declared: Line 703 (Source lines: 703-703)
# Address: 0x0f0c821c - 0x0f0c82d0 (Size: 180 bytes, Frame: 224)
.globl __GLpolarview
.ent __GLpolarview
__GLpolarview:
    # Line 703
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-20436
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c829c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c829c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_polarview
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c82c8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_polarview
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c82c8
    nop
    la	$t9,gl_g_polarview
.L0f0c82c8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpolarview

# Function: __GLgselect
# Declared: Line 704 (Source lines: 704-704)
# Address: 0x0f0c82d0 - 0x0f0c8384 (Size: 180 bytes, Frame: 224)
.globl __GLgselect
.ent __GLgselect
__GLgselect:
    # Line 704
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-20616
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8350
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8350:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gselect
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c837c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gselect
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c837c
    nop
    la	$t9,gl_g_gselect
.L0f0c837c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgselect

# Function: __GLmaketag
# Declared: Line 705 (Source lines: 705-705)
# Address: 0x0f0c8384 - 0x0f0c8438 (Size: 180 bytes, Frame: 224)
.globl __GLmaketag
.ent __GLmaketag
__GLmaketag:
    # Line 705
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-20796
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8404
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8404:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_maketag
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8430
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_maketag
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8430
    nop
    la	$t9,gl_g_maketag
.L0f0c8430:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLmaketag

# Function: __GLsubtexload
# Declared: Line 706 (Source lines: 706-706)
# Address: 0x0f0c8438 - 0x0f0c847c (Size: 68 bytes, Frame: 0)
.globl __GLsubtexload
.ent __GLsubtexload
__GLsubtexload:
    # Line 706
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-20976
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_subtexload
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8474
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_subtexload
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8474
    nop
    la	$t9,gl_g_subtexload
.L0f0c8474:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsubtexload

# Function: __GLlstwid
# Declared: Line 707 (Source lines: 707-707)
# Address: 0x0f0c847c - 0x0f0c8530 (Size: 180 bytes, Frame: 224)
.globl __GLlstwid
.ent __GLlstwid
__GLlstwid:
    # Line 707
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-21044
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c84fc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c84fc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lstwid
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8528
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lstwid
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8528
    nop
    la	$t9,gl_g_lstwid
.L0f0c8528:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlstwid

# Function: __GLgetsb
# Declared: Line 708 (Source lines: 708-708)
# Address: 0x0f0c8530 - 0x0f0c8574 (Size: 68 bytes, Frame: 0)
.globl __GLgetsb
.ent __GLgetsb
__GLgetsb:
    # Line 708
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-21224
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getsb
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c856c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getsb
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c856c
    nop
    la	$t9,gl_g_getsb
.L0f0c856c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetsb

# Function: __GLgetfont
# Declared: Line 709 (Source lines: 709-709)
# Address: 0x0f0c8574 - 0x0f0c8628 (Size: 180 bytes, Frame: 224)
.globl __GLgetfont
.ent __GLgetfont
__GLgetfont:
    # Line 709
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-21292
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c85f4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c85f4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getfont
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8620
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getfont
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8620
    nop
    la	$t9,gl_g_getfont
.L0f0c8620:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetfont

# Function: __GLgetplanes
# Declared: Line 710 (Source lines: 710-710)
# Address: 0x0f0c8628 - 0x0f0c86dc (Size: 180 bytes, Frame: 224)
.globl __GLgetplanes
.ent __GLgetplanes
__GLgetplanes:
    # Line 710
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-21472
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c86a8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c86a8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getplanes
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c86d4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getplanes
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c86d4
    nop
    la	$t9,gl_g_getplanes
.L0f0c86d4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetplanes

# Function: __GLcharst
# Declared: Line 711 (Source lines: 711-711)
# Address: 0x0f0c86dc - 0x0f0c8790 (Size: 180 bytes, Frame: 224)
.globl __GLcharst
.ent __GLcharst
__GLcharst:
    # Line 711
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-21652
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c875c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c875c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_charst
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8788
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_charst
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8788
    nop
    la	$t9,gl_g_charst
.L0f0c8788:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcharst

# Function: __GLtexdef2d
# Declared: Line 712 (Source lines: 712-712)
# Address: 0x0f0c8790 - 0x0f0c87d4 (Size: 68 bytes, Frame: 0)
.globl __GLtexdef2d
.ent __GLtexdef2d
__GLtexdef2d:
    # Line 712
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-21832
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_texdef2d
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c87cc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_texdef2d
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c87cc
    nop
    la	$t9,gl_g_texdef2d
.L0f0c87cc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLtexdef2d

# Function: __GLsetmonitor
# Declared: Line 713 (Source lines: 713-713)
# Address: 0x0f0c87d4 - 0x0f0c8888 (Size: 180 bytes, Frame: 224)
.globl __GLsetmonitor
.ent __GLsetmonitor
__GLsetmonitor:
    # Line 713
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-21900
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8854
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8854:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setmonitor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8880
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setmonitor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8880
    nop
    la	$t9,gl_g_setmonitor
.L0f0c8880:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetmonitor

# Function: __GLendfeedback
# Declared: Line 714 (Source lines: 714-714)
# Address: 0x0f0c8888 - 0x0f0c893c (Size: 180 bytes, Frame: 224)
.globl __GLendfeedback
.ent __GLendfeedback
__GLendfeedback:
    # Line 714
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-22080
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8908
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8908:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_endfeedback
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8934
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_endfeedback
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8934
    nop
    la	$t9,gl_g_endfeedback
.L0f0c8934:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendfeedback

# Function: __GLpushviewport
# Declared: Line 715 (Source lines: 715-715)
# Address: 0x0f0c893c - 0x0f0c89f0 (Size: 180 bytes, Frame: 224)
.globl __GLpushviewport
.ent __GLpushviewport
__GLpushviewport:
    # Line 715
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-22260
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c89bc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c89bc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_pushviewport
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c89e8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pushviewport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c89e8
    nop
    la	$t9,gl_g_pushviewport
.L0f0c89e8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpushviewport

# Function: __GLrectcopy
# Declared: Line 716 (Source lines: 716-716)
# Address: 0x0f0c89f0 - 0x0f0c8aa4 (Size: 180 bytes, Frame: 224)
.globl __GLrectcopy
.ent __GLrectcopy
__GLrectcopy:
    # Line 716
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-22440
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8a70
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8a70:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_rectcopy
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8a9c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_rectcopy
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8a9c
    nop
    la	$t9,gl_g_rectcopy
.L0f0c8a9c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrectcopy

# Function: __GLgconfig
# Declared: Line 717 (Source lines: 717-717)
# Address: 0x0f0c8aa4 - 0x0f0c8b58 (Size: 180 bytes, Frame: 224)
.globl __GLgconfig
.ent __GLgconfig
__GLgconfig:
    # Line 717
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-22620
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8b24
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8b24:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gconfig
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8b50
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gconfig
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8b50
    nop
    la	$t9,gl_g_gconfig
.L0f0c8b50:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgconfig

# Function: __GLgRGBmask
# Declared: Line 718 (Source lines: 718-718)
# Address: 0x0f0c8b58 - 0x0f0c8c0c (Size: 180 bytes, Frame: 224)
.globl __GLgRGBmask
.ent __GLgRGBmask
__GLgRGBmask:
    # Line 718
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-22800
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8bd8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8bd8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gRGBmask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8c04
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gRGBmask
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8c04
    nop
    la	$t9,gl_g_gRGBmask
.L0f0c8c04:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgRGBmask

# Function: __GLendpupmode
# Declared: Line 719 (Source lines: 719-719)
# Address: 0x0f0c8c0c - 0x0f0c8cc0 (Size: 180 bytes, Frame: 224)
.globl __GLendpupmode
.ent __GLendpupmode
__GLendpupmode:
    # Line 719
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-22980
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8c8c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8c8c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_endpupmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8cb8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_endpupmode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8cb8
    nop
    la	$t9,gl_g_endpupmode
.L0f0c8cb8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendpupmode

# Function: __GLbgnsurface
# Declared: Line 720 (Source lines: 720-720)
# Address: 0x0f0c8cc0 - 0x0f0c8d74 (Size: 180 bytes, Frame: 224)
.globl __GLbgnsurface
.ent __GLbgnsurface
__GLbgnsurface:
    # Line 720
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-23160
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8d40
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8d40:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_bgnsurface
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8d6c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_bgnsurface
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8d6c
    nop
    la	$t9,gl_g_bgnsurface
.L0f0c8d6c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLbgnsurface

# Function: __GLgetviewport
# Declared: Line 721 (Source lines: 721-721)
# Address: 0x0f0c8d74 - 0x0f0c8e28 (Size: 180 bytes, Frame: 224)
.globl __GLgetviewport
.ent __GLgetviewport
__GLgetviewport:
    # Line 721
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-23340
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8df4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8df4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getviewport
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8e20
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getviewport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8e20
    nop
    la	$t9,gl_g_getviewport
.L0f0c8e20:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetviewport

# Function: __GLwinpush
# Declared: Line 722 (Source lines: 722-722)
# Address: 0x0f0c8e28 - 0x0f0c8edc (Size: 180 bytes, Frame: 224)
.globl __GLwinpush
.ent __GLwinpush
__GLwinpush:
    # Line 722
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-23520
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8ea8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8ea8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winpush
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8ed4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winpush
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8ed4
    nop
    la	$t9,gl_g_winpush
.L0f0c8ed4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinpush

# Function: __GLcyclemap
# Declared: Line 723 (Source lines: 723-723)
# Address: 0x0f0c8edc - 0x0f0c8f90 (Size: 180 bytes, Frame: 224)
.globl __GLcyclemap
.ent __GLcyclemap
__GLcyclemap:
    # Line 723
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-23700
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c8f5c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c8f5c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_cyclemap
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8f88
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_cyclemap
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8f88
    nop
    la	$t9,gl_g_cyclemap
.L0f0c8f88:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcyclemap

# Function: __GLildraw
# Declared: Line 724 (Source lines: 724-724)
# Address: 0x0f0c8f90 - 0x0f0c8fd4 (Size: 68 bytes, Frame: 0)
.globl __GLildraw
.ent __GLildraw
__GLildraw:
    # Line 724
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-23880
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_ildraw
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c8fcc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_ildraw
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c8fcc
    nop
    la	$t9,gl_g_ildraw
.L0f0c8fcc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLildraw

# Function: __GLgetsm
# Declared: Line 725 (Source lines: 725-725)
# Address: 0x0f0c8fd4 - 0x0f0c9088 (Size: 180 bytes, Frame: 224)
.globl __GLgetsm
.ent __GLgetsm
__GLgetsm:
    # Line 725
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-23948
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9054
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9054:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getsm
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9080
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getsm
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9080
    nop
    la	$t9,gl_g_getsm
.L0f0c9080:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetsm

# Function: __GLRGBrange
# Declared: Line 726 (Source lines: 726-726)
# Address: 0x0f0c9088 - 0x0f0c913c (Size: 180 bytes, Frame: 224)
.globl __GLRGBrange
.ent __GLRGBrange
__GLRGBrange:
    # Line 726
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-24128
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9108
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9108:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_RGBrange
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9134
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_RGBrange
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9134
    nop
    la	$t9,gl_g_RGBrange
.L0f0c9134:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLRGBrange

# Function: __GLsetcursor
# Declared: Line 727 (Source lines: 727-727)
# Address: 0x0f0c913c - 0x0f0c91f0 (Size: 180 bytes, Frame: 224)
.globl __GLsetcursor
.ent __GLsetcursor
__GLsetcursor:
    # Line 727
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-24308
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c91bc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c91bc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setcursor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c91e8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setcursor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c91e8
    nop
    la	$t9,gl_g_setcursor
.L0f0c91e8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetcursor

# Function: __GLgetdescender
# Declared: Line 728 (Source lines: 728-728)
# Address: 0x0f0c91f0 - 0x0f0c92a4 (Size: 180 bytes, Frame: 224)
.globl __GLgetdescender
.ent __GLgetdescender
__GLgetdescender:
    # Line 728
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-24488
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9270
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9270:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getdescender
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c929c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getdescender
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c929c
    nop
    la	$t9,gl_g_getdescender
.L0f0c929c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetdescender

# Function: __GLreaddisplay
# Declared: Line 729 (Source lines: 729-729)
# Address: 0x0f0c92a4 - 0x0f0c9358 (Size: 180 bytes, Frame: 224)
.globl __GLreaddisplay
.ent __GLreaddisplay
__GLreaddisplay:
    # Line 729
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-24668
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9324
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9324:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_readdisplay
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9350
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_readdisplay
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9350
    nop
    la	$t9,gl_g_readdisplay
.L0f0c9350:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLreaddisplay

# Function: __GLgetcpos
# Declared: Line 730 (Source lines: 730-730)
# Address: 0x0f0c9358 - 0x0f0c940c (Size: 180 bytes, Frame: 224)
.globl __GLgetcpos
.ent __GLgetcpos
__GLgetcpos:
    # Line 730
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-24848
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c93d8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c93d8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getcpos
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9404
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getcpos
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9404
    nop
    la	$t9,gl_g_getcpos
.L0f0c9404:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetcpos

# Function: __GLgetmatrix
# Declared: Line 731 (Source lines: 731-731)
# Address: 0x0f0c940c - 0x0f0c94c0 (Size: 180 bytes, Frame: 224)
.globl __GLgetmatrix
.ent __GLgetmatrix
__GLgetmatrix:
    # Line 731
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-25028
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c948c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c948c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getmatrix
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c94b8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getmatrix
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c94b8
    nop
    la	$t9,gl_g_getmatrix
.L0f0c94b8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetmatrix

# Function: __GLoverlay
# Declared: Line 732 (Source lines: 732-732)
# Address: 0x0f0c94c0 - 0x0f0c9574 (Size: 180 bytes, Frame: 224)
.globl __GLoverlay
.ent __GLoverlay
__GLoverlay:
    # Line 732
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-25208
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9540
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9540:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_overlay
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c956c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_overlay
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c956c
    nop
    la	$t9,gl_g_overlay
.L0f0c956c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLoverlay

# Function: __GLsetpup
# Declared: Line 733 (Source lines: 733-733)
# Address: 0x0f0c9574 - 0x0f0c9628 (Size: 180 bytes, Frame: 224)
.globl __GLsetpup
.ent __GLsetpup
__GLsetpup:
    # Line 733
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-25388
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c95f4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c95f4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setpup
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9620
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setpup
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9620
    nop
    la	$t9,gl_g_setpup
.L0f0c9620:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetpup

# Function: __GLgetbackface
# Declared: Line 734 (Source lines: 734-734)
# Address: 0x0f0c9628 - 0x0f0c96dc (Size: 180 bytes, Frame: 224)
.globl __GLgetbackface
.ent __GLgetbackface
__GLgetbackface:
    # Line 734
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-25568
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c96a8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c96a8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getbackface
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c96d4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getbackface
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c96d4
    nop
    la	$t9,gl_g_getbackface
.L0f0c96d4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetbackface

# Function: __GLwinget
# Declared: Line 735 (Source lines: 735-735)
# Address: 0x0f0c96dc - 0x0f0c9790 (Size: 180 bytes, Frame: 224)
.globl __GLwinget
.ent __GLwinget
__GLwinget:
    # Line 735
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-25748
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c975c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c975c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winget
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9788
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winget
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9788
    nop
    la	$t9,gl_g_winget
.L0f0c9788:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinget

# Function: __GLlRGBrange
# Declared: Line 736 (Source lines: 736-736)
# Address: 0x0f0c9790 - 0x0f0c9844 (Size: 180 bytes, Frame: 224)
.globl __GLlRGBrange
.ent __GLlRGBrange
__GLlRGBrange:
    # Line 736
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-25928
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9810
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9810:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lRGBrange
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c983c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lRGBrange
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c983c
    nop
    la	$t9,gl_g_lRGBrange
.L0f0c983c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlRGBrange

# Function: __GLarcfi
# Declared: Line 737 (Source lines: 737-737)
# Address: 0x0f0c9844 - 0x0f0c98f8 (Size: 180 bytes, Frame: 224)
.globl __GLarcfi
.ent __GLarcfi
__GLarcfi:
    # Line 737
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26108
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c98c4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c98c4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_arcfi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c98f0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_arcfi
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c98f0
    nop
    la	$t9,gl_g_arcfi
.L0f0c98f0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLarcfi

# Function: __GLreadcomponent
# Declared: Line 738 (Source lines: 738-738)
# Address: 0x0f0c98f8 - 0x0f0c993c (Size: 68 bytes, Frame: 0)
.globl __GLreadcomponent
.ent __GLreadcomponent
__GLreadcomponent:
    # Line 738
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26288
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_readcomponent
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9934
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_readcomponent
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9934
    nop
    la	$t9,gl_g_readcomponent
.L0f0c9934:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLreadcomponent

# Function: __GLgl_glx_link
# Declared: Line 739 (Source lines: 739-739)
# Address: 0x0f0c993c - 0x0f0c9980 (Size: 68 bytes, Frame: 0)
.globl __GLgl_glx_link
.ent __GLgl_glx_link
__GLgl_glx_link:
    # Line 739
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26356
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_glx_link
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9978
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_glx_link
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9978
    nop
    la	$t9,gl_g_gl_glx_link
.L0f0c9978:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_glx_link

# Function: __GLsinglebuffer
# Declared: Line 740 (Source lines: 740-740)
# Address: 0x0f0c9980 - 0x0f0c9a34 (Size: 180 bytes, Frame: 224)
.globl __GLsinglebuffer
.ent __GLsinglebuffer
__GLsinglebuffer:
    # Line 740
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26424
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9a00
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9a00:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_singlebuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9a2c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_singlebuffer
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9a2c
    nop
    la	$t9,gl_g_singlebuffer
.L0f0c9a2c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsinglebuffer

# Function: __GLmakeobj
# Declared: Line 741 (Source lines: 741-741)
# Address: 0x0f0c9a34 - 0x0f0c9ae8 (Size: 180 bytes, Frame: 224)
.globl __GLmakeobj
.ent __GLmakeobj
__GLmakeobj:
    # Line 741
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26604
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9ab4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9ab4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_makeobj
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9ae0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_makeobj
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9ae0
    nop
    la	$t9,gl_g_makeobj
.L0f0c9ae0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLmakeobj

# Function: __GLdevport
# Declared: Line 742 (Source lines: 742-742)
# Address: 0x0f0c9ae8 - 0x0f0c9b2c (Size: 68 bytes, Frame: 0)
.globl __GLdevport
.ent __GLdevport
__GLdevport:
    # Line 742
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26784
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_devport
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9b24
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_devport
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9b24
    nop
    la	$t9,gl_g_devport
.L0f0c9b24:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdevport

# Function: __GLhgram
# Declared: Line 743 (Source lines: 743-743)
# Address: 0x0f0c9b2c - 0x0f0c9b70 (Size: 68 bytes, Frame: 0)
.globl __GLhgram
.ent __GLhgram
__GLhgram:
    # Line 743
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26852
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_hgram
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9b68
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_hgram
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9b68
    nop
    la	$t9,gl_g_hgram
.L0f0c9b68:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLhgram

# Function: __GLtexdef3d
# Declared: Line 744 (Source lines: 744-744)
# Address: 0x0f0c9b70 - 0x0f0c9bb4 (Size: 68 bytes, Frame: 0)
.globl __GLtexdef3d
.ent __GLtexdef3d
__GLtexdef3d:
    # Line 744
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26920
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_texdef3d
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9bac
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_texdef3d
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9bac
    nop
    la	$t9,gl_g_texdef3d
.L0f0c9bac:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLtexdef3d

# Function: __GLmssize
# Declared: Line 745 (Source lines: 745-745)
# Address: 0x0f0c9bb4 - 0x0f0c9bf8 (Size: 68 bytes, Frame: 0)
.globl __GLmssize
.ent __GLmssize
__GLmssize:
    # Line 745
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-26988
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_mssize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9bf0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_mssize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9bf0
    nop
    la	$t9,gl_g_mssize
.L0f0c9bf0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLmssize

# Function: __GLdrawmode
# Declared: Line 746 (Source lines: 746-746)
# Address: 0x0f0c9bf8 - 0x0f0c9cac (Size: 180 bytes, Frame: 224)
.globl __GLdrawmode
.ent __GLdrawmode
__GLdrawmode:
    # Line 746
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-27056
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9c78
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9c78:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_drawmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9ca4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_drawmode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9ca4
    nop
    la	$t9,gl_g_drawmode
.L0f0c9ca4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdrawmode

# Function: __GLgetdisplaymode
# Declared: Line 747 (Source lines: 747-747)
# Address: 0x0f0c9cac - 0x0f0c9d60 (Size: 180 bytes, Frame: 224)
.globl __GLgetdisplaymode
.ent __GLgetdisplaymode
__GLgetdisplaymode:
    # Line 747
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-27236
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9d2c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9d2c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getdisplaymode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9d58
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getdisplaymode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9d58
    nop
    la	$t9,gl_g_getdisplaymode
.L0f0c9d58:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetdisplaymode

# Function: __GLarcfs
# Declared: Line 748 (Source lines: 748-748)
# Address: 0x0f0c9d60 - 0x0f0c9e14 (Size: 180 bytes, Frame: 224)
.globl __GLarcfs
.ent __GLarcfs
__GLarcfs:
    # Line 748
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-27416
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9de0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9de0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_arcfs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9e0c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_arcfs
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9e0c
    nop
    la	$t9,gl_g_arcfs
.L0f0c9e0c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLarcfs

# Function: __GLpatch
# Declared: Line 749 (Source lines: 749-749)
# Address: 0x0f0c9e14 - 0x0f0c9ec8 (Size: 180 bytes, Frame: 224)
.globl __GLpatch
.ent __GLpatch
__GLpatch:
    # Line 749
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-27596
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9e94
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9e94:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_patch
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9ec0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_patch
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9ec0
    nop
    la	$t9,gl_g_patch
.L0f0c9ec0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpatch

# Function: __GLgl_glx_unlink
# Declared: Line 750 (Source lines: 750-750)
# Address: 0x0f0c9ec8 - 0x0f0c9f0c (Size: 68 bytes, Frame: 0)
.globl __GLgl_glx_unlink
.ent __GLgl_glx_unlink
__GLgl_glx_unlink:
    # Line 750
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-27776
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_glx_unlink
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9f04
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_glx_unlink
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9f04
    nop
    la	$t9,gl_g_gl_glx_unlink
.L0f0c9f04:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_glx_unlink

# Function: __GLnurbssurface
# Declared: Line 751 (Source lines: 751-751)
# Address: 0x0f0c9f0c - 0x0f0c9fc0 (Size: 180 bytes, Frame: 224)
.globl __GLnurbssurface
.ent __GLnurbssurface
__GLnurbssurface:
    # Line 751
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-27844
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0c9f8c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0c9f8c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_nurbssurface
    lw	$t2,0($t2)
    bnez	$t2,.L0f0c9fb8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_nurbssurface
    lw	$t8,0($t8)
    bnez	$t8,.L0f0c9fb8
    nop
    la	$t9,gl_g_nurbssurface
.L0f0c9fb8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLnurbssurface

# Function: __GLnewpup
# Declared: Line 752 (Source lines: 752-752)
# Address: 0x0f0c9fc0 - 0x0f0ca074 (Size: 180 bytes, Frame: 224)
.globl __GLnewpup
.ent __GLnewpup
__GLnewpup:
    # Line 752
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-28024
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca040
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca040:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_newpup
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca06c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_newpup
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca06c
    nop
    la	$t9,gl_g_newpup
.L0f0ca06c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLnewpup

# Function: __GLwintit
# Declared: Line 753 (Source lines: 753-753)
# Address: 0x0f0ca074 - 0x0f0ca128 (Size: 180 bytes, Frame: 224)
.globl __GLwintit
.ent __GLwintit
__GLwintit:
    # Line 753
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-28204
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca0f4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca0f4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_wintit
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca120
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_wintit
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca120
    nop
    la	$t9,gl_g_wintit
.L0f0ca120:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwintit

# Function: __GLgetheight
# Declared: Line 754 (Source lines: 754-754)
# Address: 0x0f0ca128 - 0x0f0ca1dc (Size: 180 bytes, Frame: 224)
.globl __GLgetheight
.ent __GLgetheight
__GLgetheight:
    # Line 754
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-28384
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca1a8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca1a8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getheight
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca1d4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getheight
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca1d4
    nop
    la	$t9,gl_g_getheight
.L0f0ca1d4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetheight

# Function: __GLgetbuffer
# Declared: Line 755 (Source lines: 755-755)
# Address: 0x0f0ca1dc - 0x0f0ca290 (Size: 180 bytes, Frame: 224)
.globl __GLgetbuffer
.ent __GLgetbuffer
__GLgetbuffer:
    # Line 755
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-28564
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca25c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca25c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getbuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca288
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getbuffer
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca288
    nop
    la	$t9,gl_g_getbuffer
.L0f0ca288:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetbuffer

# Function: __GLdeltag
# Declared: Line 756 (Source lines: 756-756)
# Address: 0x0f0ca290 - 0x0f0ca344 (Size: 180 bytes, Frame: 224)
.globl __GLdeltag
.ent __GLdeltag
__GLdeltag:
    # Line 756
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-28744
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca310
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca310:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_deltag
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca33c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_deltag
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca33c
    nop
    la	$t9,gl_g_deltag
.L0f0ca33c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdeltag

# Function: __GLpushattributes
# Declared: Line 757 (Source lines: 757-757)
# Address: 0x0f0ca344 - 0x0f0ca3f8 (Size: 180 bytes, Frame: 224)
.globl __GLpushattributes
.ent __GLpushattributes
__GLpushattributes:
    # Line 757
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-28924
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca3c4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca3c4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_pushattributes
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca3f0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pushattributes
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca3f0
    nop
    la	$t9,gl_g_pushattributes
.L0f0ca3f0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpushattributes

# Function: __GLgettp
# Declared: Line 758 (Source lines: 758-758)
# Address: 0x0f0ca3f8 - 0x0f0ca43c (Size: 68 bytes, Frame: 0)
.globl __GLgettp
.ent __GLgettp
__GLgettp:
    # Line 758
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-29104
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gettp
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca434
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gettp
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca434
    nop
    la	$t9,gl_g_gettp
.L0f0ca434:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgettp

# Function: __GLgetlstyle
# Declared: Line 759 (Source lines: 759-759)
# Address: 0x0f0ca43c - 0x0f0ca4f0 (Size: 180 bytes, Frame: 224)
.globl __GLgetlstyle
.ent __GLgetlstyle
__GLgetlstyle:
    # Line 759
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-29172
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca4bc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca4bc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getlstyle
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca4e8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getlstyle
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca4e8
    nop
    la	$t9,gl_g_getlstyle
.L0f0ca4e8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetlstyle

# Function: __GLendcurve
# Declared: Line 760 (Source lines: 760-760)
# Address: 0x0f0ca4f0 - 0x0f0ca534 (Size: 68 bytes, Frame: 0)
.globl __GLendcurve
.ent __GLendcurve
__GLendcurve:
    # Line 760
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-29352
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_endcurve
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca52c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_endcurve
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca52c
    nop
    la	$t9,gl_g_endcurve
.L0f0ca52c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendcurve

# Function: __GLcurstype
# Declared: Line 761 (Source lines: 761-761)
# Address: 0x0f0ca534 - 0x0f0ca5e8 (Size: 180 bytes, Frame: 224)
.globl __GLcurstype
.ent __GLcurstype
__GLcurstype:
    # Line 761
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-29420
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca5b4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca5b4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_curstype
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca5e0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_curstype
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca5e0
    nop
    la	$t9,gl_g_curstype
.L0f0ca5e0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcurstype

# Function: __GLeditobj
# Declared: Line 762 (Source lines: 762-762)
# Address: 0x0f0ca5e8 - 0x0f0ca69c (Size: 180 bytes, Frame: 224)
.globl __GLeditobj
.ent __GLeditobj
__GLeditobj:
    # Line 762
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-29600
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca668
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca668:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_editobj
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca694
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_editobj
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca694
    nop
    la	$t9,gl_g_editobj
.L0f0ca694:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLeditobj

# Function: __GLgRGBcolor
# Declared: Line 763 (Source lines: 763-763)
# Address: 0x0f0ca69c - 0x0f0ca750 (Size: 180 bytes, Frame: 224)
.globl __GLgRGBcolor
.ent __GLgRGBcolor
__GLgRGBcolor:
    # Line 763
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-29780
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca71c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca71c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gRGBcolor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca748
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gRGBcolor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca748
    nop
    la	$t9,gl_g_gRGBcolor
.L0f0ca748:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgRGBcolor

# Function: __GLunqdevice
# Declared: Line 764 (Source lines: 764-764)
# Address: 0x0f0ca750 - 0x0f0ca804 (Size: 180 bytes, Frame: 224)
.globl __GLunqdevice
.ent __GLunqdevice
__GLunqdevice:
    # Line 764
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-29960
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca7d0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca7d0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_unqdevice
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca7fc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_unqdevice
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca7fc
    nop
    la	$t9,gl_g_unqdevice
.L0f0ca7fc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLunqdevice

# Function: __GLfreepup
# Declared: Line 765 (Source lines: 765-765)
# Address: 0x0f0ca804 - 0x0f0ca8b8 (Size: 180 bytes, Frame: 224)
.globl __GLfreepup
.ent __GLfreepup
__GLfreepup:
    # Line 765
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-30140
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca884
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca884:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_freepup
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca8b0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_freepup
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca8b0
    nop
    la	$t9,gl_g_freepup
.L0f0ca8b0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLfreepup

# Function: __GLaddtopup
# Declared: Line 766 (Source lines: 766-766)
# Address: 0x0f0ca8b8 - 0x0f0ca96c (Size: 180 bytes, Frame: 224)
.globl __GLaddtopup
.ent __GLaddtopup
__GLaddtopup:
    # Line 766
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-30320
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca938
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca938:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_addtopup
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ca964
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_addtopup
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ca964
    nop
    la	$t9,gl_g_addtopup
.L0f0ca964:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLaddtopup

# Function: __GLconvolve
# Declared: Line 767 (Source lines: 767-767)
# Address: 0x0f0ca96c - 0x0f0caa20 (Size: 180 bytes, Frame: 224)
.globl __GLconvolve
.ent __GLconvolve
__GLconvolve:
    # Line 767
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-30500
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ca9ec
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ca9ec:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_convolve
    lw	$t2,0($t2)
    bnez	$t2,.L0f0caa18
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_convolve
    lw	$t8,0($t8)
    bnez	$t8,.L0f0caa18
    nop
    la	$t9,gl_g_convolve
.L0f0caa18:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLconvolve

# Function: __GLgetscrmask
# Declared: Line 768 (Source lines: 768-768)
# Address: 0x0f0caa20 - 0x0f0caad4 (Size: 180 bytes, Frame: 224)
.globl __GLgetscrmask
.ent __GLgetscrmask
__GLgetscrmask:
    # Line 768
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-30680
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0caaa0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0caaa0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getscrmask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0caacc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getscrmask
    lw	$t8,0($t8)
    bnez	$t8,.L0f0caacc
    nop
    la	$t9,gl_g_getscrmask
.L0f0caacc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetscrmask

# Function: __GLwindow
# Declared: Line 769 (Source lines: 769-769)
# Address: 0x0f0caad4 - 0x0f0cab88 (Size: 180 bytes, Frame: 224)
.globl __GLwindow
.ent __GLwindow
__GLwindow:
    # Line 769
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-30860
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cab54
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cab54:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_window
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cab80
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_window
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cab80
    nop
    la	$t9,gl_g_window
.L0f0cab80:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwindow

# Function: __GListexloaded
# Declared: Line 770 (Source lines: 770-770)
# Address: 0x0f0cab88 - 0x0f0cabcc (Size: 68 bytes, Frame: 0)
.globl __GListexloaded
.ent __GListexloaded
__GListexloaded:
    # Line 770
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-31040
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_istexloaded
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cabc4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_istexloaded
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cabc4
    nop
    la	$t9,gl_g_istexloaded
.L0f0cabc4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GListexloaded

# Function: __GLsmoothline
# Declared: Line 771 (Source lines: 771-771)
# Address: 0x0f0cabcc - 0x0f0cac80 (Size: 180 bytes, Frame: 224)
.globl __GLsmoothline
.ent __GLsmoothline
__GLsmoothline:
    # Line 771
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-31108
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cac4c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cac4c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_smoothline
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cac78
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_smoothline
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cac78
    nop
    la	$t9,gl_g_smoothline
.L0f0cac78:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsmoothline

# Function: __GLnewtag
# Declared: Line 772 (Source lines: 772-772)
# Address: 0x0f0cac80 - 0x0f0cad34 (Size: 180 bytes, Frame: 224)
.globl __GLnewtag
.ent __GLnewtag
__GLnewtag:
    # Line 772
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-31288
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cad00
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cad00:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_newtag
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cad2c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_newtag
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cad2c
    nop
    la	$t9,gl_g_newtag
.L0f0cad2c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLnewtag

# Function: __GLcurson
# Declared: Line 773 (Source lines: 773-773)
# Address: 0x0f0cad34 - 0x0f0cade8 (Size: 180 bytes, Frame: 224)
.globl __GLcurson
.ent __GLcurson
__GLcurson:
    # Line 773
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-31468
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cadb4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cadb4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_curson
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cade0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_curson
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cade0
    nop
    la	$t9,gl_g_curson
.L0f0cade0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcurson

# Function: __GLortho2
# Declared: Line 774 (Source lines: 774-774)
# Address: 0x0f0cade8 - 0x0f0cae9c (Size: 180 bytes, Frame: 224)
.globl __GLortho2
.ent __GLortho2
__GLortho2:
    # Line 774
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-31648
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cae68
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cae68:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_ortho2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cae94
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_ortho2
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cae94
    nop
    la	$t9,gl_g_ortho2
.L0f0cae94:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLortho2

# Function: __GLRGBcursor
# Declared: Line 775 (Source lines: 775-775)
# Address: 0x0f0cae9c - 0x0f0caee0 (Size: 68 bytes, Frame: 0)
.globl __GLRGBcursor
.ent __GLRGBcursor
__GLRGBcursor:
    # Line 775
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-31828
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_RGBcursor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0caed8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_RGBcursor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0caed8
    nop
    la	$t9,gl_g_RGBcursor
.L0f0caed8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLRGBcursor

# Function: __GLgl_lrectproc
# Declared: Line 776 (Source lines: 776-776)
# Address: 0x0f0caee0 - 0x0f0caf94 (Size: 180 bytes, Frame: 224)
.globl __GLgl_lrectproc
.ent __GLgl_lrectproc
__GLgl_lrectproc:
    # Line 776
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-31896
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0caf60
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0caf60:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_lrectproc
    lw	$t2,0($t2)
    bnez	$t2,.L0f0caf8c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_lrectproc
    lw	$t8,0($t8)
    bnez	$t8,.L0f0caf8c
    nop
    la	$t9,gl_g_gl_lrectproc
.L0f0caf8c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_lrectproc

# Function: __GLgl_glx_winset
# Declared: Line 777 (Source lines: 777-777)
# Address: 0x0f0caf94 - 0x0f0cafd8 (Size: 68 bytes, Frame: 0)
.globl __GLgl_glx_winset
.ent __GLgl_glx_winset
__GLgl_glx_winset:
    # Line 777
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-32076
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_glx_winset
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cafd0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_glx_winset
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cafd0
    nop
    la	$t9,gl_g_gl_glx_winset
.L0f0cafd0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_glx_winset

# Function: __GLendpick
# Declared: Line 778 (Source lines: 778-778)
# Address: 0x0f0cafd8 - 0x0f0cb08c (Size: 180 bytes, Frame: 224)
.globl __GLendpick
.ent __GLendpick
__GLendpick:
    # Line 778
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-32144
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb058
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb058:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_endpick
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb084
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_endpick
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb084
    nop
    la	$t9,gl_g_endpick
.L0f0cb084:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendpick

# Function: __GLendtrim
# Declared: Line 779 (Source lines: 779-779)
# Address: 0x0f0cb08c - 0x0f0cb140 (Size: 180 bytes, Frame: 224)
.globl __GLendtrim
.ent __GLendtrim
__GLendtrim:
    # Line 779
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-32324
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb10c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb10c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_endtrim
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb138
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_endtrim
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb138
    nop
    la	$t9,gl_g_endtrim
.L0f0cb138:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendtrim

# Function: __GLgetshade
# Declared: Line 780 (Source lines: 780-780)
# Address: 0x0f0cb140 - 0x0f0cb1f4 (Size: 180 bytes, Frame: 224)
.globl __GLgetshade
.ent __GLgetshade
__GLgetshade:
    # Line 780
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-32504
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb1c0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb1c0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getshade
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb1ec
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getshade
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb1ec
    nop
    la	$t9,gl_g_getshade
.L0f0cb1ec:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetshade

# Function: __GLgewrite
# Declared: Line 781 (Source lines: 781-781)
# Address: 0x0f0cb1f4 - 0x0f0cb238 (Size: 68 bytes, Frame: 0)
.globl __GLgewrite
.ent __GLgewrite
__GLgewrite:
    # Line 781
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-32684
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gewrite
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb230
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gewrite
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb230
    nop
    la	$t9,gl_g_gewrite
.L0f0cb230:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgewrite

# Function: __GLqgetfd
# Declared: Line 782 (Source lines: 782-782)
# Address: 0x0f0cb238 - 0x0f0cb2ec (Size: 180 bytes, Frame: 224)
.globl __GLqgetfd
.ent __GLqgetfd
__GLqgetfd:
    # Line 782
    move	$t0,$gp
    lui	$gp,0xfff7
    daddiu	$gp,$gp,-32752
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb2b8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb2b8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_qgetfd
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb2e4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_qgetfd
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb2e4
    nop
    la	$t9,gl_g_qgetfd
.L0f0cb2e4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLqgetfd

# Function: __GLbgntrim
# Declared: Line 783 (Source lines: 783-783)
# Address: 0x0f0cb2ec - 0x0f0cb3a0 (Size: 180 bytes, Frame: 224)
.globl __GLbgntrim
.ent __GLbgntrim
__GLbgntrim:
    # Line 783
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,32604
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb36c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb36c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_bgntrim
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb398
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_bgntrim
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb398
    nop
    la	$t9,gl_g_bgntrim
.L0f0cb398:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLbgntrim

# Function: __GLgetwritemask
# Declared: Line 784 (Source lines: 784-784)
# Address: 0x0f0cb3a0 - 0x0f0cb454 (Size: 180 bytes, Frame: 224)
.globl __GLgetwritemask
.ent __GLgetwritemask
__GLgetwritemask:
    # Line 784
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,32424
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb420
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb420:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getwritemask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb44c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getwritemask
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb44c
    nop
    la	$t9,gl_g_getwritemask
.L0f0cb44c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetwritemask

# Function: __GLlrectwrite
# Declared: Line 785 (Source lines: 785-785)
# Address: 0x0f0cb454 - 0x0f0cb508 (Size: 180 bytes, Frame: 224)
.globl __GLlrectwrite
.ent __GLlrectwrite
__GLlrectwrite:
    # Line 785
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,32244
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb4d4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb4d4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lrectwrite
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb500
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lrectwrite
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb500
    nop
    la	$t9,gl_g_lrectwrite
.L0f0cb500:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlrectwrite

# Function: __GLcircf
# Declared: Line 786 (Source lines: 786-786)
# Address: 0x0f0cb508 - 0x0f0cb5bc (Size: 180 bytes, Frame: 224)
.globl __GLcircf
.ent __GLcircf
__GLcircf:
    # Line 786
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,32064
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb588
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb588:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_circf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb5b4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_circf
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb5b4
    nop
    la	$t9,gl_g_circf
.L0f0cb5b4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcircf

# Function: __GLcirci
# Declared: Line 787 (Source lines: 787-787)
# Address: 0x0f0cb5bc - 0x0f0cb670 (Size: 180 bytes, Frame: 224)
.globl __GLcirci
.ent __GLcirci
__GLcirci:
    # Line 787
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,31884
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb63c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb63c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_circi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb668
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_circi
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb668
    nop
    la	$t9,gl_g_circi
.L0f0cb668:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcirci

# Function: __GLnurbscurve
# Declared: Line 788 (Source lines: 788-788)
# Address: 0x0f0cb670 - 0x0f0cb724 (Size: 180 bytes, Frame: 224)
.globl __GLnurbscurve
.ent __GLnurbscurve
__GLnurbscurve:
    # Line 788
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,31704
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb6f0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb6f0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_nurbscurve
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb71c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_nurbscurve
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb71c
    nop
    la	$t9,gl_g_nurbscurve
.L0f0cb71c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLnurbscurve

# Function: __GLcursoff
# Declared: Line 789 (Source lines: 789-789)
# Address: 0x0f0cb724 - 0x0f0cb7d8 (Size: 180 bytes, Frame: 224)
.globl __GLcursoff
.ent __GLcursoff
__GLcursoff:
    # Line 789
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,31524
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb7a4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb7a4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_cursoff
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb7d0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_cursoff
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb7d0
    nop
    la	$t9,gl_g_cursoff
.L0f0cb7d0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcursoff

# Function: __GLdelobj
# Declared: Line 790 (Source lines: 790-790)
# Address: 0x0f0cb7d8 - 0x0f0cb88c (Size: 180 bytes, Frame: 224)
.globl __GLdelobj
.ent __GLdelobj
__GLdelobj:
    # Line 790
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,31344
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb858
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb858:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_delobj
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb884
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_delobj
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb884
    nop
    la	$t9,gl_g_delobj
.L0f0cb884:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdelobj

# Function: __GLbgncurve
# Declared: Line 791 (Source lines: 791-791)
# Address: 0x0f0cb88c - 0x0f0cb940 (Size: 180 bytes, Frame: 224)
.globl __GLbgncurve
.ent __GLbgncurve
__GLbgncurve:
    # Line 791
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,31164
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb90c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb90c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_bgncurve
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb938
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_bgncurve
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb938
    nop
    la	$t9,gl_g_bgncurve
.L0f0cb938:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLbgncurve

# Function: __GLendfullscrn
# Declared: Line 792 (Source lines: 792-792)
# Address: 0x0f0cb940 - 0x0f0cb9f4 (Size: 180 bytes, Frame: 224)
.globl __GLendfullscrn
.ent __GLendfullscrn
__GLendfullscrn:
    # Line 792
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,30984
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cb9c0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cb9c0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_endfullscrn
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cb9ec
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_endfullscrn
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cb9ec
    nop
    la	$t9,gl_g_endfullscrn
.L0f0cb9ec:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendfullscrn

# Function: __GLsetnurbsproperty
# Declared: Line 793 (Source lines: 793-793)
# Address: 0x0f0cb9f4 - 0x0f0cbaa8 (Size: 180 bytes, Frame: 224)
.globl __GLsetnurbsproperty
.ent __GLsetnurbsproperty
__GLsetnurbsproperty:
    # Line 793
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,30804
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cba74
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cba74:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setnurbsproperty
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbaa0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setnurbsproperty
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbaa0
    nop
    la	$t9,gl_g_setnurbsproperty
.L0f0cbaa0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetnurbsproperty

# Function: __GLgetsize
# Declared: Line 794 (Source lines: 794-794)
# Address: 0x0f0cbaa8 - 0x0f0cbb5c (Size: 180 bytes, Frame: 224)
.globl __GLgetsize
.ent __GLgetsize
__GLgetsize:
    # Line 794
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,30624
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cbb28
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cbb28:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getsize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbb54
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getsize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbb54
    nop
    la	$t9,gl_g_getsize
.L0f0cbb54:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetsize

# Function: __GLmapcolor
# Declared: Line 795 (Source lines: 795-795)
# Address: 0x0f0cbb5c - 0x0f0cbc10 (Size: 180 bytes, Frame: 224)
.globl __GLmapcolor
.ent __GLmapcolor
__GLmapcolor:
    # Line 795
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,30444
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cbbdc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cbbdc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_mapcolor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbc08
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_mapcolor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbc08
    nop
    la	$t9,gl_g_mapcolor
.L0f0cbc08:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLmapcolor

# Function: __GLdeflinestyle
# Declared: Line 796 (Source lines: 796-796)
# Address: 0x0f0cbc10 - 0x0f0cbcc4 (Size: 180 bytes, Frame: 224)
.globl __GLdeflinestyle
.ent __GLdeflinestyle
__GLdeflinestyle:
    # Line 796
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,30264
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cbc90
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cbc90:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_deflinestyle
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbcbc
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_deflinestyle
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbcbc
    nop
    la	$t9,gl_g_deflinestyle
.L0f0cbcbc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdeflinestyle

# Function: __GLpixeltransfer
# Declared: Line 797 (Source lines: 797-797)
# Address: 0x0f0cbcc4 - 0x0f0cbd08 (Size: 68 bytes, Frame: 0)
.globl __GLpixeltransfer
.ent __GLpixeltransfer
__GLpixeltransfer:
    # Line 797
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,30084
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_pixeltransfer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbd00
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pixeltransfer
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbd00
    nop
    la	$t9,gl_g_pixeltransfer
.L0f0cbd00:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpixeltransfer

# Function: __GLiconsize
# Declared: Line 798 (Source lines: 798-798)
# Address: 0x0f0cbd08 - 0x0f0cbdbc (Size: 180 bytes, Frame: 224)
.globl __GLiconsize
.ent __GLiconsize
__GLiconsize:
    # Line 798
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,30016
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cbd88
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cbd88:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_iconsize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbdb4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_iconsize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbdb4
    nop
    la	$t9,gl_g_iconsize
.L0f0cbdb4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLiconsize

# Function: __GLspclos
# Declared: Line 799 (Source lines: 799-799)
# Address: 0x0f0cbdbc - 0x0f0cbe00 (Size: 68 bytes, Frame: 0)
.globl __GLspclos
.ent __GLspclos
__GLspclos:
    # Line 799
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,29836
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_spclos
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbdf8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_spclos
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbdf8
    nop
    la	$t9,gl_g_spclos
.L0f0cbdf8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLspclos

# Function: __GLgentag
# Declared: Line 800 (Source lines: 800-800)
# Address: 0x0f0cbe00 - 0x0f0cbeb4 (Size: 180 bytes, Frame: 224)
.globl __GLgentag
.ent __GLgentag
__GLgentag:
    # Line 800
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,29768
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cbe80
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cbe80:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gentag
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbeac
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gentag
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbeac
    nop
    la	$t9,gl_g_gentag
.L0f0cbeac:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgentag

# Function: __GLmonobuffer
# Declared: Line 801 (Source lines: 801-801)
# Address: 0x0f0cbeb4 - 0x0f0cbef8 (Size: 68 bytes, Frame: 0)
.globl __GLmonobuffer
.ent __GLmonobuffer
__GLmonobuffer:
    # Line 801
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,29588
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_monobuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbef0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_monobuffer
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbef0
    nop
    la	$t9,gl_g_monobuffer
.L0f0cbef0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLmonobuffer

# Function: __GLwritepixels
# Declared: Line 802 (Source lines: 802-802)
# Address: 0x0f0cbef8 - 0x0f0cbf3c (Size: 68 bytes, Frame: 0)
.globl __GLwritepixels
.ent __GLwritepixels
__GLwritepixels:
    # Line 802
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,29520
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_writepixels
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbf34
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_writepixels
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbf34
    nop
    la	$t9,gl_g_writepixels
.L0f0cbf34:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwritepixels

# Function: __GLcircs
# Declared: Line 803 (Source lines: 803-803)
# Address: 0x0f0cbf3c - 0x0f0cbff0 (Size: 180 bytes, Frame: 224)
.globl __GLcircs
.ent __GLcircs
__GLcircs:
    # Line 803
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,29452
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cbfbc
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cbfbc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_circs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cbfe8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_circs
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cbfe8
    nop
    la	$t9,gl_g_circs
.L0f0cbfe8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcircs

# Function: __GLstrwidth
# Declared: Line 804 (Source lines: 804-804)
# Address: 0x0f0cbff0 - 0x0f0cc0a4 (Size: 180 bytes, Frame: 224)
.globl __GLstrwidth
.ent __GLstrwidth
__GLstrwidth:
    # Line 804
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,29272
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc070
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc070:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_strwidth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc09c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_strwidth
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc09c
    nop
    la	$t9,gl_g_strwidth
.L0f0cc09c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLstrwidth

# Function: __GLpupmode
# Declared: Line 805 (Source lines: 805-805)
# Address: 0x0f0cc0a4 - 0x0f0cc158 (Size: 180 bytes, Frame: 224)
.globl __GLpupmode
.ent __GLpupmode
__GLpupmode:
    # Line 805
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,29092
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc124
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc124:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_pupmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc150
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pupmode
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc150
    nop
    la	$t9,gl_g_pupmode
.L0f0cc150:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpupmode

# Function: __GLdefpup
# Declared: Line 806 (Source lines: 806-806)
# Address: 0x0f0cc158 - 0x0f0cc20c (Size: 180 bytes, Frame: 224)
.globl __GLdefpup
.ent __GLdefpup
__GLdefpup:
    # Line 806
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,28912
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc1d8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc1d8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_defpup
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc204
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_defpup
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc204
    nop
    la	$t9,gl_g_defpup
.L0f0cc204:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdefpup

# Function: __GLwinattach
# Declared: Line 807 (Source lines: 807-807)
# Address: 0x0f0cc20c - 0x0f0cc2c0 (Size: 180 bytes, Frame: 224)
.globl __GLwinattach
.ent __GLwinattach
__GLwinattach:
    # Line 807
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,28732
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc28c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc28c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winattach
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc2b8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winattach
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc2b8
    nop
    la	$t9,gl_g_winattach
.L0f0cc2b8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinattach

# Function: __GLdefrasterfont
# Declared: Line 808 (Source lines: 808-808)
# Address: 0x0f0cc2c0 - 0x0f0cc374 (Size: 180 bytes, Frame: 224)
.globl __GLdefrasterfont
.ent __GLdefrasterfont
__GLdefrasterfont:
    # Line 808
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,28552
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc340
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc340:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_defrasterfont
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc36c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_defrasterfont
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc36c
    nop
    la	$t9,gl_g_defrasterfont
.L0f0cc36c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdefrasterfont

# Function: __GLgetgconfig
# Declared: Line 809 (Source lines: 809-809)
# Address: 0x0f0cc374 - 0x0f0cc3b8 (Size: 68 bytes, Frame: 0)
.globl __GLgetgconfig
.ent __GLgetgconfig
__GLgetgconfig:
    # Line 809
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,28372
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getgconfig
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc3b0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getgconfig
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc3b0
    nop
    la	$t9,gl_g_getgconfig
.L0f0cc3b0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetgconfig

# Function: __GLacsize
# Declared: Line 810 (Source lines: 810-810)
# Address: 0x0f0cc3b8 - 0x0f0cc46c (Size: 180 bytes, Frame: 224)
.globl __GLacsize
.ent __GLacsize
__GLacsize:
    # Line 810
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,28304
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc438
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc438:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_acsize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc464
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_acsize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc464
    nop
    la	$t9,gl_g_acsize
.L0f0cc464:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLacsize

# Function: __GLgl_rectzoomoffset
# Declared: Line 811 (Source lines: 811-811)
# Address: 0x0f0cc46c - 0x0f0cc4b0 (Size: 68 bytes, Frame: 0)
.globl __GLgl_rectzoomoffset
.ent __GLgl_rectzoomoffset
__GLgl_rectzoomoffset:
    # Line 811
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,28124
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_rectzoomoffset
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc4a8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_rectzoomoffset
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc4a8
    nop
    la	$t9,gl_g_gl_rectzoomoffset
.L0f0cc4a8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_rectzoomoffset

# Function: __GLgetcursor
# Declared: Line 812 (Source lines: 812-812)
# Address: 0x0f0cc4b0 - 0x0f0cc564 (Size: 180 bytes, Frame: 224)
.globl __GLgetcursor
.ent __GLgetcursor
__GLgetcursor:
    # Line 812
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,28056
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc530
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc530:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getcursor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc55c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getcursor
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc55c
    nop
    la	$t9,gl_g_getcursor
.L0f0cc55c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetcursor

# Function: __GLsetvaluator
# Declared: Line 813 (Source lines: 813-813)
# Address: 0x0f0cc564 - 0x0f0cc618 (Size: 180 bytes, Frame: 224)
.globl __GLsetvaluator
.ent __GLsetvaluator
__GLsetvaluator:
    # Line 813
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,27876
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc5e4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc5e4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_setvaluator
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc610
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_setvaluator
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc610
    nop
    la	$t9,gl_g_setvaluator
.L0f0cc610:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLsetvaluator

# Function: __GLlrectread
# Declared: Line 814 (Source lines: 814-814)
# Address: 0x0f0cc618 - 0x0f0cc6cc (Size: 180 bytes, Frame: 224)
.globl __GLlrectread
.ent __GLlrectread
__GLlrectread:
    # Line 814
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,27696
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc698
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc698:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lrectread
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc6c4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lrectread
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc6c4
    nop
    la	$t9,gl_g_lrectread
.L0f0cc6c4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlrectread

# Function: __GLwindepth
# Declared: Line 815 (Source lines: 815-815)
# Address: 0x0f0cc6cc - 0x0f0cc780 (Size: 180 bytes, Frame: 224)
.globl __GLwindepth
.ent __GLwindepth
__GLwindepth:
    # Line 815
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,27516
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc74c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc74c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_windepth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc778
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_windepth
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc778
    nop
    la	$t9,gl_g_windepth
.L0f0cc778:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwindepth

# Function: __GLqdevice
# Declared: Line 816 (Source lines: 816-816)
# Address: 0x0f0cc780 - 0x0f0cc834 (Size: 180 bytes, Frame: 224)
.globl __GLqdevice
.ent __GLqdevice
__GLqdevice:
    # Line 816
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,27336
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc800
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc800:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_qdevice
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc82c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_qdevice
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc82c
    nop
    la	$t9,gl_g_qdevice
.L0f0cc82c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLqdevice

# Function: __GLlstrwidth
# Declared: Line 817 (Source lines: 817-817)
# Address: 0x0f0cc834 - 0x0f0cc8e8 (Size: 180 bytes, Frame: 224)
.globl __GLlstrwidth
.ent __GLlstrwidth
__GLlstrwidth:
    # Line 817
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,27156
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc8b4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc8b4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_lstrwidth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc8e0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_lstrwidth
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc8e0
    nop
    la	$t9,gl_g_lstrwidth
.L0f0cc8e0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlstrwidth

# Function: __GLpwlcurve
# Declared: Line 818 (Source lines: 818-818)
# Address: 0x0f0cc8e8 - 0x0f0cc99c (Size: 180 bytes, Frame: 224)
.globl __GLpwlcurve
.ent __GLpwlcurve
__GLpwlcurve:
    # Line 818
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,26976
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cc968
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cc968:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_pwlcurve
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc994
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_pwlcurve
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc994
    nop
    la	$t9,gl_g_pwlcurve
.L0f0cc994:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpwlcurve

# Function: __GLilbuffer
# Declared: Line 819 (Source lines: 819-819)
# Address: 0x0f0cc99c - 0x0f0cc9e0 (Size: 68 bytes, Frame: 0)
.globl __GLilbuffer
.ent __GLilbuffer
__GLilbuffer:
    # Line 819
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,26796
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_ilbuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cc9d8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_ilbuffer
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cc9d8
    nop
    la	$t9,gl_g_ilbuffer
.L0f0cc9d8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLilbuffer

# Function: __GLswinopen
# Declared: Line 820 (Source lines: 820-820)
# Address: 0x0f0cc9e0 - 0x0f0cca94 (Size: 180 bytes, Frame: 224)
.globl __GLswinopen
.ent __GLswinopen
__GLswinopen:
    # Line 820
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,26728
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cca60
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cca60:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_swinopen
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cca8c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_swinopen
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cca8c
    nop
    la	$t9,gl_g_swinopen
.L0f0cca8c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLswinopen

# Function: __GLgetorigin
# Declared: Line 821 (Source lines: 821-821)
# Address: 0x0f0cca94 - 0x0f0ccb48 (Size: 180 bytes, Frame: 224)
.globl __GLgetorigin
.ent __GLgetorigin
__GLgetorigin:
    # Line 821
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,26548
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ccb14
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ccb14:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getorigin
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ccb40
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getorigin
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ccb40
    nop
    la	$t9,gl_g_getorigin
.L0f0ccb40:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetorigin

# Function: __GLwinposition
# Declared: Line 822 (Source lines: 822-822)
# Address: 0x0f0ccb48 - 0x0f0ccbfc (Size: 180 bytes, Frame: 224)
.globl __GLwinposition
.ent __GLwinposition
__GLwinposition:
    # Line 822
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,26368
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ccbc8
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ccbc8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_winposition
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ccbf4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_winposition
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ccbf4
    nop
    la	$t9,gl_g_winposition
.L0f0ccbf4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLwinposition

# Function: __GLchunksize
# Declared: Line 823 (Source lines: 823-823)
# Address: 0x0f0ccbfc - 0x0f0cccb0 (Size: 180 bytes, Frame: 224)
.globl __GLchunksize
.ent __GLchunksize
__GLchunksize:
    # Line 823
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,26188
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ccc7c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ccc7c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_chunksize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ccca8
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_chunksize
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ccca8
    nop
    la	$t9,gl_g_chunksize
.L0f0ccca8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLchunksize

# Function: __GLcrv
# Declared: Line 824 (Source lines: 824-824)
# Address: 0x0f0cccb0 - 0x0f0ccd64 (Size: 180 bytes, Frame: 224)
.globl __GLcrv
.ent __GLcrv
__GLcrv:
    # Line 824
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,26008
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ccd30
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ccd30:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_crv
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ccd5c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_crv
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ccd5c
    nop
    la	$t9,gl_g_crv
.L0f0ccd5c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcrv

# Function: __GLgetlwidth
# Declared: Line 825 (Source lines: 825-825)
# Address: 0x0f0ccd64 - 0x0f0cce18 (Size: 180 bytes, Frame: 224)
.globl __GLgetlwidth
.ent __GLgetlwidth
__GLgetlwidth:
    # Line 825
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,25828
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ccde4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ccde4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getlwidth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cce10
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getlwidth
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cce10
    nop
    la	$t9,gl_g_getlwidth
.L0f0cce10:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetlwidth

# Function: __GLgetnurbsproperty
# Declared: Line 826 (Source lines: 826-826)
# Address: 0x0f0cce18 - 0x0f0ccecc (Size: 180 bytes, Frame: 224)
.globl __GLgetnurbsproperty
.ent __GLgetnurbsproperty
__GLgetnurbsproperty:
    # Line 826
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,25648
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cce98
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cce98:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getnurbsproperty
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ccec4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getnurbsproperty
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ccec4
    nop
    la	$t9,gl_g_getnurbsproperty
.L0f0ccec4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetnurbsproperty

# Function: __GLdefpattern
# Declared: Line 827 (Source lines: 827-827)
# Address: 0x0f0ccecc - 0x0f0ccf80 (Size: 180 bytes, Frame: 224)
.globl __GLdefpattern
.ent __GLdefpattern
__GLdefpattern:
    # Line 827
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,25468
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ccf4c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0ccf4c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_defpattern
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ccf78
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_defpattern
    lw	$t8,0($t8)
    bnez	$t8,.L0f0ccf78
    nop
    la	$t9,gl_g_defpattern
.L0f0ccf78:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdefpattern

# Function: __GLunderlay
# Declared: Line 828 (Source lines: 828-828)
# Address: 0x0f0ccf80 - 0x0f0cd034 (Size: 180 bytes, Frame: 224)
.globl __GLunderlay
.ent __GLunderlay
__GLunderlay:
    # Line 828
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,25288
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd000
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cd000:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_underlay
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd02c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_underlay
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cd02c
    nop
    la	$t9,gl_g_underlay
.L0f0cd02c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLunderlay

# Function: __GLgetmultisample
# Declared: Line 829 (Source lines: 829-829)
# Address: 0x0f0cd034 - 0x0f0cd078 (Size: 68 bytes, Frame: 0)
.globl __GLgetmultisample
.ent __GLgetmultisample
__GLgetmultisample:
    # Line 829
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,25108
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getmultisample
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd070
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getmultisample
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cd070
    nop
    la	$t9,gl_g_getmultisample
.L0f0cd070:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetmultisample

# Function: __GLgl_ms_init_pixels
# Declared: Line 830 (Source lines: 830-830)
# Address: 0x0f0cd078 - 0x0f0cd0bc (Size: 68 bytes, Frame: 0)
.globl __GLgl_ms_init_pixels
.ent __GLgl_ms_init_pixels
__GLgl_ms_init_pixels:
    # Line 830
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,25040
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_gl_ms_init_pixels
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd0b4
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_gl_ms_init_pixels
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cd0b4
    nop
    la	$t9,gl_g_gl_ms_init_pixels
.L0f0cd0b4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgl_ms_init_pixels

# Function: __GLgetmap
# Declared: Line 831 (Source lines: 831-831)
# Address: 0x0f0cd0bc - 0x0f0cd170 (Size: 180 bytes, Frame: 224)
.globl __GLgetmap
.ent __GLgetmap
__GLgetmap:
    # Line 831
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,24972
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd13c
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cd13c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_getmap
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd168
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_getmap
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cd168
    nop
    la	$t9,gl_g_getmap
.L0f0cd168:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgetmap

# Function: __GLblkqread
# Declared: Line 832 (Source lines: 832-832)
# Address: 0x0f0cd170 - 0x0f0cd224 (Size: 180 bytes, Frame: 224)
.globl __GLblkqread
.ent __GLblkqread
__GLblkqread:
    # Line 832
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,24792
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd1f0
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cd1f0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_blkqread
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd21c
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_blkqread
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cd21c
    nop
    la	$t9,gl_g_blkqread
.L0f0cd21c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLblkqread

# Function: __GLgenobj
# Declared: Line 833 (Source lines: 833-833)
# Address: 0x0f0cd224 - 0x0f0cd2d8 (Size: 180 bytes, Frame: 224)
.globl __GLgenobj
.ent __GLgenobj
__GLgenobj:
    # Line 833
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,24612
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd2a4
    nop
    addiu	$sp,$sp,-96
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
    addiu	$sp,$sp,96
.L0f0cd2a4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_g_genobj
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd2d0
    nop
    la	$t8,gl_dgl_table_is_remote
    la	$t9,gl_d_genobj
    lw	$t8,0($t8)
    bnez	$t8,.L0f0cd2d0
    nop
    la	$t9,gl_g_genobj
.L0f0cd2d0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLgenobj

# Function: __GLnmode
# Declared: Line 846 (Source lines: 846-846)
# Address: 0x0f0cd2d8 - 0x0f0cd38c (Size: 180 bytes, Frame: 224)
.globl __GLnmode
.ent __GLnmode
__GLnmode:
    # Line 846
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,24432
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd354
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd354:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_nmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd380
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_nmode
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd380
    nop
    la	$t9,gl_d_nmode
.L0f0cd380:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLnmode

# Function: __GLcmov2s
# Declared: Line 847 (Source lines: 847-847)
# Address: 0x0f0cd38c - 0x0f0cd440 (Size: 180 bytes, Frame: 224)
.globl __GLcmov2s
.ent __GLcmov2s
__GLcmov2s:
    # Line 847
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,24252
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd408
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd408:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_cmov2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd434
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_cmov2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd434
    nop
    la	$t9,gl_d_cmov2s
.L0f0cd434:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcmov2s

# Function: __GLt4s
# Declared: Line 848 (Source lines: 848-848)
# Address: 0x0f0cd440 - 0x0f0cd484 (Size: 68 bytes, Frame: 0)
.globl __GLt4s
.ent __GLt4s
__GLt4s:
    # Line 848
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,24072
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t4s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd47c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t4s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd47c
    nop
    la	$t9,gl_d_t4s
.L0f0cd47c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt4s

# Function: __GLpnti
# Declared: Line 849 (Source lines: 849-849)
# Address: 0x0f0cd484 - 0x0f0cd538 (Size: 180 bytes, Frame: 224)
.globl __GLpnti
.ent __GLpnti
__GLpnti:
    # Line 849
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,24004
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd500
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd500:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pnti
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd52c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pnti
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd52c
    nop
    la	$t9,gl_d_pnti
.L0f0cd52c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpnti

# Function: __GLpntsmooth
# Declared: Line 850 (Source lines: 850-850)
# Address: 0x0f0cd538 - 0x0f0cd5ec (Size: 180 bytes, Frame: 224)
.globl __GLpntsmooth
.ent __GLpntsmooth
__GLpntsmooth:
    # Line 850
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,23824
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd5b4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd5b4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pntsmooth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd5e0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pntsmooth
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd5e0
    nop
    la	$t9,gl_d_pntsmooth
.L0f0cd5e0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpntsmooth

# Function: __GLpclos
# Declared: Line 851 (Source lines: 851-851)
# Address: 0x0f0cd5ec - 0x0f0cd630 (Size: 68 bytes, Frame: 0)
.globl __GLpclos
.ent __GLpclos
__GLpclos:
    # Line 851
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,23644
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pclos
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd628
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pclos
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd628
    nop
    la	$t9,gl_d_pclos
.L0f0cd628:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpclos

# Function: __GLpolys
# Declared: Line 852 (Source lines: 852-852)
# Address: 0x0f0cd630 - 0x0f0cd6e4 (Size: 180 bytes, Frame: 224)
.globl __GLpolys
.ent __GLpolys
__GLpolys:
    # Line 852
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,23576
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd6ac
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd6ac:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polys
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd6d8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polys
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd6d8
    nop
    la	$t9,gl_d_polys
.L0f0cd6d8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolys

# Function: __GLpolfi
# Declared: Line 853 (Source lines: 853-853)
# Address: 0x0f0cd6e4 - 0x0f0cd798 (Size: 180 bytes, Frame: 224)
.globl __GLpolfi
.ent __GLpolfi
__GLpolfi:
    # Line 853
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,23396
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd760
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd760:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polfi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd78c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polfi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd78c
    nop
    la	$t9,gl_d_polfi
.L0f0cd78c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolfi

# Function: __GLdepthcue
# Declared: Line 854 (Source lines: 854-854)
# Address: 0x0f0cd798 - 0x0f0cd84c (Size: 180 bytes, Frame: 224)
.globl __GLdepthcue
.ent __GLdepthcue
__GLdepthcue:
    # Line 854
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,23216
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd814
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd814:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_depthcue
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd840
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_depthcue
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd840
    nop
    la	$t9,gl_d_depthcue
.L0f0cd840:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLdepthcue

# Function: __GLsboxfi
# Declared: Line 855 (Source lines: 855-855)
# Address: 0x0f0cd84c - 0x0f0cd900 (Size: 180 bytes, Frame: 224)
.globl __GLsboxfi
.ent __GLsboxfi
__GLsboxfi:
    # Line 855
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,23036
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd8c8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd8c8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_sboxfi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd8f4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_sboxfi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd8f4
    nop
    la	$t9,gl_d_sboxfi
.L0f0cd8f4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsboxfi

# Function: __GLzclear
# Declared: Line 856 (Source lines: 856-856)
# Address: 0x0f0cd900 - 0x0f0cd9b4 (Size: 180 bytes, Frame: 224)
.globl __GLzclear
.ent __GLzclear
__GLzclear:
    # Line 856
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,22856
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cd97c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cd97c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_zclear
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cd9a8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_zclear
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cd9a8
    nop
    la	$t9,gl_d_zclear
.L0f0cd9a8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLzclear

# Function: __GLpnts
# Declared: Line 857 (Source lines: 857-857)
# Address: 0x0f0cd9b4 - 0x0f0cda68 (Size: 180 bytes, Frame: 224)
.globl __GLpnts
.ent __GLpnts
__GLpnts:
    # Line 857
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,22676
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cda30
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cda30:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pnts
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cda5c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pnts
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cda5c
    nop
    la	$t9,gl_d_pnts
.L0f0cda5c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpnts

# Function: __GLczclear
# Declared: Line 858 (Source lines: 858-858)
# Address: 0x0f0cda68 - 0x0f0cdb1c (Size: 180 bytes, Frame: 224)
.globl __GLczclear
.ent __GLczclear
__GLczclear:
    # Line 858
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,22496
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cdae4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cdae4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_czclear
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cdb10
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_czclear
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cdb10
    nop
    la	$t9,gl_d_czclear
.L0f0cdb10:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLczclear

# Function: __GLscrsubdivide
# Declared: Line 859 (Source lines: 859-859)
# Address: 0x0f0cdb1c - 0x0f0cdbd0 (Size: 180 bytes, Frame: 224)
.globl __GLscrsubdivide
.ent __GLscrsubdivide
__GLscrsubdivide:
    # Line 859
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,22316
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cdb98
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cdb98:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_scrsubdivide
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cdbc4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_scrsubdivide
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cdbc4
    nop
    la	$t9,gl_d_scrsubdivide
.L0f0cdbc4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLscrsubdivide

# Function: __GLbbox2
# Declared: Line 860 (Source lines: 860-860)
# Address: 0x0f0cdbd0 - 0x0f0cdc84 (Size: 180 bytes, Frame: 224)
.globl __GLbbox2
.ent __GLbbox2
__GLbbox2:
    # Line 860
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,22136
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cdc4c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cdc4c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bbox2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cdc78
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bbox2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cdc78
    nop
    la	$t9,gl_d_bbox2
.L0f0cdc78:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbbox2

# Function: __GLcmov
# Declared: Line 861 (Source lines: 861-861)
# Address: 0x0f0cdc84 - 0x0f0cdd38 (Size: 180 bytes, Frame: 224)
.globl __GLcmov
.ent __GLcmov
__GLcmov:
    # Line 861
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,21956
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cdd00
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cdd00:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_cmov
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cdd2c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_cmov
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cdd2c
    nop
    la	$t9,gl_d_cmov
.L0f0cdd2c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcmov

# Function: __GLzfunction
# Declared: Line 862 (Source lines: 862-862)
# Address: 0x0f0cdd38 - 0x0f0cddec (Size: 180 bytes, Frame: 224)
.globl __GLzfunction
.ent __GLzfunction
__GLzfunction:
    # Line 862
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,21776
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cddb4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cddb4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_zfunction
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cdde0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_zfunction
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cdde0
    nop
    la	$t9,gl_d_zfunction
.L0f0cdde0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLzfunction

# Function: __GLpolfs
# Declared: Line 863 (Source lines: 863-863)
# Address: 0x0f0cddec - 0x0f0cdea0 (Size: 180 bytes, Frame: 224)
.globl __GLpolfs
.ent __GLpolfs
__GLpolfs:
    # Line 863
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,21596
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cde68
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cde68:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polfs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cde94
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polfs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cde94
    nop
    la	$t9,gl_d_polfs
.L0f0cde94:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolfs

# Function: __GLlinewidthf
# Declared: Line 864 (Source lines: 864-864)
# Address: 0x0f0cdea0 - 0x0f0cdf54 (Size: 180 bytes, Frame: 224)
.globl __GLlinewidthf
.ent __GLlinewidthf
__GLlinewidthf:
    # Line 864
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,21416
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cdf1c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cdf1c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_linewidthf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cdf48
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_linewidthf
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cdf48
    nop
    la	$t9,gl_d_linewidthf
.L0f0cdf48:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLlinewidthf

# Function: __GLrpdr
# Declared: Line 865 (Source lines: 865-865)
# Address: 0x0f0cdf54 - 0x0f0cdf98 (Size: 68 bytes, Frame: 0)
.globl __GLrpdr
.ent __GLrpdr
__GLrpdr:
    # Line 865
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,21236
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpdr
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cdf90
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpdr
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cdf90
    nop
    la	$t9,gl_d_rpdr
.L0f0cdf90:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrpdr

# Function: __GLrect
# Declared: Line 866 (Source lines: 866-866)
# Address: 0x0f0cdf98 - 0x0f0ce04c (Size: 180 bytes, Frame: 224)
.globl __GLrect
.ent __GLrect
__GLrect:
    # Line 866
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,21168
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce014
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce014:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rect
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce040
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rect
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce040
    nop
    la	$t9,gl_d_rect
.L0f0ce040:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrect

# Function: __GLsboxfs
# Declared: Line 867 (Source lines: 867-867)
# Address: 0x0f0ce04c - 0x0f0ce100 (Size: 180 bytes, Frame: 224)
.globl __GLsboxfs
.ent __GLsboxfs
__GLsboxfs:
    # Line 867
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,20988
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce0c8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce0c8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_sboxfs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce0f4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_sboxfs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce0f4
    nop
    la	$t9,gl_d_sboxfs
.L0f0ce0f4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsboxfs

# Function: __GLc3f
# Declared: Line 868 (Source lines: 868-868)
# Address: 0x0f0ce100 - 0x0f0ce144 (Size: 68 bytes, Frame: 0)
.globl __GLc3f
.ent __GLc3f
__GLc3f:
    # Line 868
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,20808
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_c3f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce13c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_c3f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce13c
    nop
    la	$t9,gl_d_c3f
.L0f0ce13c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLc3f

# Function: __GLsplf2i
# Declared: Line 869 (Source lines: 869-869)
# Address: 0x0f0ce144 - 0x0f0ce1f8 (Size: 180 bytes, Frame: 224)
.globl __GLsplf2i
.ent __GLsplf2i
__GLsplf2i:
    # Line 869
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,20740
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce1c0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce1c0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_splf2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce1ec
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_splf2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce1ec
    nop
    la	$t9,gl_d_splf2i
.L0f0ce1ec:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsplf2i

# Function: __GLmovei
# Declared: Line 870 (Source lines: 870-870)
# Address: 0x0f0ce1f8 - 0x0f0ce2ac (Size: 180 bytes, Frame: 224)
.globl __GLmovei
.ent __GLmovei
__GLmovei:
    # Line 870
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,20560
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce274
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce274:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_movei
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce2a0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_movei
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce2a0
    nop
    la	$t9,gl_d_movei
.L0f0ce2a0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmovei

# Function: __GLpmv2i
# Declared: Line 871 (Source lines: 871-871)
# Address: 0x0f0ce2ac - 0x0f0ce360 (Size: 180 bytes, Frame: 224)
.globl __GLpmv2i
.ent __GLpmv2i
__GLpmv2i:
    # Line 871
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,20380
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce328
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce328:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pmv2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce354
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pmv2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce354
    nop
    la	$t9,gl_d_pmv2i
.L0f0ce354:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpmv2i

# Function: __GLc3i
# Declared: Line 872 (Source lines: 872-872)
# Address: 0x0f0ce360 - 0x0f0ce3a4 (Size: 68 bytes, Frame: 0)
.globl __GLc3i
.ent __GLc3i
__GLc3i:
    # Line 872
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,20200
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_c3i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce39c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_c3i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce39c
    nop
    la	$t9,gl_d_c3i
.L0f0ce39c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLc3i

# Function: __GLrcrvn
# Declared: Line 873 (Source lines: 873-873)
# Address: 0x0f0ce3a4 - 0x0f0ce458 (Size: 180 bytes, Frame: 224)
.globl __GLrcrvn
.ent __GLrcrvn
__GLrcrvn:
    # Line 873
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,20132
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce420
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce420:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rcrvn
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce44c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rcrvn
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce44c
    nop
    la	$t9,gl_d_rcrvn
.L0f0ce44c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrcrvn

# Function: __GLlmbind
# Declared: Line 874 (Source lines: 874-874)
# Address: 0x0f0ce458 - 0x0f0ce49c (Size: 68 bytes, Frame: 0)
.globl __GLlmbind
.ent __GLlmbind
__GLlmbind:
    # Line 874
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,19952
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_lmbind
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce494
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_lmbind
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce494
    nop
    la	$t9,gl_d_lmbind
.L0f0ce494:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlmbind

# Function: __GLsetpattern
# Declared: Line 875 (Source lines: 875-875)
# Address: 0x0f0ce49c - 0x0f0ce550 (Size: 180 bytes, Frame: 224)
.globl __GLsetpattern
.ent __GLsetpattern
__GLsetpattern:
    # Line 875
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,19884
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce518
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce518:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_setpattern
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce544
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_setpattern
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce544
    nop
    la	$t9,gl_d_setpattern
.L0f0ce544:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsetpattern

# Function: __GLdraw2
# Declared: Line 876 (Source lines: 876-876)
# Address: 0x0f0ce550 - 0x0f0ce594 (Size: 68 bytes, Frame: 0)
.globl __GLdraw2
.ent __GLdraw2
__GLdraw2:
    # Line 876
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,19704
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_draw2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce58c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_draw2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce58c
    nop
    la	$t9,gl_d_draw2
.L0f0ce58c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdraw2

# Function: __GLrmv2
# Declared: Line 877 (Source lines: 877-877)
# Address: 0x0f0ce594 - 0x0f0ce648 (Size: 180 bytes, Frame: 224)
.globl __GLrmv2
.ent __GLrmv2
__GLrmv2:
    # Line 877
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,19636
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce610
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce610:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rmv2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce63c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rmv2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce63c
    nop
    la	$t9,gl_d_rmv2
.L0f0ce63c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrmv2

# Function: __GLsplf2s
# Declared: Line 878 (Source lines: 878-878)
# Address: 0x0f0ce648 - 0x0f0ce6fc (Size: 180 bytes, Frame: 224)
.globl __GLsplf2s
.ent __GLsplf2s
__GLsplf2s:
    # Line 878
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,19456
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce6c4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce6c4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_splf2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce6f0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_splf2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce6f0
    nop
    la	$t9,gl_d_splf2s
.L0f0ce6f0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsplf2s

# Function: __GLbbox2i
# Declared: Line 879 (Source lines: 879-879)
# Address: 0x0f0ce6fc - 0x0f0ce7b0 (Size: 180 bytes, Frame: 224)
.globl __GLbbox2i
.ent __GLbbox2i
__GLbbox2i:
    # Line 879
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,19276
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce778
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce778:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bbox2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce7a4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bbox2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce7a4
    nop
    la	$t9,gl_d_bbox2i
.L0f0ce7a4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbbox2i

# Function: __GLcmovi
# Declared: Line 880 (Source lines: 880-880)
# Address: 0x0f0ce7b0 - 0x0f0ce864 (Size: 180 bytes, Frame: 224)
.globl __GLcmovi
.ent __GLcmovi
__GLcmovi:
    # Line 880
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,19096
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce82c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce82c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_cmovi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce858
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_cmovi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce858
    nop
    la	$t9,gl_d_cmovi
.L0f0ce858:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcmovi

# Function: __GLendqstrip
# Declared: Line 881 (Source lines: 881-881)
# Address: 0x0f0ce864 - 0x0f0ce8a8 (Size: 68 bytes, Frame: 0)
.globl __GLendqstrip
.ent __GLendqstrip
__GLendqstrip:
    # Line 881
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,18916
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_endqstrip
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce8a0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_endqstrip
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce8a0
    nop
    la	$t9,gl_d_endqstrip
.L0f0ce8a0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendqstrip

# Function: __GLcurveit
# Declared: Line 882 (Source lines: 882-882)
# Address: 0x0f0ce8a8 - 0x0f0ce95c (Size: 180 bytes, Frame: 224)
.globl __GLcurveit
.ent __GLcurveit
__GLcurveit:
    # Line 882
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,18848
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce924
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce924:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_curveit
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ce950
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_curveit
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ce950
    nop
    la	$t9,gl_d_curveit
.L0f0ce950:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcurveit

# Function: __GLmoves
# Declared: Line 883 (Source lines: 883-883)
# Address: 0x0f0ce95c - 0x0f0cea10 (Size: 180 bytes, Frame: 224)
.globl __GLmoves
.ent __GLmoves
__GLmoves:
    # Line 883
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,18668
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ce9d8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ce9d8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_moves
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cea04
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_moves
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cea04
    nop
    la	$t9,gl_d_moves
.L0f0cea04:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmoves

# Function: __GLpmv2s
# Declared: Line 884 (Source lines: 884-884)
# Address: 0x0f0cea10 - 0x0f0ceac4 (Size: 180 bytes, Frame: 224)
.globl __GLpmv2s
.ent __GLpmv2s
__GLpmv2s:
    # Line 884
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,18488
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cea8c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cea8c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pmv2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ceab8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pmv2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ceab8
    nop
    la	$t9,gl_d_pmv2s
.L0f0ceab8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpmv2s

# Function: __GLc3s
# Declared: Line 885 (Source lines: 885-885)
# Address: 0x0f0ceac4 - 0x0f0ceb08 (Size: 68 bytes, Frame: 0)
.globl __GLc3s
.ent __GLc3s
__GLc3s:
    # Line 885
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,18308
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_c3s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ceb00
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_c3s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ceb00
    nop
    la	$t9,gl_d_c3s
.L0f0ceb00:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLc3s

# Function: __GLdraw2i
# Declared: Line 886 (Source lines: 886-886)
# Address: 0x0f0ceb08 - 0x0f0ceb4c (Size: 68 bytes, Frame: 0)
.globl __GLdraw2i
.ent __GLdraw2i
__GLdraw2i:
    # Line 886
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,18240
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_draw2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ceb44
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_draw2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ceb44
    nop
    la	$t9,gl_d_draw2i
.L0f0ceb44:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdraw2i

# Function: __GLpixmodef
# Declared: Line 887 (Source lines: 887-887)
# Address: 0x0f0ceb4c - 0x0f0cec00 (Size: 180 bytes, Frame: 224)
.globl __GLpixmodef
.ent __GLpixmodef
__GLpixmodef:
    # Line 887
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,18172
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cebc8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cebc8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pixmodef
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cebf4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pixmodef
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cebf4
    nop
    la	$t9,gl_d_pixmodef
.L0f0cebf4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpixmodef

# Function: __GLrpmv2i
# Declared: Line 888 (Source lines: 888-888)
# Address: 0x0f0cec00 - 0x0f0cecb4 (Size: 180 bytes, Frame: 224)
.globl __GLrpmv2i
.ent __GLrpmv2i
__GLrpmv2i:
    # Line 888
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,17992
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cec7c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cec7c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpmv2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ceca8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpmv2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ceca8
    nop
    la	$t9,gl_d_rpmv2i
.L0f0ceca8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrpmv2i

# Function: __GLleftbuffer
# Declared: Line 889 (Source lines: 889-889)
# Address: 0x0f0cecb4 - 0x0f0ced68 (Size: 180 bytes, Frame: 224)
.globl __GLleftbuffer
.ent __GLleftbuffer
__GLleftbuffer:
    # Line 889
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,17812
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0ced30
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0ced30:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_leftbuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ced5c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_leftbuffer
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ced5c
    nop
    la	$t9,gl_d_leftbuffer
.L0f0ced5c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLleftbuffer

# Function: __GLbbox2s
# Declared: Line 890 (Source lines: 890-890)
# Address: 0x0f0ced68 - 0x0f0cee1c (Size: 180 bytes, Frame: 224)
.globl __GLbbox2s
.ent __GLbbox2s
__GLbbox2s:
    # Line 890
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,17632
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cede4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cede4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bbox2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cee10
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bbox2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cee10
    nop
    la	$t9,gl_d_bbox2s
.L0f0cee10:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbbox2s

# Function: __GLcmovs
# Declared: Line 891 (Source lines: 891-891)
# Address: 0x0f0cee1c - 0x0f0ceed0 (Size: 180 bytes, Frame: 224)
.globl __GLcmovs
.ent __GLcmovs
__GLcmovs:
    # Line 891
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,17452
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cee98
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cee98:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_cmovs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0ceec4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_cmovs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0ceec4
    nop
    la	$t9,gl_d_cmovs
.L0f0ceec4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcmovs

# Function: __GLrpmv2
# Declared: Line 892 (Source lines: 892-892)
# Address: 0x0f0ceed0 - 0x0f0cef84 (Size: 180 bytes, Frame: 224)
.globl __GLrpmv2
.ent __GLrpmv2
__GLrpmv2:
    # Line 892
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,17272
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cef4c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cef4c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpmv2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cef78
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpmv2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cef78
    nop
    la	$t9,gl_d_rpmv2
.L0f0cef78:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrpmv2

# Function: __GLcharstr
# Declared: Line 893 (Source lines: 893-893)
# Address: 0x0f0cef84 - 0x0f0cf038 (Size: 180 bytes, Frame: 224)
.globl __GLcharstr
.ent __GLcharstr
__GLcharstr:
    # Line 893
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,17092
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf000
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf000:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_charstr
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf02c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_charstr
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf02c
    nop
    la	$t9,gl_d_charstr
.L0f0cf02c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcharstr

# Function: __GLdraw2s
# Declared: Line 894 (Source lines: 894-894)
# Address: 0x0f0cf038 - 0x0f0cf07c (Size: 68 bytes, Frame: 0)
.globl __GLdraw2s
.ent __GLdraw2s
__GLdraw2s:
    # Line 894
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,16912
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_draw2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf074
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_draw2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf074
    nop
    la	$t9,gl_d_draw2s
.L0f0cf074:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdraw2s

# Function: __GLpdr
# Declared: Line 895 (Source lines: 895-895)
# Address: 0x0f0cf07c - 0x0f0cf0c0 (Size: 68 bytes, Frame: 0)
.globl __GLpdr
.ent __GLpdr
__GLpdr:
    # Line 895
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,16844
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pdr
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf0b8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pdr
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf0b8
    nop
    la	$t9,gl_d_pdr
.L0f0cf0b8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpdr

# Function: __GLxfpt4i
# Declared: Line 896 (Source lines: 896-896)
# Address: 0x0f0cf0c0 - 0x0f0cf174 (Size: 180 bytes, Frame: 224)
.globl __GLxfpt4i
.ent __GLxfpt4i
__GLxfpt4i:
    # Line 896
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,16776
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf13c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf13c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpt4i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf168
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpt4i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf168
    nop
    la	$t9,gl_d_xfpt4i
.L0f0cf168:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpt4i

# Function: __GLsplf
# Declared: Line 897 (Source lines: 897-897)
# Address: 0x0f0cf174 - 0x0f0cf228 (Size: 180 bytes, Frame: 224)
.globl __GLsplf
.ent __GLsplf
__GLsplf:
    # Line 897
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,16596
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf1f0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf1f0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_splf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf21c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_splf
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf21c
    nop
    la	$t9,gl_d_splf
.L0f0cf21c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsplf

# Function: __GLv2d
# Declared: Line 898 (Source lines: 898-898)
# Address: 0x0f0cf228 - 0x0f0cf26c (Size: 68 bytes, Frame: 0)
.globl __GLv2d
.ent __GLv2d
__GLv2d:
    # Line 898
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,16416
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v2d
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf264
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v2d
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf264
    nop
    la	$t9,gl_d_v2d
.L0f0cf264:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv2d

# Function: __GLrpmv2s
# Declared: Line 899 (Source lines: 899-899)
# Address: 0x0f0cf26c - 0x0f0cf320 (Size: 180 bytes, Frame: 224)
.globl __GLrpmv2s
.ent __GLrpmv2s
__GLrpmv2s:
    # Line 899
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,16348
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf2e8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf2e8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpmv2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf314
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpmv2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf314
    nop
    la	$t9,gl_d_rpmv2s
.L0f0cf314:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrpmv2s

# Function: __GLpolf2i
# Declared: Line 900 (Source lines: 900-900)
# Address: 0x0f0cf320 - 0x0f0cf3d4 (Size: 180 bytes, Frame: 224)
.globl __GLpolf2i
.ent __GLpolf2i
__GLpolf2i:
    # Line 900
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,16168
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf39c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf39c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polf2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf3c8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polf2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf3c8
    nop
    la	$t9,gl_d_polf2i
.L0f0cf3c8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolf2i

# Function: __GLdisplacepolygon
# Declared: Line 901 (Source lines: 901-901)
# Address: 0x0f0cf3d4 - 0x0f0cf488 (Size: 180 bytes, Frame: 224)
.globl __GLdisplacepolygon
.ent __GLdisplacepolygon
__GLdisplacepolygon:
    # Line 901
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,15988
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf450
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf450:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_displacepolygon
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf47c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_displacepolygon
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf47c
    nop
    la	$t9,gl_d_displacepolygon
.L0f0cf47c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLdisplacepolygon

# Function: __GLmove
# Declared: Line 902 (Source lines: 902-902)
# Address: 0x0f0cf488 - 0x0f0cf53c (Size: 180 bytes, Frame: 224)
.globl __GLmove
.ent __GLmove
__GLmove:
    # Line 902
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,15808
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf504
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf504:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_move
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf530
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_move
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf530
    nop
    la	$t9,gl_d_move
.L0f0cf530:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmove

# Function: __GLpmv2
# Declared: Line 903 (Source lines: 903-903)
# Address: 0x0f0cf53c - 0x0f0cf5f0 (Size: 180 bytes, Frame: 224)
.globl __GLpmv2
.ent __GLpmv2
__GLpmv2:
    # Line 903
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,15628
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf5b8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf5b8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pmv2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf5e4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pmv2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf5e4
    nop
    la	$t9,gl_d_pmv2
.L0f0cf5e4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpmv2

# Function: __GLv2f
# Declared: Line 904 (Source lines: 904-904)
# Address: 0x0f0cf5f0 - 0x0f0cf634 (Size: 68 bytes, Frame: 0)
.globl __GLv2f
.ent __GLv2f
__GLv2f:
    # Line 904
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,15448
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v2f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf62c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v2f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf62c
    nop
    la	$t9,gl_d_v2f
.L0f0cf62c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv2f

# Function: __GLrmv
# Declared: Line 905 (Source lines: 905-905)
# Address: 0x0f0cf634 - 0x0f0cf6e8 (Size: 180 bytes, Frame: 224)
.globl __GLrmv
.ent __GLrmv
__GLrmv:
    # Line 905
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,15380
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf6b0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf6b0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rmv
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf6dc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rmv
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf6dc
    nop
    la	$t9,gl_d_rmv
.L0f0cf6dc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrmv

# Function: __GLzsource
# Declared: Line 906 (Source lines: 906-906)
# Address: 0x0f0cf6e8 - 0x0f0cf79c (Size: 180 bytes, Frame: 224)
.globl __GLzsource
.ent __GLzsource
__GLzsource:
    # Line 906
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,15200
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf764
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf764:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_zsource
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf790
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_zsource
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf790
    nop
    la	$t9,gl_d_zsource
.L0f0cf790:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLzsource

# Function: __GLv2i
# Declared: Line 907 (Source lines: 907-907)
# Address: 0x0f0cf79c - 0x0f0cf7e0 (Size: 68 bytes, Frame: 0)
.globl __GLv2i
.ent __GLv2i
__GLv2i:
    # Line 907
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,15020
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf7d8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf7d8
    nop
    la	$t9,gl_d_v2i
.L0f0cf7d8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv2i

# Function: __GLc4f
# Declared: Line 908 (Source lines: 908-908)
# Address: 0x0f0cf7e0 - 0x0f0cf824 (Size: 68 bytes, Frame: 0)
.globl __GLc4f
.ent __GLc4f
__GLc4f:
    # Line 908
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,14952
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_c4f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf81c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_c4f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf81c
    nop
    la	$t9,gl_d_c4f
.L0f0cf81c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLc4f

# Function: __GLswaptmesh
# Declared: Line 909 (Source lines: 909-909)
# Address: 0x0f0cf824 - 0x0f0cf868 (Size: 68 bytes, Frame: 0)
.globl __GLswaptmesh
.ent __GLswaptmesh
__GLswaptmesh:
    # Line 909
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,14884
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_swaptmesh
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf860
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_swaptmesh
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf860
    nop
    la	$t9,gl_d_swaptmesh
.L0f0cf860:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLswaptmesh

# Function: __GLc4i
# Declared: Line 910 (Source lines: 910-910)
# Address: 0x0f0cf868 - 0x0f0cf8ac (Size: 68 bytes, Frame: 0)
.globl __GLc4i
.ent __GLc4i
__GLc4i:
    # Line 910
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,14816
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_c4i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf8a4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_c4i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf8a4
    nop
    la	$t9,gl_d_c4i
.L0f0cf8a4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLc4i

# Function: __GLswapbuffers
# Declared: Line 911 (Source lines: 911-911)
# Address: 0x0f0cf8ac - 0x0f0cf960 (Size: 180 bytes, Frame: 224)
.globl __GLswapbuffers
.ent __GLswapbuffers
__GLswapbuffers:
    # Line 911
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,14748
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf928
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf928:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_swapbuffers
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cf954
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_swapbuffers
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cf954
    nop
    la	$t9,gl_d_swapbuffers
.L0f0cf954:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLswapbuffers

# Function: __GLscrbox
# Declared: Line 912 (Source lines: 912-912)
# Address: 0x0f0cf960 - 0x0f0cfa14 (Size: 180 bytes, Frame: 224)
.globl __GLscrbox
.ent __GLscrbox
__GLscrbox:
    # Line 912
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,14568
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cf9dc
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cf9dc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_scrbox
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfa08
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_scrbox
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfa08
    nop
    la	$t9,gl_d_scrbox
.L0f0cfa08:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLscrbox

# Function: __GLxfpt4s
# Declared: Line 913 (Source lines: 913-913)
# Address: 0x0f0cfa14 - 0x0f0cfac8 (Size: 180 bytes, Frame: 224)
.globl __GLxfpt4s
.ent __GLxfpt4s
__GLxfpt4s:
    # Line 913
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,14388
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cfa90
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cfa90:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpt4s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfabc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpt4s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfabc
    nop
    la	$t9,gl_d_xfpt4s
.L0f0cfabc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpt4s

# Function: __GLpolf2s
# Declared: Line 914 (Source lines: 914-914)
# Address: 0x0f0cfac8 - 0x0f0cfb7c (Size: 180 bytes, Frame: 224)
.globl __GLpolf2s
.ent __GLpolf2s
__GLpolf2s:
    # Line 914
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,14208
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cfb44
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cfb44:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polf2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfb70
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polf2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfb70
    nop
    la	$t9,gl_d_polf2s
.L0f0cfb70:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolf2s

# Function: __GLrdr2
# Declared: Line 915 (Source lines: 915-915)
# Address: 0x0f0cfb7c - 0x0f0cfbc0 (Size: 68 bytes, Frame: 0)
.globl __GLrdr2
.ent __GLrdr2
__GLrdr2:
    # Line 915
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,14028
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rdr2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfbb8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rdr2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfbb8
    nop
    la	$t9,gl_d_rdr2
.L0f0cfbb8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrdr2

# Function: __GLstencil
# Declared: Line 916 (Source lines: 916-916)
# Address: 0x0f0cfbc0 - 0x0f0cfc74 (Size: 180 bytes, Frame: 224)
.globl __GLstencil
.ent __GLstencil
__GLstencil:
    # Line 916
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,13960
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cfc3c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cfc3c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_stencil
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfc68
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_stencil
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfc68
    nop
    la	$t9,gl_d_stencil
.L0f0cfc68:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLstencil

# Function: __GLpatchcurves
# Declared: Line 917 (Source lines: 917-917)
# Address: 0x0f0cfc74 - 0x0f0cfd28 (Size: 180 bytes, Frame: 224)
.globl __GLpatchcurves
.ent __GLpatchcurves
__GLpatchcurves:
    # Line 917
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,13780
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cfcf0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cfcf0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_patchcurves
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfd1c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_patchcurves
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfd1c
    nop
    la	$t9,gl_d_patchcurves
.L0f0cfd1c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpatchcurves

# Function: __GLpdr2i
# Declared: Line 918 (Source lines: 918-918)
# Address: 0x0f0cfd28 - 0x0f0cfd6c (Size: 68 bytes, Frame: 0)
.globl __GLpdr2i
.ent __GLpdr2i
__GLpdr2i:
    # Line 918
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,13600
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pdr2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfd64
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pdr2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfd64
    nop
    la	$t9,gl_d_pdr2i
.L0f0cfd64:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpdr2i

# Function: __GLpntsizef
# Declared: Line 919 (Source lines: 919-919)
# Address: 0x0f0cfd6c - 0x0f0cfe20 (Size: 180 bytes, Frame: 224)
.globl __GLpntsizef
.ent __GLpntsizef
__GLpntsizef:
    # Line 919
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,13532
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cfde8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cfde8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pntsizef
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfe14
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pntsizef
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfe14
    nop
    la	$t9,gl_d_pntsizef
.L0f0cfe14:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpntsizef

# Function: __GLpntsize
# Declared: Line 920 (Source lines: 920-920)
# Address: 0x0f0cfe20 - 0x0f0cfed4 (Size: 180 bytes, Frame: 224)
.globl __GLpntsize
.ent __GLpntsize
__GLpntsize:
    # Line 920
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,13352
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cfe9c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cfe9c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pntsize
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cfec8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pntsize
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cfec8
    nop
    la	$t9,gl_d_pntsize
.L0f0cfec8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpntsize

# Function: __GLv2s
# Declared: Line 921 (Source lines: 921-921)
# Address: 0x0f0cfed4 - 0x0f0cff18 (Size: 68 bytes, Frame: 0)
.globl __GLv2s
.ent __GLv2s
__GLv2s:
    # Line 921
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,13172
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cff10
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cff10
    nop
    la	$t9,gl_d_v2s
.L0f0cff10:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv2s

# Function: __GLendpolygon
# Declared: Line 922 (Source lines: 922-922)
# Address: 0x0f0cff18 - 0x0f0cff5c (Size: 68 bytes, Frame: 0)
.globl __GLendpolygon
.ent __GLendpolygon
__GLendpolygon:
    # Line 922
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,13104
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_endpolygon
    lw	$t2,0($t2)
    bnez	$t2,.L0f0cff54
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_endpolygon
    lw	$t3,0($t3)
    bnez	$t3,.L0f0cff54
    nop
    la	$t9,gl_d_endpolygon
.L0f0cff54:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendpolygon

# Function: __GLfrontbuffer
# Declared: Line 923 (Source lines: 923-923)
# Address: 0x0f0cff5c - 0x0f0d0010 (Size: 180 bytes, Frame: 224)
.globl __GLfrontbuffer
.ent __GLfrontbuffer
__GLfrontbuffer:
    # Line 923
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,13036
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0cffd8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0cffd8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_frontbuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0004
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_frontbuffer
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0004
    nop
    la	$t9,gl_d_frontbuffer
.L0f0d0004:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLfrontbuffer

# Function: __GLc4s
# Declared: Line 924 (Source lines: 924-924)
# Address: 0x0f0d0010 - 0x0f0d0054 (Size: 68 bytes, Frame: 0)
.globl __GLc4s
.ent __GLc4s
__GLc4s:
    # Line 924
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,12856
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_c4s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d004c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_c4s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d004c
    nop
    la	$t9,gl_d_c4s
.L0f0d004c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLc4s

# Function: __GLrmv2i
# Declared: Line 925 (Source lines: 925-925)
# Address: 0x0f0d0054 - 0x0f0d0108 (Size: 180 bytes, Frame: 224)
.globl __GLrmv2i
.ent __GLrmv2i
__GLrmv2i:
    # Line 925
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,12788
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d00d0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d00d0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rmv2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d00fc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rmv2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d00fc
    nop
    la	$t9,gl_d_rmv2i
.L0f0d00fc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrmv2i

# Function: __GLlinewidth
# Declared: Line 926 (Source lines: 926-926)
# Address: 0x0f0d0108 - 0x0f0d01bc (Size: 180 bytes, Frame: 224)
.globl __GLlinewidth
.ent __GLlinewidth
__GLlinewidth:
    # Line 926
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,12608
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0184
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0184:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_linewidth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d01b0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_linewidth
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d01b0
    nop
    la	$t9,gl_d_linewidth
.L0f0d01b0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLlinewidth

# Function: __GLpopmatrix
# Declared: Line 927 (Source lines: 927-927)
# Address: 0x0f0d01bc - 0x0f0d0270 (Size: 180 bytes, Frame: 224)
.globl __GLpopmatrix
.ent __GLpopmatrix
__GLpopmatrix:
    # Line 927
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,12428
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0238
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0238:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_popmatrix
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0264
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_popmatrix
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0264
    nop
    la	$t9,gl_d_popmatrix
.L0f0d0264:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpopmatrix

# Function: __GLrpdr2
# Declared: Line 928 (Source lines: 928-928)
# Address: 0x0f0d0270 - 0x0f0d02b4 (Size: 68 bytes, Frame: 0)
.globl __GLrpdr2
.ent __GLrpdr2
__GLrpdr2:
    # Line 928
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,12248
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpdr2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d02ac
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpdr2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d02ac
    nop
    la	$t9,gl_d_rpdr2
.L0f0d02ac:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrpdr2

# Function: __GLpatchbasis
# Declared: Line 929 (Source lines: 929-929)
# Address: 0x0f0d02b4 - 0x0f0d0368 (Size: 180 bytes, Frame: 224)
.globl __GLpatchbasis
.ent __GLpatchbasis
__GLpatchbasis:
    # Line 929
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,12180
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0330
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0330:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_patchbasis
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d035c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_patchbasis
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d035c
    nop
    la	$t9,gl_d_patchbasis
.L0f0d035c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpatchbasis

# Function: __GLcurvebasis
# Declared: Line 930 (Source lines: 930-930)
# Address: 0x0f0d0368 - 0x0f0d041c (Size: 180 bytes, Frame: 224)
.globl __GLcurvebasis
.ent __GLcurvebasis
__GLcurvebasis:
    # Line 930
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,12000
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d03e4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d03e4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_curvebasis
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0410
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_curvebasis
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0410
    nop
    la	$t9,gl_d_curvebasis
.L0f0d0410:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcurvebasis

# Function: __GLpdr2s
# Declared: Line 931 (Source lines: 931-931)
# Address: 0x0f0d041c - 0x0f0d0460 (Size: 68 bytes, Frame: 0)
.globl __GLpdr2s
.ent __GLpdr2s
__GLpdr2s:
    # Line 931
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,11820
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pdr2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0458
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pdr2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0458
    nop
    la	$t9,gl_d_pdr2s
.L0f0d0458:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpdr2s

# Function: __GLendclosedline
# Declared: Line 932 (Source lines: 932-932)
# Address: 0x0f0d0460 - 0x0f0d04a4 (Size: 68 bytes, Frame: 0)
.globl __GLendclosedline
.ent __GLendclosedline
__GLendclosedline:
    # Line 932
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,11752
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_endclosedline
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d049c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_endclosedline
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d049c
    nop
    la	$t9,gl_d_endclosedline
.L0f0d049c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendclosedline

# Function: __GLrpdr2i
# Declared: Line 933 (Source lines: 933-933)
# Address: 0x0f0d04a4 - 0x0f0d04e8 (Size: 68 bytes, Frame: 0)
.globl __GLrpdr2i
.ent __GLrpdr2i
__GLrpdr2i:
    # Line 933
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,11684
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpdr2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d04e0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpdr2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d04e0
    nop
    la	$t9,gl_d_rpdr2i
.L0f0d04e0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrpdr2i

# Function: __GLrmv2s
# Declared: Line 934 (Source lines: 934-934)
# Address: 0x0f0d04e8 - 0x0f0d059c (Size: 180 bytes, Frame: 224)
.globl __GLrmv2s
.ent __GLrmv2s
__GLrmv2s:
    # Line 934
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,11616
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0564
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0564:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rmv2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0590
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rmv2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0590
    nop
    la	$t9,gl_d_rmv2s
.L0f0d0590:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrmv2s

# Function: __GLpdr2
# Declared: Line 935 (Source lines: 935-935)
# Address: 0x0f0d059c - 0x0f0d05e0 (Size: 68 bytes, Frame: 0)
.globl __GLpdr2
.ent __GLpdr2
__GLpdr2:
    # Line 935
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,11436
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pdr2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d05d8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pdr2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d05d8
    nop
    la	$t9,gl_d_pdr2
.L0f0d05d8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpdr2

# Function: __GLfrontface
# Declared: Line 936 (Source lines: 936-936)
# Address: 0x0f0d05e0 - 0x0f0d0694 (Size: 180 bytes, Frame: 224)
.globl __GLfrontface
.ent __GLfrontface
__GLfrontface:
    # Line 936
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,11368
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d065c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d065c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_frontface
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0688
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_frontface
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0688
    nop
    la	$t9,gl_d_frontface
.L0f0d0688:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLfrontface

# Function: __GLtranslate
# Declared: Line 937 (Source lines: 937-937)
# Address: 0x0f0d0694 - 0x0f0d0748 (Size: 180 bytes, Frame: 224)
.globl __GLtranslate
.ent __GLtranslate
__GLtranslate:
    # Line 937
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,11188
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0710
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0710:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_translate
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d073c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_translate
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d073c
    nop
    la	$t9,gl_d_translate
.L0f0d073c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLtranslate

# Function: __GLv3d
# Declared: Line 938 (Source lines: 938-938)
# Address: 0x0f0d0748 - 0x0f0d078c (Size: 68 bytes, Frame: 0)
.globl __GLv3d
.ent __GLv3d
__GLv3d:
    # Line 938
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,11008
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v3d
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0784
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v3d
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0784
    nop
    la	$t9,gl_d_v3d
.L0f0d0784:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv3d

# Function: __GLnormal
# Declared: Line 939 (Source lines: 939-939)
# Address: 0x0f0d078c - 0x0f0d07d0 (Size: 68 bytes, Frame: 0)
.globl __GLnormal
.ent __GLnormal
__GLnormal:
    # Line 939
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,10940
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_normal
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d07c8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_normal
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d07c8
    nop
    la	$t9,gl_d_normal
.L0f0d07c8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLnormal

# Function: __GLfont
# Declared: Line 940 (Source lines: 940-940)
# Address: 0x0f0d07d0 - 0x0f0d0884 (Size: 180 bytes, Frame: 224)
.globl __GLfont
.ent __GLfont
__GLfont:
    # Line 940
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,10872
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d084c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d084c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_font
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0878
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_font
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0878
    nop
    la	$t9,gl_d_font
.L0f0d0878:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLfont

# Function: __GLloadmatrix
# Declared: Line 941 (Source lines: 941-941)
# Address: 0x0f0d0884 - 0x0f0d0938 (Size: 180 bytes, Frame: 224)
.globl __GLloadmatrix
.ent __GLloadmatrix
__GLloadmatrix:
    # Line 941
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,10692
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0900
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0900:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_loadmatrix
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d092c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_loadmatrix
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d092c
    nop
    la	$t9,gl_d_loadmatrix
.L0f0d092c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLloadmatrix

# Function: __GLmmode
# Declared: Line 942 (Source lines: 942-942)
# Address: 0x0f0d0938 - 0x0f0d09ec (Size: 180 bytes, Frame: 224)
.globl __GLmmode
.ent __GLmmode
__GLmmode:
    # Line 942
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,10512
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d09b4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d09b4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_mmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d09e0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_mmode
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d09e0
    nop
    la	$t9,gl_d_mmode
.L0f0d09e0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmmode

# Function: __GLxfpt2
# Declared: Line 943 (Source lines: 943-943)
# Address: 0x0f0d09ec - 0x0f0d0aa0 (Size: 180 bytes, Frame: 224)
.globl __GLxfpt2
.ent __GLxfpt2
__GLxfpt2:
    # Line 943
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,10332
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0a68
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0a68:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpt2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0a94
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpt2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0a94
    nop
    la	$t9,gl_d_xfpt2
.L0f0d0a94:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpt2

# Function: __GLtexgen
# Declared: Line 944 (Source lines: 944-944)
# Address: 0x0f0d0aa0 - 0x0f0d0b54 (Size: 180 bytes, Frame: 224)
.globl __GLtexgen
.ent __GLtexgen
__GLtexgen:
    # Line 944
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,10152
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0b1c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0b1c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_texgen
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0b48
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_texgen
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0b48
    nop
    la	$t9,gl_d_texgen
.L0f0d0b48:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLtexgen

# Function: __GLv3f
# Declared: Line 945 (Source lines: 945-945)
# Address: 0x0f0d0b54 - 0x0f0d0b98 (Size: 68 bytes, Frame: 0)
.globl __GLv3f
.ent __GLv3f
__GLv3f:
    # Line 945
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,9972
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v3f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0b90
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v3f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0b90
    nop
    la	$t9,gl_d_v3f
.L0f0d0b90:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv3f

# Function: __GLmsmask
# Declared: Line 946 (Source lines: 946-946)
# Address: 0x0f0d0b98 - 0x0f0d0c4c (Size: 180 bytes, Frame: 224)
.globl __GLmsmask
.ent __GLmsmask
__GLmsmask:
    # Line 946
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,9904
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0c14
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0c14:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_msmask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0c40
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_msmask
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0c40
    nop
    la	$t9,gl_d_msmask
.L0f0d0c40:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmsmask

# Function: __GLxfpt4
# Declared: Line 947 (Source lines: 947-947)
# Address: 0x0f0d0c4c - 0x0f0d0d00 (Size: 180 bytes, Frame: 224)
.globl __GLxfpt4
.ent __GLxfpt4
__GLxfpt4:
    # Line 947
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,9724
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0cc8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0cc8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpt4
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0cf4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpt4
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0cf4
    nop
    la	$t9,gl_d_xfpt4
.L0f0d0cf4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpt4

# Function: __GLsetlinestyle
# Declared: Line 948 (Source lines: 948-948)
# Address: 0x0f0d0d00 - 0x0f0d0db4 (Size: 180 bytes, Frame: 224)
.globl __GLsetlinestyle
.ent __GLsetlinestyle
__GLsetlinestyle:
    # Line 948
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,9544
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0d7c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0d7c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_setlinestyle
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0da8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_setlinestyle
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0da8
    nop
    la	$t9,gl_d_setlinestyle
.L0f0d0da8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsetlinestyle

# Function: __GLrightbuffer
# Declared: Line 949 (Source lines: 949-949)
# Address: 0x0f0d0db4 - 0x0f0d0e68 (Size: 180 bytes, Frame: 224)
.globl __GLrightbuffer
.ent __GLrightbuffer
__GLrightbuffer:
    # Line 949
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,9364
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0e30
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0e30:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rightbuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0e5c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rightbuffer
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0e5c
    nop
    la	$t9,gl_d_rightbuffer
.L0f0d0e5c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrightbuffer

# Function: __GLv3i
# Declared: Line 950 (Source lines: 950-950)
# Address: 0x0f0d0e68 - 0x0f0d0eac (Size: 68 bytes, Frame: 0)
.globl __GLv3i
.ent __GLv3i
__GLv3i:
    # Line 950
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,9184
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v3i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0ea4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v3i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0ea4
    nop
    la	$t9,gl_d_v3i
.L0f0d0ea4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv3i

# Function: __GLpopname
# Declared: Line 951 (Source lines: 951-951)
# Address: 0x0f0d0eac - 0x0f0d0f60 (Size: 180 bytes, Frame: 224)
.globl __GLpopname
.ent __GLpopname
__GLpopname:
    # Line 951
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,9116
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d0f28
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d0f28:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_popname
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0f54
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_popname
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0f54
    nop
    la	$t9,gl_d_popname
.L0f0d0f54:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpopname

# Function: __GLendpoint
# Declared: Line 952 (Source lines: 952-952)
# Address: 0x0f0d0f60 - 0x0f0d0fa4 (Size: 68 bytes, Frame: 0)
.globl __GLendpoint
.ent __GLendpoint
__GLendpoint:
    # Line 952
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,8936
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_endpoint
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0f9c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_endpoint
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0f9c
    nop
    la	$t9,gl_d_endpoint
.L0f0d0f9c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendpoint

# Function: __GLrpdr2s
# Declared: Line 953 (Source lines: 953-953)
# Address: 0x0f0d0fa4 - 0x0f0d0fe8 (Size: 68 bytes, Frame: 0)
.globl __GLrpdr2s
.ent __GLrpdr2s
__GLrpdr2s:
    # Line 953
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,8868
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpdr2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d0fe0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpdr2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d0fe0
    nop
    la	$t9,gl_d_rpdr2s
.L0f0d0fe0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrpdr2s

# Function: __GLdrawi
# Declared: Line 954 (Source lines: 954-954)
# Address: 0x0f0d0fe8 - 0x0f0d102c (Size: 68 bytes, Frame: 0)
.globl __GLdrawi
.ent __GLdrawi
__GLdrawi:
    # Line 954
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,8800
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_drawi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1024
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_drawi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1024
    nop
    la	$t9,gl_d_drawi
.L0f0d1024:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdrawi

# Function: __GLendtmesh
# Declared: Line 955 (Source lines: 955-955)
# Address: 0x0f0d102c - 0x0f0d1070 (Size: 68 bytes, Frame: 0)
.globl __GLendtmesh
.ent __GLendtmesh
__GLendtmesh:
    # Line 955
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,8732
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_endtmesh
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1068
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_endtmesh
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1068
    nop
    la	$t9,gl_d_endtmesh
.L0f0d1068:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendtmesh

# Function: __GLpatchprecision
# Declared: Line 956 (Source lines: 956-956)
# Address: 0x0f0d1070 - 0x0f0d1124 (Size: 180 bytes, Frame: 224)
.globl __GLpatchprecision
.ent __GLpatchprecision
__GLpatchprecision:
    # Line 956
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,8664
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d10ec
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d10ec:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_patchprecision
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1118
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_patchprecision
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1118
    nop
    la	$t9,gl_d_patchprecision
.L0f0d1118:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpatchprecision

# Function: __GLrmvi
# Declared: Line 957 (Source lines: 957-957)
# Address: 0x0f0d1124 - 0x0f0d11d8 (Size: 180 bytes, Frame: 224)
.globl __GLrmvi
.ent __GLrmvi
__GLrmvi:
    # Line 957
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,8484
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d11a0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d11a0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rmvi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d11cc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rmvi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d11cc
    nop
    la	$t9,gl_d_rmvi
.L0f0d11cc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrmvi

# Function: __GLrectfi
# Declared: Line 958 (Source lines: 958-958)
# Address: 0x0f0d11d8 - 0x0f0d128c (Size: 180 bytes, Frame: 224)
.globl __GLrectfi
.ent __GLrectfi
__GLrectfi:
    # Line 958
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,8304
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1254
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1254:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rectfi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1280
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rectfi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1280
    nop
    la	$t9,gl_d_rectfi
.L0f0d1280:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrectfi

# Function: __GLscale
# Declared: Line 959 (Source lines: 959-959)
# Address: 0x0f0d128c - 0x0f0d1340 (Size: 180 bytes, Frame: 224)
.globl __GLscale
.ent __GLscale
__GLscale:
    # Line 959
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,8124
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1308
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1308:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_scale
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1334
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_scale
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1334
    nop
    la	$t9,gl_d_scale
.L0f0d1334:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLscale

# Function: __GLshademodel
# Declared: Line 960 (Source lines: 960-960)
# Address: 0x0f0d1340 - 0x0f0d13f4 (Size: 180 bytes, Frame: 224)
.globl __GLshademodel
.ent __GLshademodel
__GLshademodel:
    # Line 960
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,7944
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d13bc
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d13bc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_shademodel
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d13e8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_shademodel
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d13e8
    nop
    la	$t9,gl_d_shademodel
.L0f0d13e8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLshademodel

# Function: __GLbackface
# Declared: Line 961 (Source lines: 961-961)
# Address: 0x0f0d13f4 - 0x0f0d14a8 (Size: 180 bytes, Frame: 224)
.globl __GLbackface
.ent __GLbackface
__GLbackface:
    # Line 961
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,7764
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1470
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1470:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_backface
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d149c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_backface
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d149c
    nop
    la	$t9,gl_d_backface
.L0f0d149c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbackface

# Function: __GLpnt2i
# Declared: Line 962 (Source lines: 962-962)
# Address: 0x0f0d14a8 - 0x0f0d155c (Size: 180 bytes, Frame: 224)
.globl __GLpnt2i
.ent __GLpnt2i
__GLpnt2i:
    # Line 962
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,7584
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1524
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1524:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pnt2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1550
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pnt2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1550
    nop
    la	$t9,gl_d_pnt2i
.L0f0d1550:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpnt2i

# Function: __GLv3s
# Declared: Line 963 (Source lines: 963-963)
# Address: 0x0f0d155c - 0x0f0d15a0 (Size: 68 bytes, Frame: 0)
.globl __GLv3s
.ent __GLv3s
__GLv3s:
    # Line 963
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,7404
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v3s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1598
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v3s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1598
    nop
    la	$t9,gl_d_v3s
.L0f0d1598:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv3s

# Function: __GLlcharstr
# Declared: Line 964 (Source lines: 964-964)
# Address: 0x0f0d15a0 - 0x0f0d1654 (Size: 180 bytes, Frame: 224)
.globl __GLlcharstr
.ent __GLlcharstr
__GLlcharstr:
    # Line 964
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,7336
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d161c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d161c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_lcharstr
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1648
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_lcharstr
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1648
    nop
    la	$t9,gl_d_lcharstr
.L0f0d1648:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLlcharstr

# Function: __GLcurveprecision
# Declared: Line 965 (Source lines: 965-965)
# Address: 0x0f0d1654 - 0x0f0d1708 (Size: 180 bytes, Frame: 224)
.globl __GLcurveprecision
.ent __GLcurveprecision
__GLcurveprecision:
    # Line 965
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,7156
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d16d0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d16d0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_curveprecision
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d16fc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_curveprecision
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d16fc
    nop
    la	$t9,gl_d_curveprecision
.L0f0d16fc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcurveprecision

# Function: __GLdraws
# Declared: Line 966 (Source lines: 966-966)
# Address: 0x0f0d1708 - 0x0f0d174c (Size: 68 bytes, Frame: 0)
.globl __GLdraws
.ent __GLdraws
__GLdraws:
    # Line 966
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,6976
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_draws
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1744
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_draws
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1744
    nop
    la	$t9,gl_d_draws
.L0f0d1744:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdraws

# Function: __GLrmvs
# Declared: Line 967 (Source lines: 967-967)
# Address: 0x0f0d174c - 0x0f0d1800 (Size: 180 bytes, Frame: 224)
.globl __GLrmvs
.ent __GLrmvs
__GLrmvs:
    # Line 967
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,6908
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d17c8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d17c8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rmvs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d17f4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rmvs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d17f4
    nop
    la	$t9,gl_d_rmvs
.L0f0d17f4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrmvs

# Function: __GLblendfunction
# Declared: Line 968 (Source lines: 968-968)
# Address: 0x0f0d1800 - 0x0f0d18b4 (Size: 180 bytes, Frame: 224)
.globl __GLblendfunction
.ent __GLblendfunction
__GLblendfunction:
    # Line 968
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,6728
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d187c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d187c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_blendfunction
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d18a8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_blendfunction
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d18a8
    nop
    la	$t9,gl_d_blendfunction
.L0f0d18a8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLblendfunction

# Function: __GLbgnpolygon
# Declared: Line 969 (Source lines: 969-969)
# Address: 0x0f0d18b4 - 0x0f0d1968 (Size: 180 bytes, Frame: 224)
.globl __GLbgnpolygon
.ent __GLbgnpolygon
__GLbgnpolygon:
    # Line 969
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,6548
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1930
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1930:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bgnpolygon
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d195c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bgnpolygon
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d195c
    nop
    la	$t9,gl_d_bgnpolygon
.L0f0d195c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbgnpolygon

# Function: __GLrectfs
# Declared: Line 970 (Source lines: 970-970)
# Address: 0x0f0d1968 - 0x0f0d1a1c (Size: 180 bytes, Frame: 224)
.globl __GLrectfs
.ent __GLrectfs
__GLrectfs:
    # Line 970
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,6368
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d19e4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d19e4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rectfs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1a10
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rectfs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1a10
    nop
    la	$t9,gl_d_rectfs
.L0f0d1a10:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrectfs

# Function: __GLmultmatrix
# Declared: Line 971 (Source lines: 971-971)
# Address: 0x0f0d1a1c - 0x0f0d1ad0 (Size: 180 bytes, Frame: 224)
.globl __GLmultmatrix
.ent __GLmultmatrix
__GLmultmatrix:
    # Line 971
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,6188
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1a98
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1a98:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_multmatrix
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1ac4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_multmatrix
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1ac4
    nop
    la	$t9,gl_d_multmatrix
.L0f0d1ac4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmultmatrix

# Function: __GLrpmvi
# Declared: Line 972 (Source lines: 972-972)
# Address: 0x0f0d1ad0 - 0x0f0d1b84 (Size: 180 bytes, Frame: 224)
.globl __GLrpmvi
.ent __GLrpmvi
__GLrpmvi:
    # Line 972
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,6008
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1b4c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1b4c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpmvi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1b78
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpmvi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1b78
    nop
    la	$t9,gl_d_rpmvi
.L0f0d1b78:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrpmvi

# Function: __GLpassthrough
# Declared: Line 973 (Source lines: 973-973)
# Address: 0x0f0d1b84 - 0x0f0d1c38 (Size: 180 bytes, Frame: 224)
.globl __GLpassthrough
.ent __GLpassthrough
__GLpassthrough:
    # Line 973
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,5828
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1c00
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1c00:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_passthrough
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1c2c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_passthrough
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1c2c
    nop
    la	$t9,gl_d_passthrough
.L0f0d1c2c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpassthrough

# Function: __GLRGBcolor
# Declared: Line 974 (Source lines: 974-974)
# Address: 0x0f0d1c38 - 0x0f0d1c7c (Size: 68 bytes, Frame: 0)
.globl __GLRGBcolor
.ent __GLRGBcolor
__GLRGBcolor:
    # Line 974
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,5648
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_RGBcolor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1c74
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_RGBcolor
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1c74
    nop
    la	$t9,gl_d_RGBcolor
.L0f0d1c74:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLRGBcolor

# Function: __GLrpmv
# Declared: Line 975 (Source lines: 975-975)
# Address: 0x0f0d1c7c - 0x0f0d1d30 (Size: 180 bytes, Frame: 224)
.globl __GLrpmv
.ent __GLrpmv
__GLrpmv:
    # Line 975
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,5580
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1cf8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1cf8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpmv
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1d24
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpmv
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1d24
    nop
    la	$t9,gl_d_rpmv
.L0f0d1d24:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrpmv

# Function: __GLbackbuffer
# Declared: Line 976 (Source lines: 976-976)
# Address: 0x0f0d1d30 - 0x0f0d1de4 (Size: 180 bytes, Frame: 224)
.globl __GLbackbuffer
.ent __GLbackbuffer
__GLbackbuffer:
    # Line 976
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,5400
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1dac
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1dac:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_backbuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1dd8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_backbuffer
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1dd8
    nop
    la	$t9,gl_d_backbuffer
.L0f0d1dd8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbackbuffer

# Function: __GLpnt2s
# Declared: Line 977 (Source lines: 977-977)
# Address: 0x0f0d1de4 - 0x0f0d1e98 (Size: 180 bytes, Frame: 224)
.globl __GLpnt2s
.ent __GLpnt2s
__GLpnt2s:
    # Line 977
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,5220
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1e60
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1e60:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pnt2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1e8c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pnt2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1e8c
    nop
    la	$t9,gl_d_pnt2s
.L0f0d1e8c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpnt2s

# Function: __GLrdr2i
# Declared: Line 978 (Source lines: 978-978)
# Address: 0x0f0d1e98 - 0x0f0d1edc (Size: 68 bytes, Frame: 0)
.globl __GLrdr2i
.ent __GLrdr2i
__GLrdr2i:
    # Line 978
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,5040
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rdr2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1ed4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rdr2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1ed4
    nop
    la	$t9,gl_d_rdr2i
.L0f0d1ed4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrdr2i

# Function: __GLmsalpha
# Declared: Line 979 (Source lines: 979-979)
# Address: 0x0f0d1edc - 0x0f0d1f90 (Size: 180 bytes, Frame: 224)
.globl __GLmsalpha
.ent __GLmsalpha
__GLmsalpha:
    # Line 979
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,4972
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d1f58
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d1f58:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_msalpha
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d1f84
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_msalpha
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d1f84
    nop
    la	$t9,gl_d_msalpha
.L0f0d1f84:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmsalpha

# Function: __GLmssample
# Declared: Line 980 (Source lines: 980-980)
# Address: 0x0f0d1f90 - 0x0f0d2044 (Size: 180 bytes, Frame: 224)
.globl __GLmssample
.ent __GLmssample
__GLmssample:
    # Line 980
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,4792
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d200c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d200c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_mssample
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2038
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_mssample
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2038
    nop
    la	$t9,gl_d_mssample
.L0f0d2038:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmssample

# Function: __GLsbox
# Declared: Line 981 (Source lines: 981-981)
# Address: 0x0f0d2044 - 0x0f0d20f8 (Size: 180 bytes, Frame: 224)
.globl __GLsbox
.ent __GLsbox
__GLsbox:
    # Line 981
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,4612
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d20c0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d20c0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_sbox
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d20ec
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_sbox
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d20ec
    nop
    la	$t9,gl_d_sbox
.L0f0d20ec:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsbox

# Function: __GLswapinterval
# Declared: Line 982 (Source lines: 982-982)
# Address: 0x0f0d20f8 - 0x0f0d21ac (Size: 180 bytes, Frame: 224)
.globl __GLswapinterval
.ent __GLswapinterval
__GLswapinterval:
    # Line 982
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,4432
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2174
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2174:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_swapinterval
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d21a0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_swapinterval
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d21a0
    nop
    la	$t9,gl_d_swapinterval
.L0f0d21a0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLswapinterval

# Function: __GLpmvi
# Declared: Line 983 (Source lines: 983-983)
# Address: 0x0f0d21ac - 0x0f0d2260 (Size: 180 bytes, Frame: 224)
.globl __GLpmvi
.ent __GLpmvi
__GLpmvi:
    # Line 983
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,4252
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2228
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2228:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pmvi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2254
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pmvi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2254
    nop
    la	$t9,gl_d_pmvi
.L0f0d2254:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpmvi

# Function: __GLsplf2
# Declared: Line 984 (Source lines: 984-984)
# Address: 0x0f0d2260 - 0x0f0d2314 (Size: 180 bytes, Frame: 224)
.globl __GLsplf2
.ent __GLsplf2
__GLsplf2:
    # Line 984
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,4072
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d22dc
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d22dc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_splf2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2308
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_splf2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2308
    nop
    la	$t9,gl_d_splf2
.L0f0d2308:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsplf2

# Function: __GLpoly2i
# Declared: Line 985 (Source lines: 985-985)
# Address: 0x0f0d2314 - 0x0f0d23c8 (Size: 180 bytes, Frame: 224)
.globl __GLpoly2i
.ent __GLpoly2i
__GLpoly2i:
    # Line 985
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,3892
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2390
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2390:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_poly2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d23bc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_poly2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d23bc
    nop
    la	$t9,gl_d_poly2i
.L0f0d23bc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpoly2i

# Function: __GLrpmvs
# Declared: Line 986 (Source lines: 986-986)
# Address: 0x0f0d23c8 - 0x0f0d247c (Size: 180 bytes, Frame: 224)
.globl __GLrpmvs
.ent __GLrpmvs
__GLrpmvs:
    # Line 986
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,3712
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2444
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2444:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpmvs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2470
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpmvs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2470
    nop
    la	$t9,gl_d_rpmvs
.L0f0d2470:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrpmvs

# Function: __GLv4d
# Declared: Line 987 (Source lines: 987-987)
# Address: 0x0f0d247c - 0x0f0d24c0 (Size: 68 bytes, Frame: 0)
.globl __GLv4d
.ent __GLv4d
__GLv4d:
    # Line 987
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,3532
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v4d
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d24b8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v4d
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d24b8
    nop
    la	$t9,gl_d_v4d
.L0f0d24b8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv4d

# Function: __GLlogicop
# Declared: Line 988 (Source lines: 988-988)
# Address: 0x0f0d24c0 - 0x0f0d2574 (Size: 180 bytes, Frame: 224)
.globl __GLlogicop
.ent __GLlogicop
__GLlogicop:
    # Line 988
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,3464
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d253c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d253c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_logicop
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2568
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_logicop
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2568
    nop
    la	$t9,gl_d_logicop
.L0f0d2568:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLlogicop

# Function: __GLbgnpoint
# Declared: Line 989 (Source lines: 989-989)
# Address: 0x0f0d2574 - 0x0f0d2628 (Size: 180 bytes, Frame: 224)
.globl __GLbgnpoint
.ent __GLbgnpoint
__GLbgnpoint:
    # Line 989
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,3284
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d25f0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d25f0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bgnpoint
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d261c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bgnpoint
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d261c
    nop
    la	$t9,gl_d_bgnpoint
.L0f0d261c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbgnpoint

# Function: __GLrot
# Declared: Line 990 (Source lines: 990-990)
# Address: 0x0f0d2628 - 0x0f0d26dc (Size: 180 bytes, Frame: 224)
.globl __GLrot
.ent __GLrot
__GLrot:
    # Line 990
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,3104
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d26a4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d26a4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rot
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d26d0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rot
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d26d0
    nop
    la	$t9,gl_d_rot
.L0f0d26d0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrot

# Function: __GLv4f
# Declared: Line 991 (Source lines: 991-991)
# Address: 0x0f0d26dc - 0x0f0d2720 (Size: 68 bytes, Frame: 0)
.globl __GLv4f
.ent __GLv4f
__GLv4f:
    # Line 991
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2924
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v4f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2718
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v4f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2718
    nop
    la	$t9,gl_d_v4f
.L0f0d2718:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv4f

# Function: __GLbgntmesh
# Declared: Line 992 (Source lines: 992-992)
# Address: 0x0f0d2720 - 0x0f0d27d4 (Size: 180 bytes, Frame: 224)
.globl __GLbgntmesh
.ent __GLbgntmesh
__GLbgntmesh:
    # Line 992
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2856
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d279c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d279c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bgntmesh
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d27c8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bgntmesh
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d27c8
    nop
    la	$t9,gl_d_bgntmesh
.L0f0d27c8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbgntmesh

# Function: __GLpolf
# Declared: Line 993 (Source lines: 993-993)
# Address: 0x0f0d27d4 - 0x0f0d2888 (Size: 180 bytes, Frame: 224)
.globl __GLpolf
.ent __GLpolf
__GLpolf:
    # Line 993
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2676
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2850
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2850:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d287c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polf
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d287c
    nop
    la	$t9,gl_d_polf
.L0f0d287c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolf

# Function: __GLrdri
# Declared: Line 994 (Source lines: 994-994)
# Address: 0x0f0d2888 - 0x0f0d28cc (Size: 68 bytes, Frame: 0)
.globl __GLrdri
.ent __GLrdri
__GLrdri:
    # Line 994
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2496
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rdri
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d28c4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rdri
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d28c4
    nop
    la	$t9,gl_d_rdri
.L0f0d28c4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrdri

# Function: __GLrdr2s
# Declared: Line 995 (Source lines: 995-995)
# Address: 0x0f0d28cc - 0x0f0d2910 (Size: 68 bytes, Frame: 0)
.globl __GLrdr2s
.ent __GLrdr2s
__GLrdr2s:
    # Line 995
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2428
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rdr2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2908
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rdr2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2908
    nop
    la	$t9,gl_d_rdr2s
.L0f0d2908:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrdr2s

# Function: __GLpmvs
# Declared: Line 996 (Source lines: 996-996)
# Address: 0x0f0d2910 - 0x0f0d29c4 (Size: 180 bytes, Frame: 224)
.globl __GLpmvs
.ent __GLpmvs
__GLpmvs:
    # Line 996
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2360
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d298c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d298c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pmvs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d29b8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pmvs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d29b8
    nop
    la	$t9,gl_d_pmvs
.L0f0d29b8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpmvs

# Function: __GLcolorf
# Declared: Line 997 (Source lines: 997-997)
# Address: 0x0f0d29c4 - 0x0f0d2a08 (Size: 68 bytes, Frame: 0)
.globl __GLcolorf
.ent __GLcolorf
__GLcolorf:
    # Line 997
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2180
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_colorf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2a00
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_colorf
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2a00
    nop
    la	$t9,gl_d_colorf
.L0f0d2a00:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcolorf

# Function: __GLv4i
# Declared: Line 998 (Source lines: 998-998)
# Address: 0x0f0d2a08 - 0x0f0d2a4c (Size: 68 bytes, Frame: 0)
.globl __GLv4i
.ent __GLv4i
__GLv4i:
    # Line 998
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2112
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v4i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2a44
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v4i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2a44
    nop
    la	$t9,gl_d_v4i
.L0f0d2a44:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv4i

# Function: __GLrotate
# Declared: Line 999 (Source lines: 999-999)
# Address: 0x0f0d2a4c - 0x0f0d2b00 (Size: 180 bytes, Frame: 224)
.globl __GLrotate
.ent __GLrotate
__GLrotate:
    # Line 999
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,2044
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2ac8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2ac8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rotate
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2af4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rotate
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2af4
    nop
    la	$t9,gl_d_rotate
.L0f0d2af4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrotate

# Function: __GLwritemask
# Declared: Line 1000 (Source lines: 1000-1000)
# Address: 0x0f0d2b00 - 0x0f0d2bb4 (Size: 180 bytes, Frame: 224)
.globl __GLwritemask
.ent __GLwritemask
__GLwritemask:
    # Line 1000
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,1864
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2b7c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2b7c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_writemask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2ba8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_writemask
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2ba8
    nop
    la	$t9,gl_d_writemask
.L0f0d2ba8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLwritemask

# Function: __GLpoly2s
# Declared: Line 1001 (Source lines: 1001-1001)
# Address: 0x0f0d2bb4 - 0x0f0d2c68 (Size: 180 bytes, Frame: 224)
.globl __GLpoly2s
.ent __GLpoly2s
__GLpoly2s:
    # Line 1001
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,1684
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2c30
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2c30:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_poly2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2c5c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_poly2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2c5c
    nop
    la	$t9,gl_d_poly2s
.L0f0d2c5c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpoly2s

# Function: __GLendline
# Declared: Line 1002 (Source lines: 1002-1002)
# Address: 0x0f0d2c68 - 0x0f0d2cac (Size: 68 bytes, Frame: 0)
.globl __GLendline
.ent __GLendline
__GLendline:
    # Line 1002
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,1504
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_endline
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2ca4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_endline
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2ca4
    nop
    la	$t9,gl_d_endline
.L0f0d2ca4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLendline

# Function: __GLswritemask
# Declared: Line 1003 (Source lines: 1003-1003)
# Address: 0x0f0d2cac - 0x0f0d2d60 (Size: 180 bytes, Frame: 224)
.globl __GLswritemask
.ent __GLswritemask
__GLswritemask:
    # Line 1003
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,1436
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2d28
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2d28:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_swritemask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2d54
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_swritemask
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2d54
    nop
    la	$t9,gl_d_swritemask
.L0f0d2d54:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLswritemask

# Function: __GLpolysmooth
# Declared: Line 1004 (Source lines: 1004-1004)
# Address: 0x0f0d2d60 - 0x0f0d2e14 (Size: 180 bytes, Frame: 224)
.globl __GLpolysmooth
.ent __GLpolysmooth
__GLpolysmooth:
    # Line 1004
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,1256
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2ddc
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2ddc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polysmooth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2e08
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polysmooth
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2e08
    nop
    la	$t9,gl_d_polysmooth
.L0f0d2e08:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolysmooth

# Function: __GLlmcolor
# Declared: Line 1005 (Source lines: 1005-1005)
# Address: 0x0f0d2e14 - 0x0f0d2e58 (Size: 68 bytes, Frame: 0)
.globl __GLlmcolor
.ent __GLlmcolor
__GLlmcolor:
    # Line 1005
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,1076
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_lmcolor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2e50
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_lmcolor
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2e50
    nop
    la	$t9,gl_d_lmcolor
.L0f0d2e50:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLlmcolor

# Function: __GLrectf
# Declared: Line 1006 (Source lines: 1006-1006)
# Address: 0x0f0d2e58 - 0x0f0d2f0c (Size: 180 bytes, Frame: 224)
.globl __GLrectf
.ent __GLrectf
__GLrectf:
    # Line 1006
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,1008
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d2ed4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d2ed4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rectf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2f00
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rectf
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2f00
    nop
    la	$t9,gl_d_rectf
.L0f0d2f00:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrectf

# Function: __GLcolor
# Declared: Line 1007 (Source lines: 1007-1007)
# Address: 0x0f0d2f0c - 0x0f0d2f50 (Size: 68 bytes, Frame: 0)
.globl __GLcolor
.ent __GLcolor
__GLcolor:
    # Line 1007
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,828
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_color
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2f48
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_color
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2f48
    nop
    la	$t9,gl_d_color
.L0f0d2f48:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcolor

# Function: __GLrdrs
# Declared: Line 1008 (Source lines: 1008-1008)
# Address: 0x0f0d2f50 - 0x0f0d2f94 (Size: 68 bytes, Frame: 0)
.globl __GLrdrs
.ent __GLrdrs
__GLrdrs:
    # Line 1008
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,760
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rdrs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2f8c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rdrs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2f8c
    nop
    la	$t9,gl_d_rdrs
.L0f0d2f8c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrdrs

# Function: __GLtlutbind
# Declared: Line 1009 (Source lines: 1009-1009)
# Address: 0x0f0d2f94 - 0x0f0d2fd8 (Size: 68 bytes, Frame: 0)
.globl __GLtlutbind
.ent __GLtlutbind
__GLtlutbind:
    # Line 1009
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,692
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_tlutbind
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d2fd0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_tlutbind
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d2fd0
    nop
    la	$t9,gl_d_tlutbind
.L0f0d2fd0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLtlutbind

# Function: __GLv4s
# Declared: Line 1010 (Source lines: 1010-1010)
# Address: 0x0f0d2fd8 - 0x0f0d301c (Size: 68 bytes, Frame: 0)
.globl __GLv4s
.ent __GLv4s
__GLv4s:
    # Line 1010
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,624
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_v4s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3014
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_v4s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3014
    nop
    la	$t9,gl_d_v4s
.L0f0d3014:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLv4s

# Function: __GLbgnline
# Declared: Line 1011 (Source lines: 1011-1011)
# Address: 0x0f0d301c - 0x0f0d30d0 (Size: 180 bytes, Frame: 224)
.globl __GLbgnline
.ent __GLbgnline
__GLbgnline:
    # Line 1011
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,556
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3098
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3098:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bgnline
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d30c4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bgnline
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d30c4
    nop
    la	$t9,gl_d_bgnline
.L0f0d30c4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbgnline

# Function: __GLrpdri
# Declared: Line 1012 (Source lines: 1012-1012)
# Address: 0x0f0d30d0 - 0x0f0d3114 (Size: 68 bytes, Frame: 0)
.globl __GLrpdri
.ent __GLrpdri
__GLrpdri:
    # Line 1012
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,376
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpdri
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d310c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpdri
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d310c
    nop
    la	$t9,gl_d_rpdri
.L0f0d310c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrpdri

# Function: __GLrecti
# Declared: Line 1013 (Source lines: 1013-1013)
# Address: 0x0f0d3114 - 0x0f0d31c8 (Size: 180 bytes, Frame: 224)
.globl __GLrecti
.ent __GLrecti
__GLrecti:
    # Line 1013
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,308
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3190
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3190:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_recti
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d31bc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_recti
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d31bc
    nop
    la	$t9,gl_d_recti
.L0f0d31bc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrecti

# Function: __GLt2d
# Declared: Line 1014 (Source lines: 1014-1014)
# Address: 0x0f0d31c8 - 0x0f0d320c (Size: 68 bytes, Frame: 0)
.globl __GLt2d
.ent __GLt2d
__GLt2d:
    # Line 1014
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,128
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t2d
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3204
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t2d
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3204
    nop
    la	$t9,gl_d_t2d
.L0f0d3204:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt2d

# Function: __GLsboxf
# Declared: Line 1015 (Source lines: 1015-1015)
# Address: 0x0f0d320c - 0x0f0d32c0 (Size: 180 bytes, Frame: 224)
.globl __GLsboxf
.ent __GLsboxf
__GLsboxf:
    # Line 1015
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,60
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3288
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3288:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_sboxf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d32b4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_sboxf
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d32b4
    nop
    la	$t9,gl_d_sboxf
.L0f0d32b4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsboxf

# Function: __GLresetls
# Declared: Line 1016 (Source lines: 1016-1016)
# Address: 0x0f0d32c0 - 0x0f0d3374 (Size: 180 bytes, Frame: 224)
.globl __GLresetls
.ent __GLresetls
__GLresetls:
    # Line 1016
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-120
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d333c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d333c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_resetls
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3368
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_resetls
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3368
    nop
    la	$t9,gl_d_resetls
.L0f0d3368:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLresetls

# Function: __GLpolymode
# Declared: Line 1017 (Source lines: 1017-1017)
# Address: 0x0f0d3374 - 0x0f0d3428 (Size: 180 bytes, Frame: 224)
.globl __GLpolymode
.ent __GLpolymode
__GLpolymode:
    # Line 1017
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-300
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d33f0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d33f0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polymode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d341c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polymode
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d341c
    nop
    la	$t9,gl_d_polymode
.L0f0d341c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolymode

# Function: __GLt2f
# Declared: Line 1018 (Source lines: 1018-1018)
# Address: 0x0f0d3428 - 0x0f0d346c (Size: 68 bytes, Frame: 0)
.globl __GLt2f
.ent __GLt2f
__GLt2f:
    # Line 1018
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-480
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t2f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3464
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t2f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3464
    nop
    la	$t9,gl_d_t2f
.L0f0d3464:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt2f

# Function: __GLsboxi
# Declared: Line 1019 (Source lines: 1019-1019)
# Address: 0x0f0d346c - 0x0f0d3520 (Size: 180 bytes, Frame: 224)
.globl __GLsboxi
.ent __GLsboxi
__GLsboxi:
    # Line 1019
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-548
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d34e8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d34e8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_sboxi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3514
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_sboxi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3514
    nop
    la	$t9,gl_d_sboxi
.L0f0d3514:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsboxi

# Function: __GLpmv
# Declared: Line 1020 (Source lines: 1020-1020)
# Address: 0x0f0d3520 - 0x0f0d35d4 (Size: 180 bytes, Frame: 224)
.globl __GLpmv
.ent __GLpmv
__GLpmv:
    # Line 1020
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-728
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d359c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d359c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pmv
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d35c8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pmv
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d35c8
    nop
    la	$t9,gl_d_pmv
.L0f0d35c8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpmv

# Function: __GLblendcolor
# Declared: Line 1021 (Source lines: 1021-1021)
# Address: 0x0f0d35d4 - 0x0f0d3688 (Size: 180 bytes, Frame: 224)
.globl __GLblendcolor
.ent __GLblendcolor
__GLblendcolor:
    # Line 1021
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-908
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3650
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3650:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_blendcolor
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d367c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_blendcolor
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d367c
    nop
    la	$t9,gl_d_blendcolor
.L0f0d367c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLblendcolor

# Function: __GLpixmode
# Declared: Line 1022 (Source lines: 1022-1022)
# Address: 0x0f0d3688 - 0x0f0d373c (Size: 180 bytes, Frame: 224)
.globl __GLpixmode
.ent __GLpixmode
__GLpixmode:
    # Line 1022
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-1088
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3704
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3704:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pixmode
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3730
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pixmode
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3730
    nop
    la	$t9,gl_d_pixmode
.L0f0d3730:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpixmode

# Function: __GLxfpt
# Declared: Line 1023 (Source lines: 1023-1023)
# Address: 0x0f0d373c - 0x0f0d37f0 (Size: 180 bytes, Frame: 224)
.globl __GLxfpt
.ent __GLxfpt
__GLxfpt:
    # Line 1023
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-1268
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d37b8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d37b8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpt
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d37e4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpt
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d37e4
    nop
    la	$t9,gl_d_xfpt
.L0f0d37e4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpt

# Function: __GLt2i
# Declared: Line 1024 (Source lines: 1024-1024)
# Address: 0x0f0d37f0 - 0x0f0d3834 (Size: 68 bytes, Frame: 0)
.globl __GLt2i
.ent __GLt2i
__GLt2i:
    # Line 1024
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-1448
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d382c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d382c
    nop
    la	$t9,gl_d_t2i
.L0f0d382c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt2i

# Function: __GLpdri
# Declared: Line 1025 (Source lines: 1025-1025)
# Address: 0x0f0d3834 - 0x0f0d3878 (Size: 68 bytes, Frame: 0)
.globl __GLpdri
.ent __GLpdri
__GLpdri:
    # Line 1025
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-1516
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pdri
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3870
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pdri
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3870
    nop
    la	$t9,gl_d_pdri
.L0f0d3870:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpdri

# Function: __GLgl_scrrect
# Declared: Line 1026 (Source lines: 1026-1026)
# Address: 0x0f0d3878 - 0x0f0d392c (Size: 180 bytes, Frame: 224)
.globl __GLgl_scrrect
.ent __GLgl_scrrect
__GLgl_scrrect:
    # Line 1026
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-1584
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d38f4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d38f4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_gl_scrrect
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3920
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_gl_scrrect
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3920
    nop
    la	$t9,gl_d_gl_scrrect
.L0f0d3920:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLgl_scrrect

# Function: __GLpoly
# Declared: Line 1027 (Source lines: 1027-1027)
# Address: 0x0f0d392c - 0x0f0d39e0 (Size: 180 bytes, Frame: 224)
.globl __GLpoly
.ent __GLpoly
__GLpoly:
    # Line 1027
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-1764
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d39a8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d39a8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_poly
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d39d4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_poly
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d39d4
    nop
    la	$t9,gl_d_poly
.L0f0d39d4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpoly

# Function: __GLpushname
# Declared: Line 1028 (Source lines: 1028-1028)
# Address: 0x0f0d39e0 - 0x0f0d3a94 (Size: 180 bytes, Frame: 224)
.globl __GLpushname
.ent __GLpushname
__GLpushname:
    # Line 1028
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-1944
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3a5c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3a5c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pushname
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3a88
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pushname
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3a88
    nop
    la	$t9,gl_d_pushname
.L0f0d3a88:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpushname

# Function: __GLRGBwritemask
# Declared: Line 1029 (Source lines: 1029-1029)
# Address: 0x0f0d3a94 - 0x0f0d3b48 (Size: 180 bytes, Frame: 224)
.globl __GLRGBwritemask
.ent __GLRGBwritemask
__GLRGBwritemask:
    # Line 1029
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-2124
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3b10
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3b10:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_RGBwritemask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3b3c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_RGBwritemask
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3b3c
    nop
    la	$t9,gl_d_RGBwritemask
.L0f0d3b3c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLRGBwritemask

# Function: __GLrects
# Declared: Line 1030 (Source lines: 1030-1030)
# Address: 0x0f0d3b48 - 0x0f0d3bfc (Size: 180 bytes, Frame: 224)
.globl __GLrects
.ent __GLrects
__GLrects:
    # Line 1030
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-2304
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3bc4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3bc4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rects
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3bf0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rects
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3bf0
    nop
    la	$t9,gl_d_rects
.L0f0d3bf0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrects

# Function: __GLxfpti
# Declared: Line 1031 (Source lines: 1031-1031)
# Address: 0x0f0d3bfc - 0x0f0d3cb0 (Size: 180 bytes, Frame: 224)
.globl __GLxfpti
.ent __GLxfpti
__GLxfpti:
    # Line 1031
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-2484
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3c78
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3c78:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpti
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3ca4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpti
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3ca4
    nop
    la	$t9,gl_d_xfpti
.L0f0d3ca4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpti

# Function: __GLrpdrs
# Declared: Line 1032 (Source lines: 1032-1032)
# Address: 0x0f0d3cb0 - 0x0f0d3cf4 (Size: 68 bytes, Frame: 0)
.globl __GLrpdrs
.ent __GLrpdrs
__GLrpdrs:
    # Line 1032
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-2664
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpdrs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3cec
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpdrs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3cec
    nop
    la	$t9,gl_d_rpdrs
.L0f0d3cec:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrpdrs

# Function: __GLafunction
# Declared: Line 1033 (Source lines: 1033-1033)
# Address: 0x0f0d3cf4 - 0x0f0d3da8 (Size: 180 bytes, Frame: 224)
.globl __GLafunction
.ent __GLafunction
__GLafunction:
    # Line 1033
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-2732
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3d70
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3d70:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_afunction
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3d9c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_afunction
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3d9c
    nop
    la	$t9,gl_d_afunction
.L0f0d3d9c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLafunction

# Function: __GLfogvertex
# Declared: Line 1034 (Source lines: 1034-1034)
# Address: 0x0f0d3da8 - 0x0f0d3e5c (Size: 180 bytes, Frame: 224)
.globl __GLfogvertex
.ent __GLfogvertex
__GLfogvertex:
    # Line 1034
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-2912
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3e24
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3e24:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_fogvertex
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3e50
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_fogvertex
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3e50
    nop
    la	$t9,gl_d_fogvertex
.L0f0d3e50:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLfogvertex

# Function: __GLmultisample
# Declared: Line 1035 (Source lines: 1035-1035)
# Address: 0x0f0d3e5c - 0x0f0d3f10 (Size: 180 bytes, Frame: 224)
.globl __GLmultisample
.ent __GLmultisample
__GLmultisample:
    # Line 1035
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-3092
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3ed8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3ed8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_multisample
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3f04
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_multisample
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3f04
    nop
    la	$t9,gl_d_multisample
.L0f0d3f04:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmultisample

# Function: __GLmswapbuffers
# Declared: Line 1036 (Source lines: 1036-1036)
# Address: 0x0f0d3f10 - 0x0f0d3fc4 (Size: 180 bytes, Frame: 224)
.globl __GLmswapbuffers
.ent __GLmswapbuffers
__GLmswapbuffers:
    # Line 1036
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-3272
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d3f8c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d3f8c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_mswapbuffers
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d3fb8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_mswapbuffers
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d3fb8
    nop
    la	$t9,gl_d_mswapbuffers
.L0f0d3fb8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmswapbuffers

# Function: __GLsboxs
# Declared: Line 1037 (Source lines: 1037-1037)
# Address: 0x0f0d3fc4 - 0x0f0d4078 (Size: 180 bytes, Frame: 224)
.globl __GLsboxs
.ent __GLsboxs
__GLsboxs:
    # Line 1037
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-3452
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4040
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4040:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_sboxs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d406c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_sboxs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d406c
    nop
    la	$t9,gl_d_sboxs
.L0f0d406c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsboxs

# Function: __GLt2s
# Declared: Line 1038 (Source lines: 1038-1038)
# Address: 0x0f0d4078 - 0x0f0d40bc (Size: 68 bytes, Frame: 0)
.globl __GLt2s
.ent __GLt2s
__GLt2s:
    # Line 1038
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-3632
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d40b4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d40b4
    nop
    la	$t9,gl_d_t2s
.L0f0d40b4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt2s

# Function: __GLpdrs
# Declared: Line 1039 (Source lines: 1039-1039)
# Address: 0x0f0d40bc - 0x0f0d4100 (Size: 68 bytes, Frame: 0)
.globl __GLpdrs
.ent __GLpdrs
__GLpdrs:
    # Line 1039
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-3700
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pdrs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d40f8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pdrs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d40f8
    nop
    la	$t9,gl_d_pdrs
.L0f0d40f8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLpdrs

# Function: __GLzdraw
# Declared: Line 1040 (Source lines: 1040-1040)
# Address: 0x0f0d4100 - 0x0f0d41b4 (Size: 180 bytes, Frame: 224)
.globl __GLzdraw
.ent __GLzdraw
__GLzdraw:
    # Line 1040
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-3768
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d417c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d417c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_zdraw
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d41a8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_zdraw
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d41a8
    nop
    la	$t9,gl_d_zdraw
.L0f0d41a8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLzdraw

# Function: __GLrpatch
# Declared: Line 1041 (Source lines: 1041-1041)
# Address: 0x0f0d41b4 - 0x0f0d4268 (Size: 180 bytes, Frame: 224)
.globl __GLrpatch
.ent __GLrpatch
__GLrpatch:
    # Line 1041
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-3948
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4230
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4230:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rpatch
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d425c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rpatch
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d425c
    nop
    la	$t9,gl_d_rpatch
.L0f0d425c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrpatch

# Function: __GLpoly2
# Declared: Line 1042 (Source lines: 1042-1042)
# Address: 0x0f0d4268 - 0x0f0d431c (Size: 180 bytes, Frame: 224)
.globl __GLpoly2
.ent __GLpoly2
__GLpoly2:
    # Line 1042
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-4128
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d42e4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d42e4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_poly2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4310
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_poly2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4310
    nop
    la	$t9,gl_d_poly2
.L0f0d4310:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpoly2

# Function: __GLwmpack
# Declared: Line 1043 (Source lines: 1043-1043)
# Address: 0x0f0d431c - 0x0f0d43d0 (Size: 180 bytes, Frame: 224)
.globl __GLwmpack
.ent __GLwmpack
__GLwmpack:
    # Line 1043
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-4308
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4398
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4398:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_wmpack
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d43c4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_wmpack
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d43c4
    nop
    la	$t9,gl_d_wmpack
.L0f0d43c4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLwmpack

# Function: __GLmove2i
# Declared: Line 1044 (Source lines: 1044-1044)
# Address: 0x0f0d43d0 - 0x0f0d4484 (Size: 180 bytes, Frame: 224)
.globl __GLmove2i
.ent __GLmove2i
__GLmove2i:
    # Line 1044
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-4488
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d444c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d444c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_move2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4478
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_move2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4478
    nop
    la	$t9,gl_d_move2i
.L0f0d4478:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmove2i

# Function: __GLxfpts
# Declared: Line 1045 (Source lines: 1045-1045)
# Address: 0x0f0d4484 - 0x0f0d4538 (Size: 180 bytes, Frame: 224)
.globl __GLxfpts
.ent __GLxfpts
__GLxfpts:
    # Line 1045
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-4668
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4500
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4500:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpts
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d452c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpts
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d452c
    nop
    la	$t9,gl_d_xfpts
.L0f0d452c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpts

# Function: __GLpnt2
# Declared: Line 1046 (Source lines: 1046-1046)
# Address: 0x0f0d4538 - 0x0f0d45ec (Size: 180 bytes, Frame: 224)
.globl __GLpnt2
.ent __GLpnt2
__GLpnt2:
    # Line 1046
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-4848
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d45b4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d45b4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pnt2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d45e0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pnt2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d45e0
    nop
    la	$t9,gl_d_pnt2
.L0f0d45e0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpnt2

# Function: __GLdither
# Declared: Line 1047 (Source lines: 1047-1047)
# Address: 0x0f0d45ec - 0x0f0d46a0 (Size: 180 bytes, Frame: 224)
.globl __GLdither
.ent __GLdither
__GLdither:
    # Line 1047
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-5028
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4668
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4668:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_dither
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4694
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_dither
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4694
    nop
    la	$t9,gl_d_dither
.L0f0d4694:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLdither

# Function: __GLsubpixel
# Declared: Line 1048 (Source lines: 1048-1048)
# Address: 0x0f0d46a0 - 0x0f0d4754 (Size: 180 bytes, Frame: 224)
.globl __GLsubpixel
.ent __GLsubpixel
__GLsubpixel:
    # Line 1048
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-5208
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d471c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d471c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_subpixel
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4748
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_subpixel
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4748
    nop
    la	$t9,gl_d_subpixel
.L0f0d4748:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsubpixel

# Function: __GLacbuf
# Declared: Line 1049 (Source lines: 1049-1049)
# Address: 0x0f0d4754 - 0x0f0d4808 (Size: 180 bytes, Frame: 224)
.globl __GLacbuf
.ent __GLacbuf
__GLacbuf:
    # Line 1049
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-5388
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d47d0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d47d0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_acbuf
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d47fc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_acbuf
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d47fc
    nop
    la	$t9,gl_d_acbuf
.L0f0d47fc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLacbuf

# Function: __GLbgnclosedline
# Declared: Line 1050 (Source lines: 1050-1050)
# Address: 0x0f0d4808 - 0x0f0d48bc (Size: 180 bytes, Frame: 224)
.globl __GLbgnclosedline
.ent __GLbgnclosedline
__GLbgnclosedline:
    # Line 1050
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-5568
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4884
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4884:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bgnclosedline
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d48b0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bgnclosedline
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d48b0
    nop
    la	$t9,gl_d_bgnclosedline
.L0f0d48b0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbgnclosedline

# Function: __GLpolf2
# Declared: Line 1051 (Source lines: 1051-1051)
# Address: 0x0f0d48bc - 0x0f0d4970 (Size: 180 bytes, Frame: 224)
.globl __GLpolf2
.ent __GLpolf2
__GLpolf2:
    # Line 1051
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-5748
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4938
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4938:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polf2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4964
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polf2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4964
    nop
    la	$t9,gl_d_polf2
.L0f0d4964:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolf2

# Function: __GLtevbind
# Declared: Line 1052 (Source lines: 1052-1052)
# Address: 0x0f0d4970 - 0x0f0d4a24 (Size: 180 bytes, Frame: 224)
.globl __GLtevbind
.ent __GLtevbind
__GLtevbind:
    # Line 1052
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-5928
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d49ec
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d49ec:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_tevbind
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4a18
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_tevbind
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4a18
    nop
    la	$t9,gl_d_tevbind
.L0f0d4a18:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLtevbind

# Function: __GLsclear
# Declared: Line 1053 (Source lines: 1053-1053)
# Address: 0x0f0d4a24 - 0x0f0d4ad8 (Size: 180 bytes, Frame: 224)
.globl __GLsclear
.ent __GLsclear
__GLsclear:
    # Line 1053
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-6108
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4aa0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4aa0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_sclear
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4acc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_sclear
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4acc
    nop
    la	$t9,gl_d_sclear
.L0f0d4acc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsclear

# Function: __GLmove2s
# Declared: Line 1054 (Source lines: 1054-1054)
# Address: 0x0f0d4ad8 - 0x0f0d4b8c (Size: 180 bytes, Frame: 224)
.globl __GLmove2s
.ent __GLmove2s
__GLmove2s:
    # Line 1054
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-6288
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4b54
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4b54:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_move2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4b80
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_move2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4b80
    nop
    la	$t9,gl_d_move2s
.L0f0d4b80:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmove2s

# Function: __GLpushmatrix
# Declared: Line 1055 (Source lines: 1055-1055)
# Address: 0x0f0d4b8c - 0x0f0d4c40 (Size: 180 bytes, Frame: 224)
.globl __GLpushmatrix
.ent __GLpushmatrix
__GLpushmatrix:
    # Line 1055
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-6468
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4c08
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4c08:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pushmatrix
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4c34
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pushmatrix
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4c34
    nop
    la	$t9,gl_d_pushmatrix
.L0f0d4c34:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpushmatrix

# Function: __GLt3d
# Declared: Line 1056 (Source lines: 1056-1056)
# Address: 0x0f0d4c40 - 0x0f0d4c84 (Size: 68 bytes, Frame: 0)
.globl __GLt3d
.ent __GLt3d
__GLt3d:
    # Line 1056
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-6648
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t3d
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4c7c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t3d
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4c7c
    nop
    la	$t9,gl_d_t3d
.L0f0d4c7c:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt3d

# Function: __GLpnt
# Declared: Line 1057 (Source lines: 1057-1057)
# Address: 0x0f0d4c84 - 0x0f0d4d38 (Size: 180 bytes, Frame: 224)
.globl __GLpnt
.ent __GLpnt
__GLpnt:
    # Line 1057
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-6716
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4d00
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4d00:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_pnt
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4d2c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_pnt
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4d2c
    nop
    la	$t9,gl_d_pnt
.L0f0d4d2c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpnt

# Function: __GLt3f
# Declared: Line 1058 (Source lines: 1058-1058)
# Address: 0x0f0d4d38 - 0x0f0d4d7c (Size: 68 bytes, Frame: 0)
.globl __GLt3f
.ent __GLt3f
__GLt3f:
    # Line 1058
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-6896
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t3f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4d74
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t3f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4d74
    nop
    la	$t9,gl_d_t3f
.L0f0d4d74:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt3f

# Function: __GLconcave
# Declared: Line 1059 (Source lines: 1059-1059)
# Address: 0x0f0d4d7c - 0x0f0d4e30 (Size: 180 bytes, Frame: 224)
.globl __GLconcave
.ent __GLconcave
__GLconcave:
    # Line 1059
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-6964
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4df8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4df8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_concave
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4e24
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_concave
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4e24
    nop
    la	$t9,gl_d_concave
.L0f0d4e24:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLconcave

# Function: __GLcallobj
# Declared: Line 1060 (Source lines: 1060-1060)
# Address: 0x0f0d4e30 - 0x0f0d4ee4 (Size: 180 bytes, Frame: 224)
.globl __GLcallobj
.ent __GLcallobj
__GLcallobj:
    # Line 1060
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-7144
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4eac
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4eac:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_callobj
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4ed8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_callobj
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4ed8
    nop
    la	$t9,gl_d_callobj
.L0f0d4ed8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcallobj

# Function: __GLt3i
# Declared: Line 1061 (Source lines: 1061-1061)
# Address: 0x0f0d4ee4 - 0x0f0d4f28 (Size: 68 bytes, Frame: 0)
.globl __GLt3i
.ent __GLt3i
__GLt3i:
    # Line 1061
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-7324
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t3i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4f20
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t3i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4f20
    nop
    la	$t9,gl_d_t3i
.L0f0d4f20:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt3i

# Function: __GLsplfi
# Declared: Line 1062 (Source lines: 1062-1062)
# Address: 0x0f0d4f28 - 0x0f0d4fdc (Size: 180 bytes, Frame: 224)
.globl __GLsplfi
.ent __GLsplfi
__GLsplfi:
    # Line 1062
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-7392
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d4fa4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d4fa4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_splfi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d4fd0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_splfi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d4fd0
    nop
    la	$t9,gl_d_splfi
.L0f0d4fd0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsplfi

# Function: __GLclipplane
# Declared: Line 1063 (Source lines: 1063-1063)
# Address: 0x0f0d4fdc - 0x0f0d5090 (Size: 180 bytes, Frame: 224)
.globl __GLclipplane
.ent __GLclipplane
__GLclipplane:
    # Line 1063
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-7572
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5058
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5058:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_clipplane
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5084
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_clipplane
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5084
    nop
    la	$t9,gl_d_clipplane
.L0f0d5084:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLclipplane

# Function: __GLcpack
# Declared: Line 1064 (Source lines: 1064-1064)
# Address: 0x0f0d5090 - 0x0f0d50d4 (Size: 68 bytes, Frame: 0)
.globl __GLcpack
.ent __GLcpack
__GLcpack:
    # Line 1064
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-7752
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_cpack
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d50cc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_cpack
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d50cc
    nop
    la	$t9,gl_d_cpack
.L0f0d50cc:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLcpack

# Function: __GLrcrv
# Declared: Line 1065 (Source lines: 1065-1065)
# Address: 0x0f0d50d4 - 0x0f0d5188 (Size: 180 bytes, Frame: 224)
.globl __GLrcrv
.ent __GLrcrv
__GLrcrv:
    # Line 1065
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-7820
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5150
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5150:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rcrv
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d517c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rcrv
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d517c
    nop
    la	$t9,gl_d_rcrv
.L0f0d517c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLrcrv

# Function: __GLrdr
# Declared: Line 1066 (Source lines: 1066-1066)
# Address: 0x0f0d5188 - 0x0f0d51cc (Size: 68 bytes, Frame: 0)
.globl __GLrdr
.ent __GLrdr
__GLrdr:
    # Line 1066
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-8000
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_rdr
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d51c4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_rdr
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d51c4
    nop
    la	$t9,gl_d_rdr
.L0f0d51c4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLrdr

# Function: __GLmove2
# Declared: Line 1067 (Source lines: 1067-1067)
# Address: 0x0f0d51cc - 0x0f0d5280 (Size: 180 bytes, Frame: 224)
.globl __GLmove2
.ent __GLmove2
__GLmove2:
    # Line 1067
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-8068
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5248
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5248:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_move2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5274
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_move2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5274
    nop
    la	$t9,gl_d_move2
.L0f0d5274:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmove2

# Function: __GLmspattern
# Declared: Line 1068 (Source lines: 1068-1068)
# Address: 0x0f0d5280 - 0x0f0d5334 (Size: 180 bytes, Frame: 224)
.globl __GLmspattern
.ent __GLmspattern
__GLmspattern:
    # Line 1068
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-8248
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d52fc
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d52fc:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_mspattern
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5328
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_mspattern
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5328
    nop
    la	$t9,gl_d_mspattern
.L0f0d5328:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLmspattern

# Function: __GLlinesmooth
# Declared: Line 1069 (Source lines: 1069-1069)
# Address: 0x0f0d5334 - 0x0f0d53e8 (Size: 180 bytes, Frame: 224)
.globl __GLlinesmooth
.ent __GLlinesmooth
__GLlinesmooth:
    # Line 1069
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-8428
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d53b0
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d53b0:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_linesmooth
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d53dc
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_linesmooth
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d53dc
    nop
    la	$t9,gl_d_linesmooth
.L0f0d53dc:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLlinesmooth

# Function: __GLt3s
# Declared: Line 1070 (Source lines: 1070-1070)
# Address: 0x0f0d53e8 - 0x0f0d542c (Size: 68 bytes, Frame: 0)
.globl __GLt3s
.ent __GLt3s
__GLt3s:
    # Line 1070
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-8608
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t3s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5424
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t3s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5424
    nop
    la	$t9,gl_d_t3s
.L0f0d5424:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt3s

# Function: __GLsplfs
# Declared: Line 1071 (Source lines: 1071-1071)
# Address: 0x0f0d542c - 0x0f0d54e0 (Size: 180 bytes, Frame: 224)
.globl __GLsplfs
.ent __GLsplfs
__GLsplfs:
    # Line 1071
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-8676
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d54a8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d54a8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_splfs
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d54d4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_splfs
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d54d4
    nop
    la	$t9,gl_d_splfs
.L0f0d54d4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLsplfs

# Function: __GLlchstr
# Declared: Line 1072 (Source lines: 1072-1072)
# Address: 0x0f0d54e0 - 0x0f0d5594 (Size: 180 bytes, Frame: 224)
.globl __GLlchstr
.ent __GLlchstr
__GLlchstr:
    # Line 1072
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-8856
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d555c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d555c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_lchstr
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5588
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_lchstr
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5588
    nop
    la	$t9,gl_d_lchstr
.L0f0d5588:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLlchstr

# Function: __GLinitnames
# Declared: Line 1073 (Source lines: 1073-1073)
# Address: 0x0f0d5594 - 0x0f0d5648 (Size: 180 bytes, Frame: 224)
.globl __GLinitnames
.ent __GLinitnames
__GLinitnames:
    # Line 1073
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-9036
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5610
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5610:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_initnames
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d563c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_initnames
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d563c
    nop
    la	$t9,gl_d_initnames
.L0f0d563c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLinitnames

# Function: __GLcmov2
# Declared: Line 1074 (Source lines: 1074-1074)
# Address: 0x0f0d5648 - 0x0f0d56fc (Size: 180 bytes, Frame: 224)
.globl __GLcmov2
.ent __GLcmov2
__GLcmov2:
    # Line 1074
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-9216
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d56c4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d56c4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_cmov2
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d56f0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_cmov2
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d56f0
    nop
    la	$t9,gl_d_cmov2
.L0f0d56f0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcmov2

# Function: __GLlsbackup
# Declared: Line 1075 (Source lines: 1075-1075)
# Address: 0x0f0d56fc - 0x0f0d57b0 (Size: 180 bytes, Frame: 224)
.globl __GLlsbackup
.ent __GLlsbackup
__GLlsbackup:
    # Line 1075
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-9396
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5778
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5778:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_lsbackup
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d57a4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_lsbackup
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d57a4
    nop
    la	$t9,gl_d_lsbackup
.L0f0d57a4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLlsbackup

# Function: __GLlsrepeat
# Declared: Line 1076 (Source lines: 1076-1076)
# Address: 0x0f0d57b0 - 0x0f0d5864 (Size: 180 bytes, Frame: 224)
.globl __GLlsrepeat
.ent __GLlsrepeat
__GLlsrepeat:
    # Line 1076
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-9576
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d582c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d582c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_lsrepeat
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5858
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_lsrepeat
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5858
    nop
    la	$t9,gl_d_lsrepeat
.L0f0d5858:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLlsrepeat

# Function: __GLdraw
# Declared: Line 1077 (Source lines: 1077-1077)
# Address: 0x0f0d5864 - 0x0f0d58a8 (Size: 68 bytes, Frame: 0)
.globl __GLdraw
.ent __GLdraw
__GLdraw:
    # Line 1077
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-9756
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_draw
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d58a0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_draw
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d58a0
    nop
    la	$t9,gl_d_draw
.L0f0d58a0:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLdraw

# Function: __GLzwritemask
# Declared: Line 1078 (Source lines: 1078-1078)
# Address: 0x0f0d58a8 - 0x0f0d595c (Size: 180 bytes, Frame: 224)
.globl __GLzwritemask
.ent __GLzwritemask
__GLzwritemask:
    # Line 1078
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-9824
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5924
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5924:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_zwritemask
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5950
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_zwritemask
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5950
    nop
    la	$t9,gl_d_zwritemask
.L0f0d5950:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLzwritemask

# Function: __GLxfpt2i
# Declared: Line 1079 (Source lines: 1079-1079)
# Address: 0x0f0d595c - 0x0f0d5a10 (Size: 180 bytes, Frame: 224)
.globl __GLxfpt2i
.ent __GLxfpt2i
__GLxfpt2i:
    # Line 1079
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-10004
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d59d8
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d59d8:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpt2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5a04
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpt2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5a04
    nop
    la	$t9,gl_d_xfpt2i
.L0f0d5a04:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpt2i

# Function: __GLzbuffer
# Declared: Line 1080 (Source lines: 1080-1080)
# Address: 0x0f0d5a10 - 0x0f0d5ac4 (Size: 180 bytes, Frame: 224)
.globl __GLzbuffer
.ent __GLzbuffer
__GLzbuffer:
    # Line 1080
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-10184
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5a8c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5a8c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_zbuffer
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5ab8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_zbuffer
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5ab8
    nop
    la	$t9,gl_d_zbuffer
.L0f0d5ab8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLzbuffer

# Function: __GLt4d
# Declared: Line 1081 (Source lines: 1081-1081)
# Address: 0x0f0d5ac4 - 0x0f0d5b08 (Size: 68 bytes, Frame: 0)
.globl __GLt4d
.ent __GLt4d
__GLt4d:
    # Line 1081
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-10364
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t4d
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5b00
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t4d
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5b00
    nop
    la	$t9,gl_d_t4d
.L0f0d5b00:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt4d

# Function: __GLclear
# Declared: Line 1082 (Source lines: 1082-1082)
# Address: 0x0f0d5b08 - 0x0f0d5bbc (Size: 180 bytes, Frame: 224)
.globl __GLclear
.ent __GLclear
__GLclear:
    # Line 1082
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-10432
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5b84
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5b84:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_clear
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5bb0
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_clear
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5bb0
    nop
    la	$t9,gl_d_clear
.L0f0d5bb0:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLclear

# Function: __GLt4f
# Declared: Line 1083 (Source lines: 1083-1083)
# Address: 0x0f0d5bbc - 0x0f0d5c00 (Size: 68 bytes, Frame: 0)
.globl __GLt4f
.ent __GLt4f
__GLt4f:
    # Line 1083
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-10612
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t4f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5bf8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t4f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5bf8
    nop
    la	$t9,gl_d_t4f
.L0f0d5bf8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt4f

# Function: __GLbgnqstrip
# Declared: Line 1084 (Source lines: 1084-1084)
# Address: 0x0f0d5c00 - 0x0f0d5cb4 (Size: 180 bytes, Frame: 224)
.globl __GLbgnqstrip
.ent __GLbgnqstrip
__GLbgnqstrip:
    # Line 1084
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-10680
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5c7c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5c7c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_bgnqstrip
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5ca8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_bgnqstrip
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5ca8
    nop
    la	$t9,gl_d_bgnqstrip
.L0f0d5ca8:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLbgnqstrip

# Function: __GLcmov2i
# Declared: Line 1085 (Source lines: 1085-1085)
# Address: 0x0f0d5cb4 - 0x0f0d5d68 (Size: 180 bytes, Frame: 224)
.globl __GLcmov2i
.ent __GLcmov2i
__GLcmov2i:
    # Line 1085
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-10860
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5d30
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5d30:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_cmov2i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5d5c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_cmov2i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5d5c
    nop
    la	$t9,gl_d_cmov2i
.L0f0d5d5c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLcmov2i

# Function: __GLt4i
# Declared: Line 1086 (Source lines: 1086-1086)
# Address: 0x0f0d5d68 - 0x0f0d5dac (Size: 68 bytes, Frame: 0)
.globl __GLt4i
.ent __GLt4i
__GLt4i:
    # Line 1086
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-11040
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_t4i
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5da4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_t4i
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5da4
    nop
    la	$t9,gl_d_t4i
.L0f0d5da4:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLt4i

# Function: __GLn3f
# Declared: Line 1087 (Source lines: 1087-1087)
# Address: 0x0f0d5dac - 0x0f0d5df0 (Size: 68 bytes, Frame: 0)
.globl __GLn3f
.ent __GLn3f
__GLn3f:
    # Line 1087
    move	$t0,$gp
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-11108
    daddu	$gp,$gp,$t9
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_n3f
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5de8
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_n3f
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5de8
    nop
    la	$t9,gl_d_n3f
.L0f0d5de8:
    jalr	$t9
    nop
    jr	$ra
    move	$gp,$t0
.end __GLn3f

# Function: __GLloadname
# Declared: Line 1088 (Source lines: 1088-1088)
# Address: 0x0f0d5df0 - 0x0f0d5ea4 (Size: 180 bytes, Frame: 224)
.globl __GLloadname
.ent __GLloadname
__GLloadname:
    # Line 1088
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-11176
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5e6c
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5e6c:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_loadname
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5e98
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_loadname
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5e98
    nop
    la	$t9,gl_d_loadname
.L0f0d5e98:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLloadname

# Function: __GLxfpt2s
# Declared: Line 1089 (Source lines: 1089-1089)
# Address: 0x0f0d5ea4 - 0x0f0d5f58 (Size: 180 bytes, Frame: 224)
.globl __GLxfpt2s
.ent __GLxfpt2s
__GLxfpt2s:
    # Line 1089
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-11356
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5f20
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5f20:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_xfpt2s
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d5f4c
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_xfpt2s
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d5f4c
    nop
    la	$t9,gl_d_xfpt2s
.L0f0d5f4c:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLxfpt2s

# Function: __GLtexbind
# Declared: Line 1090 (Source lines: 1090-1090)
# Address: 0x0f0d5f58 - 0x0f0d600c (Size: 180 bytes, Frame: 224)
.globl __GLtexbind
.ent __GLtexbind
__GLtexbind:
    # Line 1090
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-11536
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d5fd4
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d5fd4:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_texbind
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d6000
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_texbind
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d6000
    nop
    la	$t9,gl_d_texbind
.L0f0d6000:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLtexbind

# Function: __GLpolyi
# Declared: Line 1091 (Source lines: 1091-1091)
# Address: 0x0f0d600c - 0x0f0d60c0 (Size: 180 bytes, Frame: 224)
.globl __GLpolyi
.ent __GLpolyi
__GLpolyi:
    # Line 1091
    addiu	$sp,$sp,-96
    sd	$gp,0($sp)
    lui	$gp,0xfff6
    daddiu	$gp,$gp,-11716
    daddu	$gp,$gp,$t9
    la	$t8,gl_inMoveDraw
    lw	$t8,0($t8)
    beqz	$t8,.L0f0d6088
    nop
    la	$t9,__iglooCloseMoveDrawFromTable
    sd	$ra,72($sp)
    sd	$a0,8($sp)
    sd	$a1,16($sp)
    sd	$a2,24($sp)
    sd	$a3,32($sp)
    sd	$a4,40($sp)
    sd	$a5,48($sp)
    sd	$a6,56($sp)
    sd	$a7,64($sp)
    jalr	$t9
    sd	$t0,80($sp)
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    ld	$a5,48($sp)
    ld	$a6,56($sp)
    ld	$a7,64($sp)
    ld	$t0,80($sp)
    ld	$ra,72($sp)
.L0f0d6088:
    la	$t2,gl_immediate_mode
    la	$t9,gl_i_polyi
    lw	$t2,0($t2)
    bnez	$t2,.L0f0d60b4
    nop
    la	$t3,gl_openobjhdr
    la	$t9,gl_c_polyi
    lw	$t3,0($t3)
    bnez	$t3,.L0f0d60b4
    nop
    la	$t9,gl_d_polyi
.L0f0d60b4:
    ld	$gp,0($sp)
    jalr	$t9
    nop
    jr	$ra
    addiu	$sp,$sp,96
.end __GLpolyi

