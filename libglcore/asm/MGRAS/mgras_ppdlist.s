# Source: ../MGRAS/mgras_ppdlist.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_ppdlist.c
# Total Functions: 27

.text

# Function: __glMgrDlistOptimizer
# Declared: Line 48 (Source lines: 51-51)
# Address: 0x0da8bb3c - 0x0da8bb44 (Size: 8 bytes, Frame: 0)
.globl __glMgrDlistOptimizer
.ent __glMgrDlistOptimizer
__glMgrDlistOptimizer:
    # Line 51
    jr	$ra
    nop
.end __glMgrDlistOptimizer

# Function: __glMgr_Push
# Declared: Line 64 (Source lines: 65-128)
# Address: 0x0da8bb44 - 0x0da8bc88 (Size: 324 bytes, Frame: 192)
.globl __glMgr_Push
.ent __glMgr_Push
__glMgr_Push:
    # Line 65
    addiu	$sp,$sp,-64
    sd	$s8,0($sp)
    move	$s8,$a0
    sd	$gp,8($sp)
    sd	$s0,24($sp)
    # Line 67
    lw	$s0,__glCurrentContext
    sd	$s1,16($sp)
    lui	$s1,0x1
    addu	$s1,$s0,$s1
    lw	$at,-28068($s1)
    # Line 65
    lui	$v0,0x17
    addiu	$v0,$v0,11092
    # Line 67
    beqz	$at,.L0da8bb88
    # Line 65
    addu	$gp,$t9,$v0
    # Line 81
    lbu	$at,-28064($s1)
    beqz	$at,.L0da8bc0c
    # Line 84
    nop	# was lw $t9, -32180($gp) # &__glMgr_InterpretDL
.L0da8bb88:
    # Line 81
    lbu	$v1,3104($s0)
    lw	$v0,31672($s0)
    sltu	$v1,$zero,$v1
    beq	$v0,$v1,.L0da8bc0c
    # Line 84
    nop	# was lw $t9, -32180($gp) # &__glMgr_InterpretDL
    lw	$a2,__glBeginMode
    andi	$a2,$a2,0x1
    bnez	$a2,.L0da8bbe0
    sd	$ra,32($sp)
    lw	$a0,-30164($s1)
    beqz	$a0,.L0da8bbe0
    sd	$ra,32($sp)
    lw	$a1,196($a0)
    beqz	$a1,.L0da8bc68
.L0da8bbc0:
    # Line 90
    la	$at,MgrasPrevVidTexture
    lw	$at,0($at)
    bnez	$at,.L0da8bc34
    # Line 92
    nop	# was lw $t9, -30748($gp) # &mgrTM_VidTexWait
.L0da8bbd0:
    lw	$v0,-28164($s1)
    lw	$v0,484($v0)
    bne	$v0,$a1,.L0da8bc54
    sd	$ra,32($sp)
.L0da8bbe0:
    # Line 128
    # lw $t9, -18692($gp) # &__glMgr_PushTokens
.L0da8bbe4:
    jal	__glMgr_PushTokens
    move	$a0,$s8
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
    # Line 84
    # lw $t9, -32180($gp) # &__glMgr_InterpretDL
.L0da8bc0c:
    sd	$ra,32($sp)
    jal	__glMgr_InterpretDL
    move	$a0,$s8
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8bc34:
    # Line 92
    move	$a0,$s0
    sd	$ra,32($sp)
    jalr	$t9
    li	$a2,1
    lw	$a1,-30164($s1)
    ld	$ra,32($sp)
    b	.L0da8bbd0
    lw	$a1,196($a1)
.L0da8bc54:
    # Line 94
    # lw $t9, -30744($gp) # &mgrTM_DrawSetup
    jal	mgrTM_DrawSetup
    move	$a0,$s0
    b	.L0da8bbe4
    # Line 128
    nop	# was lw $t9, -18692($gp) # &__glMgr_PushTokens
.L0da8bc68:
    # Line 90
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    sd	$ra,32($sp)
    jal	mgrTM_RefreshDim
    nop
    lw	$a1,-30164($s1)
    ld	$ra,32($sp)
    b	.L0da8bbc0
    lw	$a1,196($a1)
.end __glMgr_Push

# Function: Bogus
# Declared: Line 140 (Source lines: 141-143)
# Address: 0x0da8bc88 - 0x0da8bc90 (Size: 8 bytes, Frame: 0)
.ent Bogus
Bogus:
    # Line 143
    jr	$ra
    # Line 141
    move	$v0,$a0
.end Bogus

# Function: __glMgrDlistInitState
# Declared: Line 698 (Source lines: 698-719)
# Address: 0x0da8bc90 - 0x0da8bd38 (Size: 168 bytes, Frame: 32)
.globl __glMgrDlistInitState
.ent __glMgrDlistInitState
__glMgrDlistInitState:
    # Line 698
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 705
    sw	$zero,4140($zero)
    # Line 704
    sw	$zero,4136($zero)
    # Line 703
    sw	$zero,4128($zero)
    # Line 702
    sw	$zero,4132($zero)
    # Line 705
    li	$at,0x9ca5
    addu	$at,$at,$a0
    lbu	$at,0($at)
    # Line 698
    lui	$v0,0x17
    addiu	$v0,$v0,10760
    # Line 705
    beqz	$at,.L0da8bd18
    # Line 698
    addu	$gp,$t9,$v0
    # Line 707
    la	$v1,__glmg_spop
    sw	$v1,4744($a0)
.L0da8bccc:
    # Line 716
    sw	$zero,4776($a0)
    # Line 715
    sw	$zero,4784($a0)
    # Line 714
    sw	$zero,4780($a0)
    # Line 711
    la	$a1,__glMgr_Push
    # Line 713
    sw	$zero,4772($a0)
    # Line 712
    sw	$zero,4768($a0)
    # Line 711
    sw	$a1,4748($a0)
    # Line 717
    lw	$v0,4128($zero)
    blez	$v0,.L0da8bd24
    nop	# was lw $t9, -29228($gp) # &__glSPDlistSpace
.L0da8bcf4:
    sw	$zero,4140($zero)
    ld	$gp,0($sp)
    lw	$a2,4136($zero)
    # Line 719
    addiu	$sp,$sp,32
    # Line 717
    addiu	$at,$v0,-1
    sw	$at,4128($zero)
    addiu	$a2,$a2,4
    # Line 719
    jr	$ra
    # Line 717
    sw	$a2,4136($zero)
.L0da8bd18:
    # Line 709
    la	$v1,__glmg10_spop
    b	.L0da8bccc
    sw	$v1,4744($a0)
.L0da8bd24:
    sd	$ra,8($sp)
    # Line 717
    jal	__glSPDlistSpace
    li	$a0,1
    b	.L0da8bcf4
    ld	$ra,8($sp)
.end __glMgrDlistInitState

