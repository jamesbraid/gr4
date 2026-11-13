# Source: ../soft/so_bitmap.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_bitmap.c
# Total Functions: 1

.text

# Function: __glim_Bitmap
# Declared: Line 24 (Source lines: 26-48)
# Address: 0x0db30880 - 0x0db309a8 (Size: 296 bytes, Frame: 144)
.globl __glim_Bitmap
.ent __glim_Bitmap
__glim_Bitmap:
    # Line 27
    lw	$t0,__glCurrentContext
    # Line 26
    move	$a5,$a6
    mov.s	$f4,$f17
    mov.s	$f5,$f16
    mov.s	$f6,$f15
    mov.s	$f7,$f14
    move	$a2,$a1
    move	$a4,$a0
    addiu	$sp,$sp,-144
    sd	$gp,56($sp)
    # Line 30
    lw	$a7,__glBeginMode
    # Line 26
    lui	$at,0xd
    addiu	$at,$at,-8680
    # Line 30
    beqz	$a7,.L0db30900
    # Line 26
    addu	$gp,$t9,$at
    sd	$ra,64($sp)
    sd	$a4,48($sp)
    sd	$a2,32($sp)
    sd	$a5,40($sp)
    sdc1	$f4,0($sp)
    sdc1	$f5,8($sp)
    sdc1	$f6,16($sp)
    # Line 30
    li	$v0,2
    beq	$a7,$v0,.L0db30944
    sdc1	$f7,24($sp)
    # Line 38
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 39
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db30900:
    # Line 43
    bltz	$a4,.L0db3098c
    # Line 44
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 43
    bltz	$a2,.L0db30988
    sd	$ra,64($sp)
    # Line 47
    move	$a0,$t0
    move	$a1,$a4
    mov.s	$f15,$f7
    mov.s	$f16,$f6
    lw	$t9,12568($t0)
    mov.s	$f17,$f5
    mov.s	$f18,$f4
    jal	__glSetError
    move	$a7,$a5
    # Line 48
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db30944:
    # Line 33
    lw	$t9,11856($t0)
    jalr	$t9
    move	$a0,$t0
    ld	$a6,40($sp)
    # Line 35
    ldc1	$f17,0($sp)
    ldc1	$f16,8($sp)
    ldc1	$f15,16($sp)
    ldc1	$f14,24($sp)
    # lw $t9, -17672($gp) # &glBitmap
    ld	$a1,32($sp)
    ld	$a0,48($sp)
    jal	glBitmap
    # Line 34
    sw	$zero,__glBeginMode
    # Line 36
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0db30988:
    # Line 44
    # lw $t9, -27320($gp) # &__glSetError
.L0db3098c:
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1281
    # Line 45
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glim_Bitmap