# Function: callSetError
# Declared: Line 729 (Source lines: 730-735)
# Address: 0x0da8bd38 - 0x0da8bd7c (Size: 68 bytes, Frame: 48)
.ent callSetError
callSetError:
    # Line 730
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    sd	$gp,16($sp)
    lui	$at,0x17
    addiu	$at,$at,10592
    addu	$gp,$t9,$at
    # Line 734
    # lw $t9, -27320($gp) # &__glSetError
    # Line 730
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 734
    jal	__glSetError
    lw	$a0,0($a0)
    ld	$gp,16($sp)
    # Line 735
    ld	$ra,0($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end callSetError

# Function: __glMgr_dlerror
# Declared: Line 739 (Source lines: 740-750)
# Address: 0x0da8bd7c - 0x0da8bed0 (Size: 340 bytes, Frame: 192)
.globl __glMgr_dlerror
.ent __glMgr_dlerror
__glMgr_dlerror:
    # Line 743
    lw	$a4,4136($zero)
    # Line 740
    addiu	$sp,$sp,-64
    sd	$s1,0($sp)
    # Line 741
    lw	$s1,__glCurrentContext
    sd	$s7,8($sp)
    # Line 740
    move	$s7,$a0
    sd	$gp,16($sp)
    # Line 743
    lw	$v0,4140($zero)
    # Line 740
    lui	$at,0x17
    addiu	$at,$at,10524
    # Line 743
    bnez	$v0,.L0da8bdc8
    # Line 740
    addu	$gp,$t9,$at
    # Line 743
    addiu	$v1,$a4,-4
    lw	$v0,4128($zero)
    sd	$s5,32($sp)
    sw	$v1,4136($zero)
    addiu	$v0,$v0,1
    b	.L0da8be10
    sw	$v0,4128($zero)
.L0da8bdc8:
    sll	$a3,$v0,0x1e
    subu	$a3,$a3,$v0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    sw	$v0,-4($a3)
    sd	$ra,24($sp)
    lw	$a2,4140($zero)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    lw	$a0,4748($s1)
    sll	$a1,$a2,0x1e
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a4
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    sd	$s5,32($sp)
    lw	$v0,4128($zero)
    ld	$ra,24($sp)
.L0da8be10:
    sd	$ra,24($sp)
    # Line 744
    blez	$v0,.L0da8beb8
    move	$s5,$v0
.L0da8be1c:
    # Line 746
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    sd	$s8,40($sp)
    # Line 744
    lw	$s8,4136($zero)
    # Line 746
    la	$a0,sub_0da90000
    # Line 745
    lw	$a4,4776($s1)
    # Line 746
    move	$a1,$s8
    addiu	$a0,$a0,-17096
    # Line 745
    ori	$a4,$a4,0x1
    # Line 746
    jal	__glsplc_AddIlist
    # Line 745
    sw	$a4,4776($s1)
    # Line 748
    addiu	$a0,$s8,4
    # Line 747
    sw	$s7,0($s8)
    ld	$s8,40($sp)
    ld	$s7,8($sp)
    # Line 749
    slti	$a2,$s5,2
    # Line 748
    addiu	$v0,$s5,-1
    ld	$s5,32($sp)
    ld	$ra,24($sp)
    ld	$s1,0($sp)
    sw	$a0,4136($zero)
    # Line 749
    bnez	$a2,.L0da8be94
    # Line 748
    sw	$v0,4128($zero)
.L0da8be74:
    # Line 749
    sw	$zero,4140($zero)
    ld	$gp,16($sp)
    # Line 750
    addiu	$sp,$sp,64
    # Line 749
    addiu	$a3,$v0,-1
    addiu	$at,$a0,4
    sw	$at,4136($zero)
    # Line 750
    jr	$ra
    # Line 749
    sw	$a3,4128($zero)
.L0da8be94:
    li	$a0,1
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    ld	$s8,40($sp)
    ld	$s7,8($sp)
    jal	__glSPDlistSpace
    ld	$s5,32($sp)
    lw	$a0,4136($zero)
    b	.L0da8be74
    ld	$ra,24($sp)
.L0da8beb8:
    # Line 744
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    li	$a0,1
    sd	$s8,40($sp)
    b	.L0da8be1c
    move	$s5,$v0
.end __glMgr_dlerror

# Function: __glSPDlalloc
# Declared: Line 810 (Source lines: 811-905)
# Address: 0x0da8bed0 - 0x0da8c100 (Size: 560 bytes, Frame: 208)
.globl __glSPDlalloc
.ent __glSPDlalloc
__glSPDlalloc:
    # Line 811
    addiu	$sp,$sp,-80
    sd	$a0,8($sp)
    sd	$gp,32($sp)
    lui	$v1,0x17
    sd	$s0,24($sp)
    # Line 813
    lw	$s0,__glCurrentContext
    # Line 811
    addiu	$v1,$v1,10184
    sd	$s1,16($sp)
    # Line 813
    lw	$v0,4776($s0)
    # Line 811
    move	$s1,$a1
    # Line 813
    sltiu	$a3,$s1,241
    andi	$at,$v0,0x4
    beqz	$at,.L0da8bf28
    # Line 811
    addu	$gp,$t9,$v1
    # Line 813
    la	$a2,sub_0dbf0000
    sll	$a0,$s1,0x2
    addiu	$a2,$a2,-11056
    beqz	$a3,.L0da8c0a4
    addu	$a0,$a0,$a2
    lw	$a3,%lo(jtbl_0dbed4d0)($a0)
    jr	$a3
    nop
.L0da8bf28:
    # Line 880
    ori	$a4,$v0,0x1
    sw	$a4,4776($s0)
    # Line 882
    lw	$a5,4140($zero)
    bnez	$a5,.L0da8bf54
    lw	$a4,4136($zero)
    lw	$at,4128($zero)
    addiu	$v1,$a4,-4
    sw	$v1,4136($zero)
    addiu	$at,$at,1
    b	.L0da8bf94
    sw	$at,4128($zero)
.L0da8bf54:
    sll	$a3,$a5,0x1e
    subu	$a3,$a3,$a5
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    sw	$a5,-4($a3)
    sd	$ra,40($sp)
    lw	$a2,4140($zero)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    lw	$a0,4748($s0)
    sll	$a1,$a2,0x1e
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a4
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    ld	$ra,40($sp)
.L0da8bf94:
    lw	$v0,4776($s0)
    # Line 895
    li	$v1,-5
    # Line 882
    andi	$at,$v0,0x4
    beqz	$at,.L0da8bfd4
    # Line 895
    li	$a2,1
    and	$v1,$v0,$v1
    beq	$s1,$a2,.L0da8c0d0
    sw	$v1,4776($s0)
.L0da8bfb4:
    # Line 898
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    move	$a1,$zero
    sd	$ra,40($sp)
    jal	__glsplc_AddIlist
    la	$a0,__glMgrle_CallSetBegin
    sd	$s4,48($sp)
    sd	$s5,56($sp)
    ld	$ra,40($sp)
.L0da8bfd4:
    sd	$s5,56($sp)
    sd	$s4,48($sp)
    # Line 901
    ld	$s4,8($sp)
    lw	$s5,4128($zero)
    sra	$s4,$s4,0x2
    slt	$a2,$s5,$s4
    beqz	$a2,.L0da8c024
    sd	$ra,40($sp)
    slti	$at,$s4,1015
    bnez	$at,.L0da8c008
    move	$a0,$s4
    b	.L0da8c010
    sd	$ra,40($sp)
.L0da8c008:
    li	$a0,1
    sd	$ra,40($sp)
.L0da8c010:
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    nop
    sd	$s2,0($sp)
    move	$s5,$v0
.L0da8c024:
    subu	$s5,$s5,$s4
    # Line 902
    sll	$a2,$s1,0x2
    sd	$s2,0($sp)
    # Line 901
    lw	$s2,4136($zero)
    # Line 902
    lw	$a0,4744($s0)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    move	$a1,$s2
    addu	$a0,$a0,$a2
    jal	__glsplc_AddIlist
    lw	$a0,0($a0)
    # Line 903
    sll	$a0,$s4,0x2
    ld	$s4,48($sp)
    sw	$s5,4128($zero)
    # Line 904
    move	$a1,$s5
    move	$a3,$s5
    ld	$s5,56($sp)
    ld	$ra,40($sp)
    # Line 903
    addu	$a0,$a0,$s2
    # Line 904
    blez	$a3,.L0da8c0dc
    # Line 903
    sw	$a0,4136($zero)
.L0da8c074:
    # Line 904
    sw	$zero,4140($zero)
    ld	$gp,32($sp)
    # Line 905
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    move	$v0,$s2
    ld	$s2,0($sp)
    addiu	$sp,$sp,80
    # Line 904
    addiu	$a2,$a1,-1
    addiu	$a3,$a0,4
    sw	$a3,4136($zero)
    # Line 905
    jr	$ra
    # Line 904
    sw	$a2,4128($zero)
.L0da8c0a4:
    # Line 874
    # lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    sd	$ra,40($sp)
    jal	__glsplc_InvalidOperation
    nop
    # Line 875
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da8c0d0:
    sd	$ra,40($sp)
    b	.L0da8bfb4
    # Line 897
    sw	$zero,4700($s0)
.L0da8c0dc:
    # Line 904
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    li	$a0,1
    ld	$s4,48($sp)
    jal	__glSPDlistSpace
    ld	$s5,56($sp)
    move	$a1,$v0
    lw	$a0,4136($zero)
    b	.L0da8c074
    ld	$ra,40($sp)
.end __glSPDlalloc

# Function: __glSPDlalloc2
# Declared: Line 912 (Source lines: 913-961)
# Address: 0x0da8c100 - 0x0da8c3cc (Size: 716 bytes, Frame: 224)
.globl __glSPDlalloc2
.ent __glSPDlalloc2
__glSPDlalloc2:
    # Line 913
    move	$v0,$a0
    addiu	$sp,$sp,-96
    sd	$s3,40($sp)
    # Line 915
    move	$s3,$zero
    sd	$s1,16($sp)
    sd	$s2,24($sp)
    # Line 916
    lw	$s2,__glCurrentContext
    # Line 913
    move	$s1,$a1
    sd	$gp,32($sp)
    # Line 916
    lw	$a4,4776($s2)
    # Line 913
    lui	$v1,0x17
    addiu	$v1,$v1,9624
    # Line 916
    andi	$at,$a4,0x4
    beqz	$at,.L0da8c180
    # Line 913
    addu	$gp,$t9,$v1
    # Line 916
    slti	$a2,$s1,52
    bnez	$a2,.L0da8c170
    # Line 920
    slti	$a3,$s1,53
    bnez	$a3,.L0da8c180
    slti	$at,$s1,149
    bnez	$at,.L0da8c37c
    slti	$v1,$s1,150
    bnez	$v1,.L0da8c180
    li	$a2,151
    beq	$s1,$a2,.L0da8c184
    # Line 942
    ori	$v1,$a4,0x1
    b	.L0da8c338
    sd	$ra,48($sp)
.L0da8c170:
    # Line 920
    slti	$a3,$s1,23
    bnez	$a3,.L0da8c310
    slti	$at,$s1,24
    beqz	$at,.L0da8c32c
.L0da8c180:
    # Line 942
    ori	$v1,$a4,0x1
.L0da8c184:
    sw	$v1,4776($s2)
    # Line 944
    lw	$a6,4140($zero)
    bnez	$a6,.L0da8c1ac
    lw	$a5,4136($zero)
    lw	$a1,4128($zero)
    addiu	$a0,$a5,-4
    sw	$a0,4136($zero)
    addiu	$a1,$a1,1
    b	.L0da8c1fc
    sw	$a1,4128($zero)
.L0da8c1ac:
    sd	$v0,72($sp)
    sll	$a3,$a6,0x1e
    subu	$a3,$a3,$a6
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a5
    sw	$a6,-4($a3)
    sd	$ra,48($sp)
    lw	$a2,4140($zero)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    lw	$a0,4748($s2)
    sll	$a1,$a2,0x1e
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a5
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    lw	$a1,4128($zero)
    lw	$a0,4136($zero)
    ld	$v0,72($sp)
    ld	$ra,48($sp)
.L0da8c1fc:
    andi	$at,$a0,0x4
    beqzl	$at,.L0da8c218
    sd	$s4,56($sp)
    sd	$s4,56($sp)
    sd	$s5,64($sp)
    # Line 948
    li	$s3,1
    sd	$s4,56($sp)
.L0da8c218:
    sd	$s5,64($sp)
    # Line 950
    sra	$s5,$v0,0x2
    sd	$s5,0($sp)
    addu	$s5,$s5,$s3
    slt	$v1,$a1,$s5
    beqz	$v1,.L0da8c26c
    move	$s4,$a1
    slti	$at,$s5,1015
    bnez	$at,.L0da8c248
    move	$a0,$s5
    b	.L0da8c250
    sd	$ra,48($sp)
.L0da8c248:
    li	$a0,1
    sd	$ra,48($sp)
.L0da8c250:
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    nop
    sd	$s0,8($sp)
    move	$s4,$v0
    lw	$a0,4136($zero)
    ld	$ra,48($sp)
.L0da8c26c:
    sd	$s0,8($sp)
    move	$s0,$a0
    subu	$s4,$s4,$s5
    beqz	$s3,.L0da8c294
    ld	$s5,64($sp)
    andi	$v1,$s0,0x4
    beqz	$v1,.L0da8c294
    ld	$s5,64($sp)
    sd	$ra,48($sp)
    # Line 956
    addiu	$s0,$s0,4
.L0da8c294:
    # Line 958
    move	$a1,$s0
    sd	$ra,48($sp)
    lw	$a0,4744($s2)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    sll	$a2,$s1,0x2
    addu	$a0,$a0,$a2
    jal	__glsplc_AddIlist
    lw	$a0,0($a0)
    # Line 959
    sw	$s4,4128($zero)
    # Line 960
    move	$a1,$s4
    move	$a3,$s4
    # Line 959
    ld	$a0,0($sp)
    ld	$s4,56($sp)
    ld	$ra,48($sp)
    sll	$a0,$a0,0x2
    addu	$a0,$a0,$s0
    # Line 960
    blez	$a3,.L0da8c3ac
    # Line 959
    sw	$a0,4136($zero)
.L0da8c2dc:
    # Line 960
    sw	$zero,4140($zero)
    ld	$gp,32($sp)
    # Line 961
    move	$v0,$s0
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    ld	$s3,40($sp)
    addiu	$sp,$sp,96
    # Line 960
    addiu	$a2,$a1,-1
    addiu	$a3,$a0,4
    sw	$a3,4136($zero)
    # Line 961
    jr	$ra
    # Line 960
    sw	$a2,4128($zero)
.L0da8c310:
    # Line 920
    slti	$at,$s1,14
    bnez	$at,.L0da8c368
    slti	$v1,$s1,15
    beqz	$v1,.L0da8c33c
    # Line 936
    nop	# was lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    b	.L0da8c184
    # Line 942
    ori	$v1,$a4,0x1
.L0da8c32c:
    # Line 920
    li	$a2,48
    beq	$s1,$a2,.L0da8c184
    # Line 942
    ori	$v1,$a4,0x1
.L0da8c338:
    # Line 936
    # lw $t9, -29336($gp) # &__glsplc_InvalidOperation
.L0da8c33c:
    sd	$ra,48($sp)
    jal	__glsplc_InvalidOperation
    nop
    # Line 937
    move	$v0,$zero
    ld	$gp,32($sp)
    ld	$s1,16($sp)
    ld	$ra,48($sp)
    ld	$s2,24($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da8c368:
    # Line 920
    li	$a3,6
    bne	$s1,$a3,.L0da8c33c
    # Line 936
    nop	# was lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    b	.L0da8c184
    # Line 942
    ori	$v1,$a4,0x1
.L0da8c37c:
    # Line 920
    slti	$at,$s1,60
    bnez	$at,.L0da8c398
    slti	$v1,$s1,61
    beqz	$v1,.L0da8c33c
    # Line 936
    nop	# was lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    b	.L0da8c184
    # Line 942
    ori	$v1,$a4,0x1
.L0da8c398:
    # Line 920
    li	$a2,56
    bne	$s1,$a2,.L0da8c33c
    # Line 936
    nop	# was lw $t9, -29336($gp) # &__glsplc_InvalidOperation
    b	.L0da8c184
    # Line 942
    ori	$v1,$a4,0x1
.L0da8c3ac:
    # Line 960
    # lw $t9, -29228($gp) # &__glSPDlistSpace
    li	$a0,1
    jal	__glSPDlistSpace
    ld	$s4,56($sp)
    move	$a1,$v0
    lw	$a0,4136($zero)
    b	.L0da8c2dc
    ld	$ra,48($sp)
.end __glSPDlalloc2

# Function: __glMgrle_CallSetBegin
# Declared: Line 968 (Source lines: 969-974)
# Address: 0x0da8c3cc - 0x0da8c3f4 (Size: 40 bytes, Frame: 0)
.globl __glMgrle_CallSetBegin
.ent __glMgrle_CallSetBegin
__glMgrle_CallSetBegin:
    # Line 972
    li	$a1,1
    # Line 969
    move	$v0,$a0
    # Line 970
    lw	$a0,__glCurrentContext
    # Line 969
    lui	$a2,0x17
    addiu	$a2,$a2,8908
    addu	$at,$t9,$a2
    # Line 973
    la	$v1,__glMgrEndGeneric
    # Line 972
    sw	$a1,__glBeginMode
    # Line 974
    jr	$ra
    # Line 973
    sw	$v1,12140($a0)
.end __glMgrle_CallSetBegin

# Function: __glMgrle_CallUnsetBegin
# Declared: Line 978 (Source lines: 979-984)
# Address: 0x0da8c3f4 - 0x0da8c418 (Size: 36 bytes, Frame: 0)
.globl __glMgrle_CallUnsetBegin
.ent __glMgrle_CallUnsetBegin
__glMgrle_CallUnsetBegin:
    # Line 979
    move	$v0,$a0
    # Line 980
    lw	$a1,__glCurrentContext
    # Line 979
    lui	$a2,0x17
    addiu	$a2,$a2,8868
    addu	$at,$t9,$a2
    # Line 983
    la	$v1,__glNop
    # Line 982
    sw	$zero,__glBeginMode
    # Line 984
    jr	$ra
    # Line 983
    sw	$v1,12140($a1)
.end __glMgrle_CallUnsetBegin

# Function: __glsplc_AddSentinel
# Declared: Line 992 (Source lines: 993-1002)
# Address: 0x0da8c418 - 0x0da8c4e4 (Size: 204 bytes, Frame: 32)
.globl __glsplc_AddSentinel
.ent __glsplc_AddSentinel
__glsplc_AddSentinel:
    # Line 993
    addiu	$sp,$sp,-32
    sd	$s7,0($sp)
    # Line 994
    lw	$s7,__glCurrentContext
    sd	$gp,8($sp)
    # Line 993
    lui	$at,0x17
    # Line 995
    lw	$a3,4136($zero)
    lw	$a4,4140($zero)
    # Line 993
    addiu	$at,$at,8832
    # Line 995
    bnez	$a4,.L0da8c458
    # Line 993
    addu	$gp,$t9,$at
    # Line 995
    addiu	$v1,$a3,-4
    lw	$v0,4128($zero)
    sw	$v1,4136($zero)
    addiu	$v0,$v0,1
    b	.L0da8c498
    sw	$v0,4128($zero)
.L0da8c458:
    sll	$a5,$a4,0x1e
    subu	$a5,$a5,$a4
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a3
    sw	$a4,-4($a5)
    sd	$ra,16($sp)
    lw	$a2,4140($zero)
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    lw	$a0,4748($s7)
    sll	$a1,$a2,0x1e
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a3
    jal	__glsplc_AddIlist
    addiu	$a1,$a1,-4
    ld	$ra,16($sp)
.L0da8c498:
    lw	$a3,4776($s7)
    andi	$at,$a3,0x4
    beqz	$at,.L0da8c4c0
    sd	$ra,16($sp)
    # Line 999
    move	$a1,$zero
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    la	$a0,__glMgrle_CallSetBegin
    # Line 998
    ori	$v0,$a3,0x1
    # Line 999
    jal	__glsplc_AddIlist
    # Line 998
    sw	$v0,4776($s7)
.L0da8c4c0:
    # Line 1001
    # lw $t9, -29224($gp) # &__glsplc_AddIlist
    move	$a1,$zero
    la	$a0,__glsple_Sentinel
    jal	__glsplc_AddIlist
    ld	$s7,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    # Line 1002
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_AddSentinel

# Function: __glMgrle_CallList
# Declared: Line 1009 (Source lines: 1010-1055)
# Address: 0x0da8c4e4 - 0x0da8c5a8 (Size: 196 bytes, Frame: 192)
.globl __glMgrle_CallList
.ent __glMgrle_CallList
__glMgrle_CallList:
    # Line 1010
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    sd	$s1,16($sp)
    # Line 1017
    lw	$s1,__glCurrentContext
    # Line 1010
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 1017
    lw	$at,4680($s1)
    # Line 1010
    lui	$v0,0x17
    addiu	$v0,$v0,8628
    # Line 1017
    slti	$at,$at,64
    bnez	$at,.L0da8c534
    # Line 1010
    addu	$gp,$t9,$v0
    # Line 1024
    li	$v1,128
    sw	$v1,4680($s1)
.L0da8c51c:
    ld	$gp,32($sp)
    # Line 1055
    addiu	$v0,$s0,4
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8c534:
    # Line 1030
    move	$a0,$s1
    # lw $t9, -26220($gp) # &__glNamesLockData
    lw	$a2,0($s0)
    sd	$ra,40($sp)
    jal	__glNamesLockData
    lw	$a1,4628($s1)
    sd	$v0,8($sp)
    beqz	$v0,.L0da8c51c
    ld	$ra,40($sp)
    # Line 1033
    lw	$a3,4680($s1)
    # Line 1041
    ld	$a1,8($sp)
    # Line 1033
    addiu	$a3,$a3,1
    sw	$a3,4680($s1)
    # Line 1041
    lw	$t9,8($a1)
    # Line 1037
    lw	$a2,31672($s1)
    # Line 1041
    move	$a0,$s1
    jalr	$t9
    sd	$a2,0($sp)
    ld	$a1,8($sp)
    # Line 1049
    move	$a0,$s1
    # Line 1044
    ld	$a5,0($sp)
    # Line 1047
    lw	$a4,4680($s1)
    # Line 1049
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    # Line 1044
    sw	$a5,31672($s1)
    # Line 1047
    addiu	$a4,$a4,-1
    # Line 1049
    jal	__glNamesUnlockData
    # Line 1047
    sw	$a4,4680($s1)
    b	.L0da8c51c
    ld	$ra,40($sp)
.end __glMgrle_CallList

# Function: __glMgrle_BindTextureEXT
# Declared: Line 1063 (Source lines: 1064-1084)
# Address: 0x0da8c5a8 - 0x0da8c698 (Size: 240 bytes, Frame: 192)
.globl __glMgrle_BindTextureEXT
.ent __glMgrle_BindTextureEXT
__glMgrle_BindTextureEXT:
    # Line 1071
    lw	$a1,4($a0)
    # Line 1064
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 1068
    lw	$s0,__glCurrentContext
    sd	$gp,32($sp)
    # Line 1064
    lui	$at,0x17
    addiu	$at,$at,8432
    addu	$gp,$t9,$at
    # Line 1071
    # lw $t9, -31316($gp) # &__glMgrim_BindTextureEXT
    sd	$a0,16($sp)
    sd	$ra,8($sp)
    jal	__glMgrim_BindTextureEXT
    lw	$a0,0($a0)
    lui	$a0,0x1
    addu	$a0,$s0,$a0
    sd	$a0,0($sp)
    lw	$a0,-30164($a0)
    sd	$s1,40($sp)
    beqz	$a0,.L0da8c628
    ld	$ra,8($sp)
    lw	$a1,196($a0)
    beqz	$a1,.L0da8c674
.L0da8c600:
    # Line 1077
    la	$a2,MgrasPrevVidTexture
    lw	$a2,0($a2)
    sd	$s1,40($sp)
    bnez	$a2,.L0da8c644
    move	$s1,$a1
.L0da8c614:
    ld	$at,0($sp)
    # Line 1079
    lw	$at,-28164($at)
    lw	$at,484($at)
    bne	$at,$s1,.L0da8c660
    # Line 1081
    nop	# was lw $t9, -30744($gp) # &mgrTM_DrawSetup
.L0da8c628:
    ld	$gp,32($sp)
    # Line 1084
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$v0,16($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,8
.L0da8c644:
    # Line 1079
    # lw $t9, -30748($gp) # &mgrTM_VidTexWait
    move	$a0,$s0
    move	$a1,$s1
    jal	mgrTM_VidTexWait
    li	$a2,1
    b	.L0da8c614
    ld	$ra,8($sp)
.L0da8c660:
    # Line 1081
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    b	.L0da8c628
    ld	$ra,8($sp)
.L0da8c674:
    # Line 1076
    # lw $t9, -30792($gp) # &mgrTM_RefreshDim
    jal	mgrTM_RefreshDim
    nop
    ld	$a1,0($sp)
    sd	$s1,40($sp)
    lw	$a1,-30164($a1)
    ld	$ra,8($sp)
    b	.L0da8c600
    lw	$a1,196($a1)
.end __glMgrle_BindTextureEXT

# Function: __glMgrim_IsList
# Declared: Line 1093 (Source lines: 1094-1129)
# Address: 0x0da8c698 - 0x0da8c77c (Size: 228 bytes, Frame: 192)
.globl __glMgrim_IsList
.ent __glMgrim_IsList
__glMgrim_IsList:
    # Line 1100
    li	$v0,1
    # Line 1094
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$s0,32($sp)
    # Line 1100
    lw	$s0,__glCurrentContext
    sd	$s1,24($sp)
    # Line 1094
    move	$s1,$a0
    sd	$gp,16($sp)
    # Line 1100
    lw	$at,__glBeginMode
    # Line 1094
    lui	$v1,0x17
    addiu	$v1,$v1,8192
    # Line 1100
    beq	$at,$v0,.L0da8c754
    # Line 1094
    addu	$gp,$t9,$v1
    # Line 1115
    move	$a2,$s1
    # lw $t9, -26196($gp) # &__glNamesIsName
    # Line 1103
    lw	$a1,4628($s0)
    # Line 1115
    move	$a0,$s0
    jal	__glNamesIsName
    sd	$a1,8($sp)
    ld	$ra,40($sp)
    andi	$a4,$v0,0xff
    andi	$a3,$v0,0xff
    beqz	$a3,.L0da8c73c
    sd	$a4,0($sp)
    # Line 1118
    # lw $t9, -26220($gp) # &__glNamesLockData
    move	$a0,$s0
    ld	$a1,8($sp)
    jal	__glNamesLockData
    move	$a2,$s1
    beqz	$v0,.L0da8c73c
    ld	$ra,40($sp)
    lw	$at,32($v0)
    andi	$at,$at,0x8
    beqz	$at,.L0da8c72c
    # Line 1123
    nop	# was lw $t9, -26212($gp) # &__glNamesUnlockData
    sd	$zero,0($sp)
    # lw $t9, -26212($gp) # &__glNamesUnlockData
.L0da8c72c:
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$v0
    ld	$ra,40($sp)
.L0da8c73c:
    ld	$v0,0($sp)
    ld	$gp,16($sp)
    # Line 1129
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8c754:
    # Line 1100
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    move	$v0,$zero
    ld	$gp,16($sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_IsList

# Function: __glMgrExecuteDlist
# Declared: Line 1139 (Source lines: 1140-1154)
# Address: 0x0da8c77c - 0x0da8c7c4 (Size: 72 bytes, Frame: 32)
.globl __glMgrExecuteDlist
.ent __glMgrExecuteDlist
__glMgrExecuteDlist:
    # Line 1140
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    sd	$gp,8($sp)
    # Line 1151
    lw	$at,20($a1)
    # Line 1140
    lui	$v0,0x17
    addiu	$v0,$v0,7964
    # Line 1151
    lw	$at,12($at)
    # Line 1140
    addu	$gp,$t9,$v0
    # Line 1153
    # lw $t9, -18672($gp) # &__glSPInterpret
    # Line 1151
    andi	$at,$at,0x10
    sltu	$at,$zero,$at
    sw	$at,31672($a0)
    # Line 1153
    jal	__glSPInterpret
    lw	$a0,16($a1)
    # Line 1154
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrExecuteDlist

# Function: InvalidateRecurse
# Declared: Line 1171 (Source lines: 1172-1205)
# Address: 0x0da8c7c4 - 0x0da8c880 (Size: 188 bytes, Frame: 192)
.ent InvalidateRecurse
InvalidateRecurse:
.L0da8c7c4:
    # Line 1172
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    # Line 1177
    lw	$s0,20($a0)
    sd	$ra,24($sp)
    # Line 1181
    lw	$a3,36($s0)
    sd	$s1,8($sp)
    # Line 1172
    move	$s1,$a0
    # Line 1181
    beqz	$a3,.L0da8c844
    # Line 1179
    sw	$a1,44($s0)
    sd	$s3,32($sp)
    sd	$ra,24($sp)
    # Line 1181
    addiu	$at,$a1,1
    b	.L0da8c810
    sd	$at,0($sp)
.L0da8c7fc:
    addiu	$t9,$t9,-14396
    # Line 1193
    bal .L0da8c7c4
    ld	$a1,0($sp)
.L0da8c808:
    # Line 1195
    beqz	$s3,.L0da8c840
    move	$a3,$s3
.L0da8c810:
    # Line 1184
    lw	$a0,4($a3)
    lw	$a0,0($a0)
    # Line 1185
    lw	$a1,20($a0)
    # Line 1188
    lw	$at,44($a1)
    bnez	$at,.L0da8c808
    lw	$s3,8($a3)
    lw	$a2,12($a1)
    andi	$a2,$a2,0x1
    beqz	$a2,.L0da8c808
    nop
    b	.L0da8c7fc
    nop	# was lw $t9, -32736($gp) # &sub_0da90000
.L0da8c840:
    ld	$s3,32($sp)
.L0da8c844:
    # Line 1200
    # lw $t9, -31688($gp) # &__glMgrDLNodeUnlink
    addiu	$a0,$s0,20
    bal __glMgrDLNodeUnlink
    # Line 1198
    sw	$zero,44($s0)
    # Line 1202
    lw	$at,12($s0)
    # Line 1204
    la	$ra,__glMgrSPValidateDLExec
    # Line 1202
    li	$v0,-16
    and	$at,$at,$v0
    sw	$at,12($s0)
    # Line 1204
    sw	$ra,8($s1)
    # Line 1205
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end InvalidateRecurse

# Function: __glMgrDLInvalidate
# Declared: Line 1214 (Source lines: 1215-1227)
# Address: 0x0da8c880 - 0x0da8c8cc (Size: 76 bytes, Frame: 32)
.globl __glMgrDLInvalidate
.ent __glMgrDLInvalidate
__glMgrDLInvalidate:
    # Line 1215
    move	$a0,$a1
    lw	$at,20($a1)
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,12($at)
    lui	$v0,0x17
    addiu	$v0,$v0,7704
    andi	$at,$at,0x1
    beqz	$at,.L0da8c8c0
    addu	$gp,$t9,$v0
    # Line 1226
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-14396
    bal __glMgrExecuteDlist
    li	$a1,1
    ld	$ra,8($sp)
.L0da8c8c0:
    ld	$gp,0($sp)
    # Line 1227
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrDLInvalidate

# Function: __glMgrSPFreeDlist
# Declared: Line 1234 (Source lines: 1235-1247)
# Address: 0x0da8c8cc - 0x0da8c944 (Size: 120 bytes, Frame: 48)
.globl __glMgrSPFreeDlist
.ent __glMgrSPFreeDlist
__glMgrSPFreeDlist:
    # Line 1235
    addiu	$sp,$sp,-48
    sd	$s0,0($sp)
    move	$s0,$a1
    sd	$gp,24($sp)
    lui	$at,0x17
    addiu	$at,$at,7628
    addu	$gp,$t9,$at
    # Line 1237
    # lw $t9, -31616($gp) # &__glMgrDLBreakdownDMA
    sd	$s1,8($sp)
    sd	$ra,16($sp)
    bal __glMgrDLBreakdownDMA
    # Line 1235
    move	$s1,$a0
    # Line 1240
    # lw $t9, -31732($gp) # &__glMgrDLInvalidate
    move	$a0,$s1
    bal __glMgrDLInvalidate
    move	$a1,$s0
    # Line 1243
    # lw $t9, -31676($gp) # &__glMgrDLTexFree
    move	$a0,$s1
    bal __glMgrDLTexFree
    move	$a1,$s0
    # Line 1246
    # lw $t9, -29236($gp) # &__glSPFreeDlist
    move	$a0,$s1
    jal	__glSPFreeDlist
    move	$a1,$s0
    ld	$gp,24($sp)
    # Line 1247
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrSPFreeDlist

# Function: __glMgrFreeDLTex
# Declared: Line 1254 (Source lines: 1255-1271)
# Address: 0x0da8c944 - 0x0da8c9d4 (Size: 144 bytes, Frame: 192)
.globl __glMgrFreeDLTex
.ent __glMgrFreeDLTex
__glMgrFreeDLTex:
    # Line 1255
    addiu	$sp,$sp,-64
    sd	$s5,24($sp)
    sd	$ra,32($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$gp,16($sp)
    lui	$at,0x17
    addiu	$at,$at,7508
    beqz	$a1,.L0da8c9bc
    addu	$gp,$t9,$at
    # Line 1261
    # lw $t9, -31612($gp) # &__glMgrTexBreakdownDMA
    sd	$s5,24($sp)
    move	$a0,$s0
    bal __glMgrTexBreakdownDMA
    move	$a1,$s1
    # Line 1264
    lw	$s5,24($s1)
    beqz	$s5,.L0da8c9bc
    ld	$ra,32($sp)
    ld	$s1,8($sp)
    # Line 1267
    # lw $t9, -31732($gp) # &__glMgrDLInvalidate
.L0da8c99c:
    lw	$a1,4($s5)
    move	$a0,$s0
    bal __glMgrDLInvalidate
    lw	$a1,0($a1)
    # Line 1268
    lw	$s5,8($s5)
    bnez	$s5,.L0da8c99c
    # Line 1267
    nop	# was lw $t9, -31732($gp) # &__glMgrDLInvalidate
    ld	$ra,32($sp)
.L0da8c9bc:
    ld	$gp,16($sp)
    # Line 1271
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$s5,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrFreeDLTex

# Function: __glMgrDLNotResident
# Declared: Line 1285 (Source lines: 1286-1315)
# Address: 0x0da8c9d4 - 0x0da8ca74 (Size: 160 bytes, Frame: 192)
.globl __glMgrDLNotResident
.ent __glMgrDLNotResident
__glMgrDLNotResident:
.L0da8c9d4:
    # Line 1286
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$s0,0($sp)
    sd	$s1,16($sp)
    # Line 1294
    lw	$s1,20($a1)
    # Line 1286
    move	$s0,$a0
    sd	$gp,24($sp)
    # Line 1294
    lw	$a3,12($s1)
    # Line 1286
    lui	$v0,0x17
    addiu	$v0,$v0,7364
    # Line 1294
    andi	$at,$a3,0x8
    beqz	$at,.L0da8ca60
    # Line 1286
    addu	$gp,$t9,$v0
    sd	$s2,32($sp)
    # Line 1303
    lw	$s2,36($s1)
    beqzl	$s2,.L0da8ca48
    # Line 1313
    ld	$s2,8($sp)
    sd	$ra,40($sp)
    # Line 1307
    # lw $t9, -31720($gp) # &__glMgrDLNotResident
.L0da8ca20:
    lw	$a1,4($s2)
    move	$a0,$s0
    bal .L0da8c9d4
    lw	$a1,0($a1)
    # Line 1308
    lw	$s2,8($s2)
    bnez	$s2,.L0da8ca20
    # Line 1307
    nop	# was lw $t9, -31720($gp) # &__glMgrDLNotResident
    # Line 1308
    lw	$a3,12($s1)
    ld	$ra,40($sp)
    # Line 1313
    ld	$s2,8($sp)
.L0da8ca48:
    la	$a2,__glMgrExecuteDlist
    # Line 1311
    li	$at,-9
    and	$at,$a3,$at
    sw	$at,12($s1)
    # Line 1313
    sw	$a2,8($s2)
    ld	$s2,32($sp)
.L0da8ca60:
    ld	$gp,24($sp)
    # Line 1315
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrDLNotResident

# Function: makePullState
# Declared: Line 1322 (Source lines: 1323-1347)
# Address: 0x0da8ca74 - 0x0da8cb0c (Size: 152 bytes, Frame: 192)
.ent makePullState
makePullState:
    # Line 1323
    addiu	$sp,$sp,-64
    sd	$s8,24($sp)
    move	$s8,$a2
    sd	$s0,0($sp)
    sd	$s1,8($sp)
    move	$s1,$a0
    # Line 1328
    lw	$t9,4716($s1)
    # Line 1323
    move	$s0,$a1
    sd	$ra,16($sp)
    # Line 1328
    jalr	$t9
    li	$a1,60
    # Line 1336
    sw	$v0,20($s0)
    # Line 1339
    sw	$zero,4($v0)
    # Line 1338
    sw	$zero,0($v0)
    # Line 1339
    lbu	$at,3104($s1)
    beqz	$at,.L0da8cb04
    # Line 1340
    move	$a5,$zero
.L0da8cab8:
    # Line 1345
    move	$a2,$s0
    move	$a1,$s8
    addiu	$a0,$v0,20
    # Line 1343
    sw	$zero,56($v0)
    # Line 1345
    # lw $t9, -31700($gp) # &__glMgrDLNodeInit
    # Line 1342
    sw	$zero,52($v0)
    # Line 1341
    sw	$zero,16($v0)
    # Line 1345
    bal __glMgrDLNodeInit
    # Line 1340
    sw	$a5,12($v0)
    # Line 1346
    # lw $t9, -31684($gp) # &__glMgrDLTexInit
    move	$a0,$s1
    move	$a1,$s0
    bal __glMgrDLTexInit
    ld	$s8,24($sp)
    ld	$ra,16($sp)
    # Line 1347
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8cb04:
    b	.L0da8cab8
    # Line 1340
    li	$a5,16
.end makePullState

# Function: __glMgrDLLookupDL
# Declared: Line 1358 (Source lines: 1359-1409)
# Address: 0x0da8cb0c - 0x0da8cc5c (Size: 336 bytes, Frame: 192)
.ent __glMgrDLLookupDL
__glMgrDLLookupDL:
    # Line 1365
    move	$a2,$a1
    # Line 1359
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    sd	$s2,32($sp)
    move	$s2,$a1
    sd	$ra,0($sp)
    # Line 1365
    # lw $t9, -26196($gp) # &__glNamesIsName
    sd	$s1,24($sp)
    # Line 1359
    move	$s1,$a0
    # Line 1365
    jal	__glNamesIsName
    lw	$a1,4628($s1)
    andi	$at,$v0,0xff
    beqz	$at,.L0da8cb64
    andi	$a3,$v0,0xff
    sd	$a3,8($sp)
    # Line 1368
    # lw $t9, -26220($gp) # &__glNamesLockData
    move	$a0,$s1
    move	$a2,$s2
    jal	__glNamesLockData
    lw	$a1,4628($s1)
    b	.L0da8cb6c
    move	$s0,$v0
.L0da8cb64:
    # Line 1370
    move	$s0,$zero
    sd	$a3,8($sp)
.L0da8cb6c:
    beqz	$s0,.L0da8cb98
    # Line 1373
    nop	# was lw $t9, -26212($gp) # &__glNamesUnlockData
    move	$a0,$s1
    jal	__glNamesUnlockData
    move	$a1,$s0
    # Line 1375
    beqz	$s0,.L0da8cb98
    ld	$ra,0($sp)
    la	$a4,__glEmptyFreeDlist
    lw	$v1,4($s0)
    bne	$v1,$a4,.L0da8cc3c
    # Line 1409
    move	$v0,$s0
.L0da8cb98:
    # Line 1377
    lw	$t9,4716($s1)
    move	$a0,$s1
    jalr	$t9
    li	$a1,72
    sd	$v0,16($sp)
    move	$s0,$v0
    # Line 1391
    ld	$a5,8($sp)
    # Line 1384
    li	$a4,1
    sw	$a4,0($v0)
    # Line 1386
    la	$v1,__glEmptyExecuteDlist
    # Line 1385
    lw	$at,4668($s1)
    # Line 1391
    sw	$zero,28($v0)
    # Line 1390
    sw	$zero,24($v0)
    # Line 1389
    sw	$zero,20($v0)
    # Line 1388
    sw	$zero,16($v0)
    # Line 1387
    sw	$zero,12($v0)
    # Line 1386
    sw	$v1,8($v0)
    # Line 1391
    beqz	$a5,.L0da8cc50
    # Line 1385
    sw	$at,4($v0)
    # Line 1392
    move	$a6,$zero
.L0da8cbe8:
    # Line 1398
    move	$a2,$s2
    ld	$a5,16($sp)
    move	$a0,$s1
    # Line 1395
    lwc1	$f0,_lit_3f800000
    # Line 1398
    move	$a1,$a5
    # Line 1394
    sw	$zero,40($a5)
    # Line 1393
    sw	$zero,36($a5)
    # Line 1398
    # lw $t9, -32736($gp) # &sub_0da90000
    # Line 1392
    sw	$a6,32($a5)
    # Line 1396
    swc1	$f0,48($a5)
    # Line 1398
    addiu	$t9,$t9,-13708
    bal __glMgrDLNotResident
    # Line 1395
    swc1	$f0,44($a5)
    # Line 1400
    move	$a0,$s1
    # lw $t9, -26224($gp) # &__glNamesNewData
    ld	$a3,16($sp)
    move	$a2,$s2
    jal	__glNamesNewData
    lw	$a1,4628($s1)
    ld	$ra,0($sp)
    # Line 1409
    move	$v0,$s0
.L0da8cc3c:
    ld	$s0,40($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da8cc50:
    # Line 1392
    li	$a6,8
    b	.L0da8cbe8
    nop
.end __glMgrDLLookupDL

# Function: __glMgrDLLookupTex
# Declared: Line 1417 (Source lines: 1418-1488)
# Address: 0x0da8cc5c - 0x0da8ce2c (Size: 464 bytes, Frame: 240)
.globl __glMgrDLLookupTex
.ent __glMgrDLLookupTex
__glMgrDLLookupTex:
    # Line 1427
    li	$at,3552
    # Line 1418
    addiu	$sp,$sp,-112
    sd	$s3,48($sp)
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$s4,24($sp)
    move	$s4,$a0
    sd	$s2,8($sp)
    move	$s2,$a2
    sd	$gp,40($sp)
    lui	$v0,0x17
    addiu	$v0,$v0,6716
    # Line 1427
    beq	$a2,$at,.L0da8cd94
    # Line 1418
    addu	$gp,$t9,$v0
    # Line 1427
    li	$v1,3553
    beq	$s2,$v1,.L0da8cd9c
    li	$a3,0x806f
    beq	$s2,$a3,.L0da8cda8
    # Line 1436
    li	$at,4
.L0da8cca8:
    # Line 1441
    bnezl	$s0,.L0da8cce4
    sd	$s1,56($sp)
    # Line 1444
    lw	$at,0($sp)
    sd	$s1,56($sp)
    sll	$s1,$at,0x2
    subu	$s1,$s1,$at
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$at
    sll	$s1,$s1,0x2
    subu	$s1,$s1,$at
    li	$at,0x8a30
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$s4
    b	.L0da8cd14
    addu	$s1,$s1,$at
.L0da8cce4:
    # Line 1447
    move	$a0,$s4
    move	$a2,$s0
    # lw $t9, -26220($gp) # &__glNamesLockData
    li	$a1,0x91fc
    addu	$a1,$a1,$s4
    lw	$a1,0($a1)
    sd	$ra,64($sp)
    jal	__glNamesLockData
    lw	$a1,1180($a1)
    move	$s1,$v0
    beqz	$v0,.L0da8cdb0
    ld	$ra,64($sp)
.L0da8cd14:
    # Line 1454
    lw	$s3,8($s1)
    beqz	$s3,.L0da8cd3c
    # Line 1458
    lw	$v1,0($sp)
    # Line 1454
    lw	$a3,4($s3)
    move	$a4,$s2
    beq	$a3,$a4,.L0da8cd50
    ld	$s2,8($sp)
    # Line 1458
    move	$s3,$zero
    b	.L0da8cd50
    ld	$s2,8($sp)
.L0da8cd3c:
    lbu	$at,179($s1)
    beql	$at,$v1,.L0da8cdd0
    # Line 1464
    lw	$t9,0($s4)
.L0da8cd48:
    # Line 1482
    sw	$s3,8($s1)
    ld	$s2,8($sp)
.L0da8cd50:
    move	$a3,$s0
    beqz	$a3,.L0da8cd78
    ld	$s0,32($sp)
    # Line 1486
    move	$a0,$s4
    # lw $t9, -26212($gp) # &__glNamesUnlockData
    move	$a1,$s1
    sd	$ra,64($sp)
    jal	__glNamesUnlockData
    ld	$s0,32($sp)
    ld	$ra,64($sp)
.L0da8cd78:
    ld	$gp,40($sp)
    # Line 1488
    ld	$s1,56($sp)
    move	$v0,$s3
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da8cd94:
    # Line 1431
    b	.L0da8cca8
    # Line 1430
    sw	$zero,0($sp)
.L0da8cd9c:
    # Line 1433
    li	$a4,2
    # Line 1434
    b	.L0da8cca8
    # Line 1433
    sw	$a4,0($sp)
.L0da8cda8:
    b	.L0da8cca8
    # Line 1436
    sw	$at,0($sp)
.L0da8cdb0:
    # Line 1450
    # lw $t9, -31320($gp) # &__glMgr_NewTexObj
    move	$a0,$s4
    move	$a1,$s0
    jal	__glMgr_NewTexObj
    lw	$a2,0($sp)
    move	$s1,$v0
    b	.L0da8cd14
    ld	$ra,64($sp)
.L0da8cdd0:
    # Line 1464
    move	$a0,$s4
    sd	$ra,64($sp)
    jalr	$t9
    li	$a1,52
    sd	$v0,16($sp)
    move	$s3,$v0
    beqz	$v0,.L0da8cd48
    ld	$ra,64($sp)
    # Line 1469
    move	$a2,$zero
    ld	$v1,16($sp)
    move	$a1,$s0
    # lw $t9, -31700($gp) # &__glMgrDLNodeInit
    addiu	$a0,$v1,8
    # Line 1468
    sw	$s2,4($v1)
    # Line 1469
    bal __glMgrDLNodeInit
    # Line 1467
    sw	$s0,0($v1)
    ld	$a3,16($sp)
    ld	$ra,64($sp)
    # Line 1473
    sw	$zero,48($a3)
    # Line 1472
    sw	$zero,44($a3)
    # Line 1471
    sw	$zero,40($a3)
    b	.L0da8cd48
    # Line 1470
    sw	$zero,36($a3)
.end __glMgrDLLookupTex

# Function: ValidateRecurse
# Declared: Line 1506 (Source lines: 1507-1739)
# Address: 0x0da8ce2c - 0x0da8d3c4 (Size: 1432 bytes, Frame: 176)
.ent ValidateRecurse
ValidateRecurse:
.L0da8ce2c:
    # Line 1507
    addiu	$sp,$sp,-176
    sd	$a0,40($sp)
    sd	$s2,64($sp)
    move	$s2,$a1
    # Line 1518
    lw	$at,32($a1)
    sd	$a2,0($sp)
    sd	$s0,72($sp)
    andi	$at,$at,0x1
    beqz	$at,.L0da8ceb4
    lw	$s0,20($a1)
.L0da8ce54:
    # Line 1710
    lw	$v1,12($s2)
    # Line 1736
    la	$a4,__glEmptyExecuteDlist
    # Line 1710
    beqz	$v1,.L0da8ceac
    # Line 1731
    la	$at,__glMgrDLExecuteDMA
    # Line 1710
    lw	$a3,12($s0)
    nor	$a3,$a3,$zero
    andi	$a3,$a3,0xe
    bnez	$a3,.L0da8ce8c
    # Line 1733
    la	$v1,__glMgrExecuteDlist
    # Line 1710
    lw	$a4,4($s0)
    bltzl	$a4,.L0da8ce90
    # Line 1733
    sw	$v1,8($s2)
    # Line 1731
    b	.L0da8ce90
    sw	$at,8($s2)
.L0da8ce8c:
    # Line 1733
    sw	$v1,8($s2)
.L0da8ce90:
    # Line 1738
    lw	$a3,12($s0)
    # Line 1739
    ld	$s2,64($sp)
    # Line 1738
    ori	$a3,$a3,0x1
    sw	$a3,12($s0)
    # Line 1739
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da8ceac:
    b	.L0da8ce90
    # Line 1736
    sw	$a4,8($s2)
.L0da8ceb4:
    sd	$s1,112($sp)
    # Line 1545
    lw	$at,12($s0)
    # Line 1552
    move	$s1,$zero
    sd	$zero,24($sp)
    # Line 1545
    ori	$at,$at,0x2
    sw	$at,12($s0)
    sd	$zero,16($sp)
    # Line 1552
    lw	$a2,24($s2)
    sd	$zero,32($sp)
    la	$a0,__glMgrle_CallList
    blez	$a2,.L0da8d288
    # Line 1551
    lw	$v0,16($s2)
    # Line 1552
    addiu	$v1,$s0,20
    la	$a1,__glMgrle_BindTextureEXT
    sd	$ra,120($sp)
    sd	$s3,128($sp)
    move	$s3,$v0
    b	.L0da8cf44
    sd	$v1,8($sp)
.L0da8cf00:
    # lw $t9, -32736($gp) # &sub_0da90000
    ld	$a0,40($sp)
    # Line 1558
    lw	$a1,4($s3)
    addiu	$t9,$t9,-13556
    bal __glMgrDLNotResident
    lw	$a1,0($a1)
    # Line 1562
    # lw $t9, -31696($gp) # &__glMgrDLNodeCall
    lw	$a1,20($v0)
    ld	$a0,8($sp)
    bal __glMgrDLNodeCall
    addiu	$a1,$a1,20
    la	$a0,__glMgrle_CallList
    la	$a1,__glMgrle_BindTextureEXT
    lw	$a2,24($s2)
.L0da8cf38:
    # Line 1552
    slt	$a3,$s1,$a2
.L0da8cf3c:
    beqz	$a3,.L0da8cf98
    addiu	$s3,$s3,8
.L0da8cf44:
    lw	$v0,0($s3)
    beq	$v0,$a0,.L0da8cf00
    addiu	$s1,$s1,1
    # Line 1562
    bne	$v0,$a1,.L0da8cf3c
    # Line 1552
    slt	$a3,$s1,$a2
    ld	$a0,40($sp)
    # Line 1567
    li	$a2,1
    # Line 1571
    lw	$a1,4($s3)
    # lw $t9, -31716($gp) # &__glMgrDLLookupTex
    sd	$a2,32($sp)
    lw	$a2,0($a1)
    bal __glMgrDLLookupTex
    lw	$a1,4($a1)
    la	$a0,__glMgrle_CallList
    la	$a1,__glMgrle_BindTextureEXT
    bnez	$v0,.L0da8d118
    sd	$v0,56($sp)
    # Line 1587
    li	$a3,1
    sd	$a3,16($sp)
.L0da8cf90:
    b	.L0da8cf38
    lw	$a2,24($s2)
.L0da8cf98:
    ld	$s3,128($sp)
.L0da8cf9c:
    # Line 1590
    # lw $t9, -31692($gp) # &__glMgrDLNodeLink
    bal __glMgrDLNodeLink
    ld	$a0,8($sp)
    # Line 1603
    move	$a1,$zero
    move	$v0,$zero
    # Line 1607
    move	$s1,$zero
    lw	$a5,28($s0)
    # Line 1605
    ld	$a4,0($sp)
    ld	$ra,120($sp)
    # Line 1607
    beqz	$a5,.L0da8d050
    # Line 1605
    sw	$a4,44($s0)
    # Line 1607
    ld	$at,0($sp)
    sd	$s3,128($sp)
    move	$s3,$zero
    addiu	$at,$at,1
    b	.L0da8cff8
    sd	$at,48($sp)
.L0da8cfe0:
    # Line 1629
    beqz	$v0,.L0da8d0c4
    nop
.L0da8cfe8:
    # Line 1636
    lw	$a5,28($s0)
.L0da8cfec:
    # Line 1607
    sltu	$v1,$s1,$a5
    beqz	$v1,.L0da8d04c
    ld	$ra,120($sp)
.L0da8cff8:
    # Line 1609
    lw	$a6,32($s0)
    addu	$a6,$a6,$s3
    lw	$a6,0($a6)
    lw	$a6,0($a6)
    # Line 1607
    addiu	$s1,$s1,1
    # Line 1609
    beqz	$a6,.L0da8cfec
    # Line 1607
    addiu	$s3,$s3,16
    # Line 1613
    lw	$a5,20($a6)
    lw	$a2,12($a5)
    andi	$at,$a2,0x1
    beqz	$at,.L0da8d0a8
.L0da8d024:
    # Line 1620
    andi	$v1,$a2,0x4
    beqz	$v1,.L0da8d0bc
    nop
.L0da8d030:
    # Line 1624
    lw	$a3,12($s0)
    andi	$a4,$a2,0x10
    andi	$a3,$a3,0x10
    beq	$a3,$a4,.L0da8cfe0
    nop
    b	.L0da8cfe0
    # Line 1629
    li	$a1,1
.L0da8d04c:
    ld	$s3,128($sp)
.L0da8d050:
    # Line 1641
    sw	$zero,44($s0)
    ld	$a4,32($sp)
    ld	$s1,112($sp)
    # Line 1643
    beqz	$v0,.L0da8d164
    sw	$a4,0($s0)
    # Line 1709
    lwc1	$f0,44($s2)
.L0da8d068:
    ldc1	$f1,_lit8_3f847ae147ae147b
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f1
    lw	$at,32($s2)
    cvt.s.d	$f0,$f0
    andi	$at,$at,0x2
    beqz	$at,.L0da8ce54
    swc1	$f0,48($s2)
    # Line 1711
    ld	$a0,40($sp)
    # lw $t9, -29564($gp) # &__glDlistHeapPriorityChanged
    lw	$a0,4624($a0)
    addiu	$a1,$s2,48
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,4
    b	.L0da8ce54
    ld	$ra,120($sp)
.L0da8d0a8:
    # Line 1613
    lw	$a3,44($a5)
    beqzl	$a3,.L0da8d298
    sd	$v0,104($sp)
    # Line 1618
    b	.L0da8d024
    li	$v0,1
.L0da8d0bc:
    b	.L0da8d030
    # Line 1624
    li	$a1,1
.L0da8d0c4:
    # Line 1629
    bnezl	$a1,.L0da8cfec
    # Line 1636
    lw	$a5,28($s0)
    # Line 1631
    ld	$a4,32($sp)
    lw	$a2,0($a5)
    sltu	$a4,$a2,$a4
    bnezl	$a4,.L0da8d0f4
    sd	$v0,104($sp)
    sd	$v0,104($sp)
    sd	$a1,88($sp)
    # Line 1634
    addiu	$at,$a2,1
    sd	$at,32($sp)
    sd	$v0,104($sp)
.L0da8d0f4:
    ld	$a0,40($sp)
    # Line 1636
    # lw $t9, -31680($gp) # &__glMgrDLTexMerge
    sd	$a1,88($sp)
    move	$a1,$s0
    bal __glMgrDLTexMerge
    move	$a2,$a5
    ld	$a1,88($sp)
    b	.L0da8cfe8
    ld	$v0,104($sp)
.L0da8d118:
    # Line 1574
    # lw $t9, -31696($gp) # &__glMgrDLNodeCall
    ld	$a1,56($sp)
    ld	$a0,8($sp)
    bal __glMgrDLNodeCall
    addiu	$a1,$a1,8
    # Line 1577
    # lw $t9, -31600($gp) # &__glMgrTexToPool
    ld	$a0,40($sp)
    bal __glMgrTexToPool
    ld	$a1,56($sp)
    ld	$a2,56($sp)
    lw	$a3,40($a2)
    lw	$a2,44($a2)
    la	$a0,__glMgrle_CallList
    sltu	$a3,$a3,$a2
    beqz	$a3,.L0da8d258
    la	$a1,__glMgrle_BindTextureEXT
    # Line 1579
    li	$a3,1
    b	.L0da8cf90
    sd	$a3,16($sp)
.L0da8d164:
    # Line 1643
    bnezl	$a1,.L0da8d068
    # Line 1709
    lwc1	$f0,44($s2)
    ld	$a4,32($sp)
    # Line 1655
    sltiu	$a4,$a4,9
    beqzl	$a4,.L0da8d068
    # Line 1709
    lwc1	$f0,44($s2)
    # Line 1659
    lw	$v1,12($s0)
    ori	$v1,$v1,0x4
    sw	$v1,12($s0)
    # Line 1660
    lw	$at,32($s2)
    lwc1	$f1,44($s2)
    andi	$at,$at,0x2
    beqz	$at,.L0da8d368
    swc1	$f1,48($s2)
    # Line 1662
    ld	$a0,40($sp)
    # lw $t9, -29564($gp) # &__glDlistHeapPriorityChanged
    lw	$a0,4624($a0)
    addiu	$a1,$s2,48
    jal	__glDlistHeapPriorityChanged
    addiu	$a0,$a0,4
    lw	$a3,32($s2)
    andi	$a3,$a3,0x2
    beqz	$a3,.L0da8d368
    ld	$ra,120($sp)
    # Line 1678
    lw	$a5,28($s0)
.L0da8d1c8:
    beqz	$a5,.L0da8d240
    lw	$v0,16($s0)
    li	$a7,1
    sltu	$a4,$a5,$a7
    beqzl	$a4,.L0da8d1e0
    move	$a7,$a5
.L0da8d1e0:
    lw	$a1,32($s0)
    sll	$a2,$a5,0x4
    andi	$a3,$a7,0x1
    beqz	$a3,.L0da8d234
    addu	$a2,$a1,$a2
    # Line 1682
    lw	$a6,0($a1)
    lw	$a6,0($a6)
    beqzl	$a6,.L0da8d234
    # Line 1680
    addiu	$a1,$a1,16
    # Line 1686
    lw	$a5,20($a6)
    lw	$at,12($a5)
    andi	$at,$at,0x8
    beqz	$at,.L0da8d3bc
    # Line 1689
    li	$at,1
.L0da8d218:
    # Line 1690
    lw	$a3,4($a5)
    lw	$a4,12($a1)
    multu	$a3,$a4
    mflo	$v1
    nop
    addu	$v0,$v1,$v0
    # Line 1680
    addiu	$a1,$a1,16
.L0da8d234:
    sra	$at,$a7,0x1
    bnezl	$at,.L0da8d334
    # Line 1682
    lw	$a6,0($a1)
.L0da8d240:
    ld	$v1,16($sp)
    # Line 1680
    beqz	$v1,.L0da8d390
.L0da8d248:
    ld	$a3,24($sp)
    # Line 1701
    addu	$a3,$a3,$v0
    b	.L0da8ce54
    sw	$a3,4($s0)
.L0da8d258:
    # Line 1581
    sll	$at,$a2,0x2
    ld	$a4,24($sp)
    subu	$at,$at,$a2
    sll	$at,$at,0x3
    subu	$at,$at,$a2
    sll	$at,$at,0x2
    subu	$at,$at,$a2
    sll	$at,$at,0x1
    addu	$at,$at,$a4
    addiu	$a4,$at,-44
    b	.L0da8cf90
    sd	$a4,24($sp)
.L0da8d288:
    sd	$ra,120($sp)
    # Line 1552
    addiu	$v1,$s0,20
    b	.L0da8cf9c
    sd	$v1,8($sp)
.L0da8d298:
    sd	$a5,96($sp)
    ld	$a0,40($sp)
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$a1,88($sp)
    # Line 1620
    move	$a1,$a6
    addiu	$t9,$t9,-12756
    bal .L0da8ce2c
    ld	$a2,48($sp)
    ld	$a1,88($sp)
    ld	$a5,96($sp)
    ld	$v0,104($sp)
    b	.L0da8d024
    lw	$a2,12($a5)
.L0da8d2cc:
    # Line 1690
    lw	$a3,12($a1)
.L0da8d2d0:
    lw	$v1,4($a5)
    multu	$v1,$a3
    mflo	$at
    nop
    addu	$v0,$at,$v0
    # Line 1682
    lw	$a6,16($a1)
.L0da8d2e8:
    lw	$a6,0($a6)
    beqz	$a6,.L0da8d320
    # Line 1680
    addiu	$a1,$a1,16
    # Line 1686
    lw	$a5,20($a6)
    lw	$at,12($a5)
    andi	$at,$at,0x8
    beqz	$at,.L0da8d360
    # Line 1689
    li	$a3,1
.L0da8d308:
    # Line 1690
    lw	$a4,12($a1)
    lw	$a3,4($a5)
    multu	$a3,$a4
    mflo	$v1
    nop
    addu	$v0,$v1,$v0
.L0da8d320:
    # Line 1680
    addiu	$a1,$a1,16
    sltu	$at,$a1,$a2
    beqz	$at,.L0da8d240
    nop
    # Line 1682
    lw	$a6,0($a1)
.L0da8d334:
    lw	$a6,0($a6)
    beqzl	$a6,.L0da8d2e8
    lw	$a6,16($a1)
    # Line 1686
    lw	$a5,20($a6)
    lw	$at,12($a5)
    andi	$at,$at,0x8
    bnezl	$at,.L0da8d2d0
    # Line 1690
    lw	$a3,12($a1)
    # Line 1689
    li	$v1,1
    b	.L0da8d2cc
    sd	$v1,16($sp)
.L0da8d360:
    b	.L0da8d308
    sd	$a3,16($sp)
.L0da8d368:
    # Line 1674
    # lw $t9, -31604($gp) # &__glMgrDLToPool
    ld	$a0,40($sp)
    bal __glMgrDLToPool
    move	$a1,$s2
    lw	$a4,32($s2)
    andi	$a4,$a4,0x2
    beqz	$a4,.L0da8ce54
    ld	$ra,120($sp)
    b	.L0da8d1c8
    # Line 1678
    lw	$a5,28($s0)
.L0da8d390:
    sd	$v0,80($sp)
    # Line 1699
    move	$a1,$s2
    # Line 1698
    lw	$a5,12($s0)
    # Line 1699
    # lw $t9, -31608($gp) # &__glMgrDLResolveCalls
    ld	$a0,40($sp)
    # Line 1698
    ori	$a5,$a5,0x8
    # Line 1699
    bal __glMgrDLResolveCalls
    # Line 1698
    sw	$a5,12($s0)
    ld	$v0,80($sp)
    b	.L0da8d248
    ld	$ra,120($sp)
.L0da8d3bc:
    b	.L0da8d218
    sd	$at,16($sp)
.end ValidateRecurse

# Function: __glMgrSPValidateDL
# Declared: Line 1753 (Source lines: 1754-1765)
# Address: 0x0da8d3c4 - 0x0da8d410 (Size: 76 bytes, Frame: 32)
.globl __glMgrSPValidateDL
.ent __glMgrSPValidateDL
__glMgrSPValidateDL:
    # Line 1754
    lw	$at,20($a1)
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lw	$at,12($at)
    lui	$v0,0x17
    addiu	$v0,$v0,4820
    andi	$at,$at,0x1
    beqz	$at,.L0da8d3f4
    addu	$gp,$t9,$v0
.L0da8d3e8:
    ld	$gp,0($sp)
    # Line 1765
    jr	$ra
    addiu	$sp,$sp,32
.L0da8d3f4:
    # Line 1764
    # lw $t9, -32736($gp) # &sub_0da90000
    sd	$ra,8($sp)
    addiu	$t9,$t9,-12756
    bal __glMgrDLLookupTex
    li	$a2,1
    b	.L0da8d3e8
    ld	$ra,8($sp)
.end __glMgrSPValidateDL

# Function: __glMgrSPValidateDLExec
# Declared: Line 1772 (Source lines: 1773-1780)
# Address: 0x0da8d410 - 0x0da8d464 (Size: 84 bytes, Frame: 48)
.globl __glMgrSPValidateDLExec
.ent __glMgrSPValidateDLExec
__glMgrSPValidateDLExec:
    # Line 1773
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$gp,16($sp)
    lui	$at,0x17
    addiu	$at,$at,4744
    addu	$gp,$t9,$at
    # Line 1776
    # lw $t9, -31712($gp) # &__glMgrSPValidateDL
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    bal __glMgrSPValidateDL
    # Line 1773
    move	$s8,$a0
    # Line 1779
    ld	$t9,24($sp)
    move	$a1,$t9
    lw	$t9,8($t9)
    jal	__glMgrSPValidateDL
    move	$a0,$s8
    # Line 1780
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrSPValidateDLExec

# Function: __glMgrSPCompMachdep
# Declared: Line 1789 (Source lines: 1790-1797)
# Address: 0x0da8d464 - 0x0da8d4a0 (Size: 60 bytes, Frame: 32)
.globl __glMgrSPCompMachdep
.ent __glMgrSPCompMachdep
__glMgrSPCompMachdep:
    # Line 1790
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0x17
    addiu	$ra,$ra,4660
    addu	$gp,$t9,$ra
    # Line 1796
    # lw $t9, -32736($gp) # &sub_0da90000
    # Line 1794
    sw	$a1,56($a1)
    # Line 1796
    addiu	$t9,$t9,-13708
    bal __glMgrDLNotResident
    lw	$a2,4688($a0)
    # Line 1797
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrSPCompMachdep

.late_rodata
jtbl_0dbed4d0:
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8bf28
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8c0a4
    .word .L0da8bf28
    .word .L0da8bf28

.rdata
_lit8_3f847ae147ae147b:
    .word 0x3f847ae1, 0x47ae147b
_lit_3f800000:
    .word 0x3f800000

