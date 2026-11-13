# Source: ../MGRAS/mgras_get.c
# Category: MGRAS
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../MGRAS/mgras_get.c
# Total Functions: 22

.text

# Function: __glMgrDoGet
# Declared: Line 46 (Source lines: 46-1174)
# Address: 0x0daaf738 - 0x0dab36f0 (Size: 16312 bytes, Frame: 160)
.globl __glMgrDoGet
.ent __glMgrDoGet
__glMgrDoGet:
    # Line 48
    move	$a4,$zero
    # Line 46
    addiu	$sp,$sp,-1440
    sd	$s1,1368($sp)
    # Line 52
    addiu	$s1,$sp,912
    sd	$a2,1328($sp)
    sd	$a1,1320($sp)
    sd	$s0,1384($sp)
    sd	$gp,1376($sp)
    # Line 46
    lui	$v0,0x15
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    addiu	$t0,$sp,0
    # Line 53
    sw	$t0,1312($sp)
    # Line 50
    sw	$t2,908($sp)
    # Line 49
    sw	$t1,904($sp)
    # Line 46
    addiu	$v0,$v0,-4256
    # Line 57
    lw	$at,__glBeginMode
    # Line 46
    addu	$gp,$t9,$v0
    # Line 57
    li	$v0,1
    beq	$at,$v0,.L0dab0168
    lw	$s0,__glCurrentContext
    lui	$a7,0x1
    addu	$a1,$a7,$s0
    lw	$a2,-28068($a1)
    beqz	$a2,.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
    # Line 57
    lbu	$v1,-28064($a1)
    beqz	$v1,.L0daaf9f8
.L0daaf7a8:
    # Line 108
    sltiu	$a5,$a0,3379
.L0daaf7ac:
    bnez	$a5,.L0daaf844
    sltiu	$a6,$a0,3380
    bnez	$a6,.L0daaf8c0
    li	$v0,0x8020
    sltu	$at,$a0,$v0
    bnez	$at,.L0daafb90
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0daafda4
    li	$v0,0x8087
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0daafe3c
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0dab0470
    li	$v0,0x80ba
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab0608
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dab0ef8
    li	$v0,0x8141
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab1584
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0dab206c
    li	$v0,0x814f
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab276c
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dab0c00
    li	$v0,0x817c
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab30dc
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0dab30e8
    li	$at,0xbead
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0daaf844:
    # Line 108
    sltiu	$v1,$a0,3008
    bnez	$v1,.L0daaf918
    sltiu	$a5,$a0,3009
    beqz	$a5,.L0daafb54
    sltiu	$at,$a0,3252
.L0daaf858:
    sd	$ra,1392($sp)
    # Line 178
    # lw $t9, -30896($gp) # &__glMgrim_IsEnabled
    addiu	$a6,$sp,0
    addiu	$a6,$a6,1
    bal __glMgrim_IsEnabled
    sw	$a6,1312($sp)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    lw	$ra,1312($sp)
    addiu	$t2,$sp,104
    # Line 179
    addiu	$t3,$sp,912
    # Line 178
    sb	$v0,-1($ra)
    # Line 1163
    beq	$s1,$t3,.L0daaf8e8
    ld	$ra,1392($sp)
.L0daaf890:
    # Line 1164
    move	$a0,$s0
    ld	$a4,1320($sp)
    ld	$a3,1328($sp)
    addiu	$a2,$sp,912
    li	$a1,3
    # lw $t9, -26836($gp) # &__glConvertResult
    sd	$ra,1392($sp)
    subu	$a5,$s1,$t3
    jal	__glConvertResult
    sra	$a5,$a5,0x2
    b	.L0daaf904
    ld	$ra,1392($sp)
.L0daaf8c0:
    # Line 185
    lbu	$a6,-25435($a1)
    # Line 191
    addiu	$t3,$sp,912
    # Line 185
    beqz	$a6,.L0daafe30
    # Line 191
    addiu	$s1,$t3,4
    li	$at,512
    sw	$at,912($sp)
.L0daaf8d8:
    sw	$t1,904($sp)
    sw	$t2,908($sp)
    sw	$t0,1312($sp)
.L0daaf8e4:
    # Line 1163
    bne	$s1,$t3,.L0daaf890
.L0daaf8e8:
    # Line 1164
    lw	$v0,904($sp)
    bne	$v0,$t1,.L0daafc0c
    # Line 1166
    lw	$t3,1312($sp)
    bne	$t3,$t0,.L0daafc3c
    # Line 1168
    lw	$v0,908($sp)
    bne	$v0,$t2,.L0daaf9cc
    # Line 1170
    move	$a0,$s0
.L0daaf904:
    ld	$gp,1376($sp)
    # Line 1174
    ld	$s0,1384($sp)
    ld	$s1,1368($sp)
    jr	$ra
    addiu	$sp,$sp,1440
.L0daaf918:
    # Line 108
    sltiu	$v1,$a0,2900
    bnez	$v1,.L0daafa4c
    sltiu	$a5,$a0,2901
    bnez	$a5,.L0dab00c8
    sltiu	$a6,$a0,2962
    bnez	$a6,.L0daafdbc
    sltiu	$at,$a0,2963
    bnez	$at,.L0dab054c
    sltiu	$v1,$a0,2978
    bnez	$v1,.L0dab0190
    sltiu	$a5,$a0,2979
    bnez	$a5,.L0dab0f10
    sltiu	$a6,$a0,2983
    bnez	$a6,.L0dab0930
    sltiu	$at,$a0,2984
    beqz	$at,.L0dab1394
    sltiu	$a6,$a0,2992
    sd	$ra,1392($sp)
    sd	$zero,1360($sp)
.L0daaf964:
    # Line 579
    li	$a2,1
    la	$a0,SYMBOL_LOCATION
    ld	$a3,1360($sp)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,352($a0)
    move	$a1,$zero
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$a3
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    # Line 578
    ld	$a5,1360($sp)
    addiu	$t2,$sp,104
    li	$a6,16
    addiu	$a5,$a5,1
    # Line 580
    lw	$at,904($sp)
    # Line 579
    sw	$v0,1316($sp)
    sd	$a5,1360($sp)
    # Line 580
    lwc1	$f0,1316($sp)
    addiu	$at,$at,4
    sw	$at,904($sp)
    # Line 578
    bne	$a5,$a6,.L0daaf964
    # Line 580
    swc1	$f0,-4($at)
    # Line 582
    addiu	$t3,$sp,912
    # Line 578
    sw	$v0,1316($sp)
    # Line 582
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0daaf9cc:
    # Line 1170
    ld	$a4,1320($sp)
    ld	$a3,1328($sp)
    addiu	$a2,$sp,104
    li	$a1,5
    # lw $t9, -26836($gp) # &__glConvertResult
    sd	$ra,1392($sp)
    subu	$a5,$v0,$t2
    jal	__glConvertResult
    sra	$a5,$a5,0x2
    b	.L0daaf904
    ld	$ra,1392($sp)
.L0daaf9f8:
    # Line 60
    sltiu	$a6,$a0,3008
    bnez	$a6,.L0daafc68
    # Line 64
    sltiu	$at,$a0,3009
    bnez	$at,.L0daaf7a8
    sltiu	$v1,$a0,3058
    bnez	$v1,.L0dab029c
    sltiu	$a5,$a0,3059
    bnez	$a5,.L0daaf7a8
    sltiu	$a6,$a0,3105
    bnez	$a6,.L0dab0ed4
    sltiu	$at,$a0,3106
    bnez	$at,.L0daaf7a8
    sltiu	$v1,$a0,3107
    bnez	$v1,.L0dab2280
    sltiu	$a5,$a0,3108
    bnez	$a5,.L0daaf7a8
    li	$a6,0x8009
    beq	$a0,$a6,.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
    b	.L0dab075c
    sd	$ra,1392($sp)
.L0daafa4c:
    sltiu	$at,$a0,2852
    bnez	$at,.L0daafcac
    sltiu	$v1,$a0,2853
    bnez	$v1,.L0daaf858
    sltiu	$a5,$a0,2882
    bnez	$a5,.L0dab0338
    sltiu	$a6,$a0,2883
    bnez	$a6,.L0daaf858
    sltiu	$at,$a0,2896
    bnez	$at,.L0dab1068
    sltiu	$v1,$a0,2897
    bnez	$v1,.L0daaf858
    sltiu	$a5,$a0,2898
    bnez	$a5,.L0dab23c8
    sltiu	$a6,$a0,2899
    bnez	$a6,.L0dab32a0
    li	$at,2899
    bne	$a0,$at,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 357
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,620($a0)
    # Line 359
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 358
    lw	$a3,908($sp)
    # Line 357
    sw	$v0,1316($sp)
    # Line 359
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 358
    lwc1	$f1,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f1,-4($a3)
    # Line 359
    bal __Mgr_ReturnMode
    lw	$a0,624($a0)
    # Line 361
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 360
    lw	$a3,908($sp)
    # Line 359
    sw	$v0,1316($sp)
    # Line 361
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 360
    lwc1	$f2,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f2,-4($a3)
    # Line 361
    bal __Mgr_ReturnMode
    lw	$a0,628($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    # Line 362
    lw	$a6,908($sp)
    # Line 361
    sw	$v0,1316($sp)
    addiu	$t2,$sp,104
    # Line 362
    lwc1	$f0,1316($sp)
    addiu	$a6,$a6,4
    sw	$a6,908($sp)
    swc1	$f0,-4($a6)
    # Line 364
    addiu	$t3,$sp,912
    # Line 363
    lw	$a5,908($sp)
    ld	$ra,1392($sp)
    lwc1	$f3,_lit_3f800000
    addiu	$a5,$a5,4
    sw	$a5,908($sp)
    # Line 364
    b	.L0daaf8e4
    # Line 363
    swc1	$f3,-4($a5)
.L0daafb54:
    # Line 108
    bnez	$at,.L0daafcfc
    sltiu	$v1,$a0,3253
    beqz	$v1,.L0dab0020
.L0daafb60:
    # Line 827
    addiu	$t3,$sp,912
.L0daafb64:
    # Line 828
    lui	$a5,0xffff
    ori	$a5,$a5,0x6b78
    sll	$a6,$a0,0x2
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$s0
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    addiu	$s1,$t3,4
    # Line 829
    b	.L0daaf8e4
    # Line 828
    sw	$a5,912($sp)
.L0daafb90:
    # Line 108
    sltiu	$a6,$a0,3509
    bnez	$a6,.L0daafd50
    sltiu	$at,$a0,3510
    bnez	$at,.L0daaf858
    sltiu	$v1,$a0,12293
    bnez	$v1,.L0dab042c
    sltiu	$a5,$a0,12294
    bnez	$a5,.L0daaf858
    li	$v0,0x8005
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab11b4
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab1ddc
    li	$v0,0x801c
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab21e4
    sltu	$a5,$v0,$a0
    beqz	$a5,.L0dab2b78
    li	$v0,0x801e
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab2fec
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab33f8
    li	$v1,0x801f
    bne	$a0,$v1,.L0dab01e0
    # Line 1017
    addiu	$a5,$t1,4
    sw	$a5,904($sp)
    lwc1	$f1,-31880($a1)
    # Line 1018
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1017
    swc1	$f1,504($sp)
.L0daafc0c:
    # Line 1166
    move	$a0,$s0
    move	$a1,$zero
    ld	$a4,1320($sp)
    ld	$a3,1328($sp)
    addiu	$a2,$sp,504
    # lw $t9, -26836($gp) # &__glConvertResult
    sd	$ra,1392($sp)
    subu	$a5,$v0,$t1
    jal	__glConvertResult
    sra	$a5,$a5,0x2
    b	.L0daaf904
    ld	$ra,1392($sp)
.L0daafc3c:
    # Line 1168
    move	$a0,$s0
    subu	$a5,$t3,$t0
    ld	$a4,1320($sp)
    ld	$a3,1328($sp)
    # lw $t9, -26836($gp) # &__glConvertResult
    addiu	$a2,$sp,0
    sd	$ra,1392($sp)
    jal	__glConvertResult
    li	$a1,4
    b	.L0daaf904
    ld	$ra,1392($sp)
.L0daafc68:
    # Line 64
    sltiu	$a6,$a0,2961
    bnez	$a6,.L0daafea8
    sltiu	$at,$a0,2962
    bnez	$at,.L0daaf7a8
    sltiu	$v1,$a0,2965
    bnez	$v1,.L0dab072c
    sltiu	$a5,$a0,2966
    bnez	$a5,.L0daaf7a8
    sltiu	$a6,$a0,2967
    bnez	$a6,.L0dab1a2c
    sltiu	$at,$a0,2968
    bnez	$at,.L0daaf7a8
    li	$v1,2968
    bne	$a0,$v1,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0daafcac:
    sltiu	$a5,$a0,2825
    bnez	$a5,.L0daafedc
    sltiu	$a6,$a0,2826
    bnez	$a6,.L0dab09fc
    sltiu	$at,$a0,2848
    bnez	$at,.L0dab04b4
    sltiu	$v1,$a0,2849
    bnez	$v1,.L0daaf858
    sltiu	$a5,$a0,2850
    bnez	$a5,.L0dab1430
    sltiu	$a6,$a0,2851
    bnez	$a6,.L0dab1ea0
    li	$at,2851
    bne	$a0,$at,.L0dab01e0
    # Line 317
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f2,3468($s0)
    # Line 318
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 317
    swc1	$f2,504($sp)
.L0daafcfc:
    # Line 108
    sltiu	$a5,$a0,3120
    bnez	$a5,.L0daaff20
    sltiu	$a6,$a0,3121
    bnez	$a6,.L0dab0484
    sltiu	$at,$a0,3156
    bnez	$at,.L0dab0664
    sltiu	$v1,$a0,3157
    bnez	$v1,.L0dab11e8
    sltiu	$a5,$a0,3248
    bnez	$a5,.L0dab16e8
    sltiu	$a6,$a0,3249
    bnez	$a6,.L0daafb60
    sltiu	$at,$a0,3250
    bnez	$at,.L0dab27f8
    sltiu	$v1,$a0,3251
    bnez	$v1,.L0daafb60
    li	$a5,3251
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daafb64
    # Line 827
    addiu	$t3,$sp,912
.L0daafd50:
    # Line 108
    sltiu	$a6,$a0,3418
    bnez	$a6,.L0dab007c
    sltiu	$at,$a0,3419
    bnez	$at,.L0dab04a0
    sltiu	$v1,$a0,3477
    bnez	$v1,.L0dab06a0
    sltiu	$a5,$a0,3478
    bnez	$a5,.L0daaf858
    sltiu	$a6,$a0,3505
    bnez	$a6,.L0dab1960
    sltiu	$at,$a0,3506
    bnez	$at,.L0daaf858
    sltiu	$v1,$a0,3507
    bnez	$v1,.L0dab2984
    sltiu	$a5,$a0,3508
    bnez	$a5,.L0daaf858
    li	$a6,3508
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0daafda4:
    # Line 1020
    addiu	$t3,$t1,4
    sw	$t3,904($sp)
    lwc1	$f3,-31876($a1)
    # Line 1021
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1020
    swc1	$f3,504($sp)
.L0daafdbc:
    # Line 108
    sltiu	$at,$a0,2918
    bnez	$at,.L0dab0104
    sltiu	$v1,$a0,2919
    bnez	$v1,.L0dab0af0
    sltiu	$a5,$a0,2932
    bnez	$a5,.L0dab0590
    sltiu	$a6,$a0,2933
    bnez	$a6,.L0dab1a7c
    sltiu	$at,$a0,2960
    bnez	$at,.L0dab11fc
    sltiu	$v1,$a0,2961
    bnez	$v1,.L0daaf858
    li	$a5,2961
    bne	$a0,$a5,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 447
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,400($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 448
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 447
    addiu	$t3,$sp,912
    # Line 449
    b	.L0daaf8e4
    # Line 448
    addiu	$s1,$t3,4
.L0daafe30:
    # Line 189
    lw	$a5,3428($s0)
    b	.L0daaf8d8
    sw	$a5,912($sp)
.L0daafe3c:
    # Line 108
    li	$v0,0x8075
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab0208
    sltu	$at,$v0,$a0
    beqz	$at,.L0daaf858
    li	$v0,0x807e
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab0e4c
    sltu	$a5,$v0,$a0
    beqz	$a5,.L0dab1cb8
    li	$v0,0x8083
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab1fe0
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab2ac4
    li	$v0,0x8085
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab2f70
    sltu	$a5,$v0,$a0
    beqz	$a5,.L0dab33bc
    li	$a6,0x8086
    bne	$a0,$a6,.L0dab01e0
    # Line 1093
    addiu	$t3,$sp,912
    lw	$at,4880($s0)
    addiu	$s1,$t3,4
    # Line 1094
    b	.L0daaf8e4
    # Line 1093
    sw	$at,912($sp)
.L0daafea8:
    # Line 64
    sltiu	$v1,$a0,2930
    bnez	$v1,.L0dab0278
    sltiu	$a5,$a0,2931
    bnez	$a5,.L0daaf7a8
    sltiu	$a6,$a0,2932
    bnez	$a6,.L0dab0e90
    sltiu	$at,$a0,2933
    bnez	$at,.L0daaf7a8
    li	$v1,2960
    bne	$a0,$v1,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0daafedc:
    sltiu	$a5,$a0,2820
    bnez	$a5,.L0dab02d0
    sltiu	$a6,$a0,2821
    beqz	$a6,.L0dab07ac
    sltiu	$v1,$a0,2823
    # Line 236
    lbu	$at,3105($s0)
    beqz	$at,.L0dab2d58
    # Line 241
    addiu	$v1,$t1,16
    # Line 239
    addiu	$a5,$t1,8
    # Line 238
    lwc1	$f0,_lit_3f800000
    # Line 241
    sw	$v1,904($sp)
    swc1	$f0,516($sp)
    # Line 240
    swc1	$f0,512($sp)
    # Line 239
    swc1	$f0,508($sp)
    # Line 238
    swc1	$f0,504($sp)
.L0daaff18:
    # Line 252
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0daaff20:
    # Line 108
    sltiu	$a6,$a0,3072
    bnez	$a6,.L0dab036c
    sltiu	$at,$a0,3073
    bnez	$at,.L0dab09e8
    sltiu	$v1,$a0,3104
    bnez	$v1,.L0dab0d00
    sltiu	$a5,$a0,3105
    bnez	$a5,.L0dab252c
    sltiu	$a6,$a0,3106
    bnez	$a6,.L0dab1e60
    sltiu	$at,$a0,3107
    bnez	$at,.L0dab2e30
    li	$v1,3107
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 671
    lbu	$a5,3104($s0)
    beqz	$a5,.L0dab2694
    # Line 675
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,1216($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 679
    move	$a1,$zero
    ld	$ra,1392($sp)
    # Line 675
    dsll32	$a0,$v0,0x0
    dsrl32	$a0,$a0,0x0
    # Line 679
    andi	$a5,$a0,0x1
    beqz	$a5,.L0dab3568
    lw	$t3,1312($sp)
    li	$a6,1
    # Line 681
    addiu	$at,$t3,1
    sw	$at,1312($sp)
    sb	$a6,-1($at)
.L0daaffb8:
    # Line 685
    dsrl	$a0,$a0,0x1
    # Line 679
    andi	$v1,$a0,0x1
    beqz	$v1,.L0dab3578
    lw	$t3,1312($sp)
    li	$a5,1
    # Line 681
    addiu	$a6,$t3,1
    sw	$a6,1312($sp)
    sb	$a5,-1($a6)
.L0daaffd8:
    # Line 685
    dsrl	$a0,$a0,0x1
    # Line 679
    andi	$t3,$a0,0x1
    beqz	$t3,.L0dab3588
    lw	$t3,1312($sp)
    li	$at,1
    # Line 681
    addiu	$v1,$t3,1
    sw	$v1,1312($sp)
    sb	$at,-1($v1)
.L0daafff8:
    # Line 685
    dsrl	$a0,$a0,0x1
    # Line 679
    andi	$a5,$a0,0x1
    beqz	$a5,.L0dab3598
    lw	$t3,1312($sp)
    li	$a6,1
    # Line 681
    addiu	$at,$t3,1
    sw	$at,1312($sp)
    sb	$a6,-1($at)
.L0dab0018:
    b	.L0dab26d4
    nop
.L0dab0020:
    # Line 108
    sltiu	$v1,$a0,3345
    bnez	$v1,.L0dab03a0
    sltiu	$a5,$a0,3346
    bnez	$a5,.L0dab09bc
    sltiu	$a6,$a0,3354
    bnez	$a6,.L0dab0d50
    sltiu	$at,$a0,3355
    bnez	$at,.L0dab1c74
    sltiu	$v1,$a0,3359
    bnez	$v1,.L0dab1f34
    sltiu	$a5,$a0,3360
    bnez	$a5,.L0dab2a80
    sltiu	$a6,$a0,3377
    bnez	$a6,.L0dab2f54
    sltiu	$at,$a0,3378
    bnez	$at,.L0dab3390
    li	$v1,3378
    bne	$a0,$v1,.L0dab01e0
    # Line 837
    addiu	$t3,$sp,912
    lw	$a5,3332($s0)
    addiu	$s1,$t3,4
    # Line 838
    b	.L0daaf8e4
    # Line 837
    sw	$a5,912($sp)
.L0dab007c:
    # Line 108
    sltiu	$a6,$a0,3409
    bnez	$a6,.L0dab03f0
    sltiu	$at,$a0,3410
    bnez	$at,.L0dab09d4
    sltiu	$v1,$a0,3414
    bnez	$v1,.L0dab0d90
    sltiu	$a5,$a0,3415
    bnez	$a5,.L0dab1c8c
    sltiu	$a6,$a0,3416
    bnez	$a6,.L0dab1f64
    sltiu	$at,$a0,3417
    bnez	$at,.L0dab2a98
    li	$v1,3417
    bne	$a0,$v1,.L0dab01e0
    # Line 882
    addiu	$t3,$sp,912
    lw	$a5,3116($s0)
    addiu	$s1,$t3,4
    # Line 883
    b	.L0daaf8e4
    # Line 882
    sw	$a5,912($sp)
.L0dab00c8:
    # Line 374
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,672($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 375
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 374
    addiu	$t3,$sp,912
    # Line 376
    b	.L0daaf8e4
    # Line 375
    addiu	$s1,$t3,4
.L0dab0104:
    # Line 108
    sltiu	$a5,$a0,2913
    bnez	$a5,.L0dab04e4
    sltiu	$a6,$a0,2914
    bnez	$a6,.L0dab1548
    sltiu	$at,$a0,2916
    bnez	$at,.L0dab0c0c
    sltiu	$v1,$a0,2917
    bnez	$v1,.L0dab22a8
    li	$a5,2917
    bne	$a0,$a5,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 394
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,640($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 395
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 394
    addiu	$t3,$sp,912
    # Line 396
    b	.L0daaf8e4
    # Line 395
    addiu	$s1,$t3,4
.L0dab0168:
    # Line 57
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1392($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,1376($sp)
    ld	$ra,1392($sp)
    ld	$s0,1384($sp)
    ld	$s1,1368($sp)
    jr	$ra
    addiu	$sp,$sp,1440
.L0dab0190:
    # Line 108
    sltiu	$a5,$a0,2967
    bnez	$a5,.L0dab01c4
    sltiu	$a6,$a0,2968
    bnez	$a6,.L0dab1ac0
    sltiu	$at,$a0,2976
    bnez	$at,.L0dab12e8
    sltiu	$v1,$a0,2977
    bnez	$v1,.L0dab26dc
    li	$a5,2977
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab01c4:
    # Line 108
    sltiu	$a6,$a0,2965
    bnez	$a6,.L0dab0c84
    sltiu	$at,$a0,2966
    bnez	$at,.L0dab2348
    li	$v1,2966
    beq	$a0,$v1,.L0dab2ca0
    sd	$ra,1392($sp)
.L0dab01e0:
    # Line 1158
    # lw $t9, -27320($gp) # &__glSetError
.L0dab01e4:
    sd	$ra,1392($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,1376($sp)
    # Line 1159
    ld	$ra,1392($sp)
    ld	$s0,1384($sp)
    ld	$s1,1368($sp)
    jr	$ra
    addiu	$sp,$sp,1440
.L0dab0208:
    # Line 108
    li	$v0,0x8069
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab06d4
    sltu	$a6,$v0,$a0
    bnez	$a6,.L0dab0e14
    li	$v0,0x806e
.L0dab0220:
    # Line 1123
    addiu	$a4,$a4,2
    # Line 1124
    li	$at,-1
.L0dab0228:
    dsll	$at,$at,0x10
    ori	$at,$at,0x75d0
    sll	$t3,$a4,0x2
    subu	$t3,$t3,$a4
    sll	$t3,$t3,0x2
    addu	$t3,$t3,$a4
    sll	$t3,$t3,0x2
    subu	$t3,$t3,$a4
    sll	$t3,$t3,0x2
    addu	$t3,$t3,$s0
    addu	$s1,$a7,$t3
    beq	$t3,$at,.L0dab0264
    lw	$v0,-29964($s1)
    beqz	$v0,.L0dab3368
    # Line 1125
    nop	# was lw $t9, -30792($gp) # &mgrTM_RefreshDim
.L0dab0264:
    addiu	$t3,$sp,912
    # Line 1126
    lw	$v1,84($v0)
    addiu	$s1,$t3,4
    # Line 1127
    b	.L0daaf8e4
    # Line 1126
    sw	$v1,912($sp)
.L0dab0278:
    # Line 64
    sltiu	$a5,$a0,2928
    bnez	$a5,.L0dab0710
    sltiu	$a6,$a0,2929
    bnez	$a6,.L0daaf7a8
    li	$at,2929
    bne	$a0,$at,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab029c:
    # Line 64
    sltiu	$v1,$a0,3041
    bnez	$v1,.L0dab0788
    sltiu	$a5,$a0,3042
    bnez	$a5,.L0daaf7a8
    sltiu	$a6,$a0,3056
    bnez	$a6,.L0dab1a54
    sltiu	$at,$a0,3057
    bnez	$at,.L0daaf7a8
    li	$v1,3057
    bne	$a0,$v1,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab02d0:
    sltiu	$a5,$a0,2818
    bnez	$a5,.L0dab0508
    sltiu	$a6,$a0,2819
    bnez	$a6,.L0dab051c
    li	$at,2819
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 209
    beqz	$a2,.L0dab333c
    # Line 212
    addiu	$at,$t1,4
    sw	$at,904($sp)
    lwc1	$f0,200($s0)
    swc1	$f0,504($sp)
    # Line 213
    addiu	$a6,$t1,8
    sw	$a6,904($sp)
    lwc1	$f3,204($s0)
    swc1	$f3,508($sp)
    # Line 214
    addiu	$a5,$t1,12
    sw	$a5,904($sp)
    lwc1	$f2,208($s0)
    swc1	$f2,512($sp)
    # Line 215
    addiu	$v1,$t1,16
    sw	$v1,904($sp)
    lwc1	$f1,212($s0)
    swc1	$f1,516($sp)
.L0dab0330:
    # Line 217
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0dab0338:
    # Line 108
    sltiu	$v1,$a0,2866
    bnez	$v1,.L0dab0814
    sltiu	$a5,$a0,2867
    bnez	$a5,.L0dab13cc
    sltiu	$a6,$a0,2880
    bnez	$a6,.L0dab17f4
    sltiu	$at,$a0,2881
    bnez	$at,.L0dab2b90
    li	$v1,2881
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab036c:
    # Line 108
    sltiu	$a5,$a0,3041
    bnez	$a5,.L0dab0840
    sltiu	$a6,$a0,3042
    bnez	$a6,.L0dab1e24
    sltiu	$at,$a0,3057
    bnez	$at,.L0dab14c8
    sltiu	$v1,$a0,3058
    bnez	$v1,.L0daaf858
    li	$a5,3058
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab03a0:
    # Line 108
    sltiu	$a6,$a0,3316
    bnez	$a6,.L0dab0894
    sltiu	$at,$a0,3317
    bnez	$at,.L0dab13e0
    sltiu	$v1,$a0,3331
    bnez	$v1,.L0dab1860
    sltiu	$a5,$a0,3332
    bnez	$a5,.L0dab2480
    sltiu	$a6,$a0,3333
    bnez	$a6,.L0dab280c
    sltiu	$at,$a0,3334
    bnez	$at,.L0dab3130
    li	$v1,3344
    bne	$a0,$v1,.L0dab01e0
    # Line 770
    addiu	$a6,$t0,1
    sw	$a6,1312($sp)
    lbu	$a5,736($s0)
    # Line 771
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 770
    sb	$a5,0($sp)
.L0dab03f0:
    # Line 108
    sltiu	$at,$a0,3384
    bnez	$at,.L0dab08d0
    sltiu	$v1,$a0,3385
    bnez	$v1,.L0dab13f4
    sltiu	$a5,$a0,3387
    bnez	$a5,.L0dab18bc
    sltiu	$a6,$a0,3388
    bnez	$a6,.L0dab2518
    li	$at,3408
    bne	$a0,$at,.L0dab01e0
    # Line 195
    addiu	$t3,$sp,912
    lw	$v1,3440($s0)
    addiu	$s1,$t3,4
    # Line 196
    b	.L0daaf8e4
    # Line 195
    sw	$v1,912($sp)
.L0dab042c:
    # Line 108
    sltiu	$a5,$a0,3569
    bnez	$a5,.L0dab08fc
    sltiu	$a6,$a0,3570
    bnez	$a6,.L0dab1408
    sltiu	$at,$a0,12289
    bnez	$at,.L0dab1984
    sltiu	$v1,$a0,12290
    bnez	$v1,.L0daaf858
    sltiu	$a5,$a0,12291
    bnez	$a5,.L0dab2a04
    sltiu	$a6,$a0,12292
    bnez	$a6,.L0daaf858
    li	$at,12292
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab0470:
    # Line 1096
    addiu	$t3,$sp,912
    lw	$v1,4884($s0)
    addiu	$s1,$t3,4
    # Line 1097
    b	.L0daaf8e4
    # Line 1096
    sw	$v1,912($sp)
.L0dab0484:
    # Line 640
    addiu	$a6,$t0,1
    sw	$a6,1312($sp)
    lbu	$a5,3105($s0)
    # Line 641
    addiu	$t3,$sp,912
    # Line 640
    sltu	$a5,$zero,$a5
    # Line 641
    b	.L0daaf8e4
    # Line 640
    sb	$a5,0($sp)
.L0dab04a0:
    # Line 885
    addiu	$t3,$sp,912
    lw	$at,3120($s0)
    addiu	$s1,$t3,4
    # Line 886
    b	.L0daaf8e4
    # Line 885
    sw	$at,912($sp)
.L0dab04b4:
    # Line 108
    sltiu	$v1,$a0,2834
    bnez	$v1,.L0dab0a48
    sltiu	$a5,$a0,2835
    bnez	$a5,.L0dab1520
    li	$a6,2835
    bne	$a0,$a6,.L0dab01e0
    # Line 306
    addiu	$t3,$t1,4
    sw	$t3,904($sp)
    lwc1	$f1,3456($s0)
    # Line 307
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 306
    swc1	$f1,504($sp)
.L0dab04e4:
    # Line 108
    sltiu	$at,$a0,2903
    bnez	$at,.L0dab0aa4
    sltiu	$v1,$a0,2904
    bnez	$v1,.L0daaf858
    li	$a5,2912
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab0508:
    # Line 108
    sltiu	$a6,$a0,2817
    bnez	$a6,.L0dab0fa4
    sltiu	$at,$a0,2818
    beqz	$at,.L0dab01e0
    sd	$ra,1392($sp)
.L0dab051c:
    # Line 205
    addiu	$a3,$sp,1312
    # lw $t9, -30892($gp) # &__Mgr_GetCurrentAttrState
    addiu	$a2,$sp,908
    sd	$ra,1392($sp)
    bal __Mgr_GetCurrentAttrState
    addiu	$a1,$sp,904
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 206
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0dab054c:
    # Line 451
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,136($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 452
    addiu	$s1,$t3,4
    andi	$a5,$v0,0x7
    addiu	$a5,$a5,512
    # Line 453
    b	.L0daaf8e4
    # Line 452
    sw	$a5,912($sp)
.L0dab0590:
    # Line 108
    sltiu	$a6,$a0,2930
    bnez	$a6,.L0dab0c68
    sltiu	$at,$a0,2931
    bnez	$at,.L0dab22f4
    li	$v1,2931
    bne	$a0,$v1,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 422
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,392($a0)
    # Line 423
    dsll32	$a6,$v0,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f3,_lit_4b7fffff
    div.s	$f2,$f2,$f3
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    lw	$a5,908($sp)
    # Line 424
    addiu	$t3,$sp,912
    ld	$ra,1392($sp)
    # Line 423
    addiu	$a5,$a5,4
    sw	$a5,908($sp)
    # Line 424
    b	.L0daaf8e4
    # Line 423
    swc1	$f2,-4($a5)
.L0dab0608:
    # Line 108
    li	$v0,0x80b1
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab0bcc
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dab173c
    li	$v0,0x80b6
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab2038
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0dab2aac
    li	$v0,0x80b8
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab2f8c
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dab33a4
    li	$a5,0x80b9
    bne	$a0,$a5,.L0dab01e0
    # Line 978
    addiu	$a6,$t1,4
    sw	$a6,904($sp)
    lwc1	$f3,-32144($a1)
    # Line 979
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 978
    swc1	$f3,504($sp)
.L0dab0664:
    # Line 108
    sltiu	$at,$a0,3152
    bnez	$at,.L0dab0d24
    sltiu	$v1,$a0,3153
    bnez	$v1,.L0dab1c60
    sltiu	$a5,$a0,3154
    bnez	$a5,.L0dab1efc
    sltiu	$a6,$a0,3155
    bnez	$a6,.L0dab2a6c
    li	$at,3155
    bne	$a0,$at,.L0dab01e0
    # Line 707
    addiu	$t3,$sp,912
    lw	$v1,1808($s0)
    addiu	$s1,$t3,4
    # Line 708
    b	.L0daaf8e4
    # Line 707
    sw	$v1,912($sp)
.L0dab06a0:
    # Line 108
    sltiu	$a5,$a0,3473
    bnez	$a5,.L0dab0dbc
    sltiu	$a6,$a0,3474
    bnez	$a6,.L0daaf858
    sltiu	$at,$a0,3475
    bnez	$at,.L0dab2160
    sltiu	$v1,$a0,3476
    bnez	$v1,.L0daaf858
    li	$a5,3476
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab06d4:
    # Line 108
    li	$v0,0x802e
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab0de0
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab1ca0
    li	$v0,0x8039
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab1f80
    sltu	$a5,$v0,$a0
    beqz	$a5,.L0dab31b4
    li	$a6,0x8068
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab0228
    # Line 1124
    li	$at,-1
.L0dab0710:
    # Line 64
    sltiu	$at,$a0,2848
    bnez	$at,.L0dab0750
    sltiu	$v1,$a0,2849
    beqz	$v1,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab072c:
    # Line 64
    sltiu	$a5,$a0,2963
    bnez	$a5,.L0dab0ea4
    sltiu	$a6,$a0,2964
    bnez	$a6,.L0daaf7a8
    li	$at,2964
    bne	$a0,$at,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab0750:
    # Line 64
    li	$v1,2832
    beq	$a0,$v1,.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab075c:
    # Line 101
    # lw $t9, -26832($gp) # &__glDoGet
.L0dab0760:
    ld	$a1,1320($sp)
    sd	$ra,1392($sp)
    jal	__glDoGet
    ld	$a2,1328($sp)
    ld	$gp,1376($sp)
    # Line 102
    ld	$ra,1392($sp)
    ld	$s0,1384($sp)
    ld	$s1,1368($sp)
    jr	$ra
    addiu	$sp,$sp,1440
.L0dab0788:
    # Line 64
    sltiu	$a5,$a0,3024
    bnez	$a5,.L0dab0eb8
    sltiu	$a6,$a0,3025
    bnez	$a6,.L0daaf7a8
    li	$at,3040
    bne	$a0,$at,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab07ac:
    bnez	$v1,.L0dab0fb8
    sltiu	$a5,$a0,2824
    bnez	$a5,.L0dab2578
    li	$a6,2824
    bne	$a0,$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 289
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,568($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 292
    addiu	$t3,$sp,912
    la	$a5,SYMBOL_LOCATION
    # Line 291
    lw	$a6,1312($sp)
    ld	$ra,1392($sp)
    lw	$a5,576($a5)
    addiu	$a6,$a6,1
    sw	$a6,1312($sp)
    and	$a5,$a5,$v0
    sltu	$a5,$zero,$a5
    # Line 292
    b	.L0daaf8e4
    # Line 291
    sb	$a5,-1($a6)
.L0dab0814:
    # Line 108
    sltiu	$a6,$a0,2864
    bnez	$a6,.L0dab1018
    sltiu	$at,$a0,2865
    bnez	$at,.L0dab1da0
    li	$v1,2865
    bne	$a0,$v1,.L0dab01e0
    # Line 198
    li	$a5,64
    sw	$a5,912($sp)
    addiu	$t3,$sp,912
    # Line 199
    b	.L0daaf8e4
    # Line 198
    addiu	$s1,$t3,4
.L0dab0840:
    # Line 108
    sltiu	$a6,$a0,3024
    bnez	$a6,.L0dab10bc
    sltiu	$at,$a0,3025
    bnez	$at,.L0daaf858
    li	$v1,3040
    bne	$a0,$v1,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 603
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,792($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 604
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 603
    addiu	$t3,$sp,912
    # Line 605
    b	.L0daaf8e4
    # Line 604
    addiu	$s1,$t3,4
.L0dab0894:
    # Line 108
    sltiu	$a5,$a0,3257
    bnez	$a5,.L0dab112c
    sltiu	$a6,$a0,3258
    bnez	$a6,.L0daafb60
    sltiu	$at,$a0,3314
    bnez	$at,.L0dab2428
    sltiu	$v1,$a0,3315
    bnez	$v1,.L0dab2d08
    li	$a5,3315
    bne	$a0,$a5,.L0dab01e0
    # Line 761
    addiu	$t3,$sp,912
    lw	$a6,1116($s0)
    addiu	$s1,$t3,4
    # Line 762
    b	.L0daaf8e4
    # Line 761
    sw	$a6,912($sp)
.L0dab08d0:
    # Line 108
    sltiu	$at,$a0,3382
    bnez	$at,.L0dab1150
    sltiu	$v1,$a0,3383
    bnez	$v1,.L0dab1db4
    li	$a5,3383
    bne	$a0,$a5,.L0dab01e0
    # Line 849
    addiu	$t3,$sp,912
    lw	$a6,3488($s0)
    addiu	$s1,$t3,4
    # Line 850
    b	.L0daaf8e4
    # Line 849
    sw	$a6,912($sp)
.L0dab08fc:
    # Line 108
    sltiu	$at,$a0,3537
    bnez	$at,.L0dab1174
    sltiu	$v1,$a0,3538
    bnez	$v1,.L0dab1dc8
    sltiu	$a5,$a0,3552
    bnez	$a5,.L0dab2190
    sltiu	$a6,$a0,3553
    bnez	$a6,.L0daaf858
    li	$at,3553
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab0930:
    # Line 108
    sltiu	$v1,$a0,2981
    bnez	$v1,.L0dab1334
    sltiu	$a5,$a0,2982
    bnez	$a5,.L0dab271c
    li	$a6,2982
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1392($sp)
    sd	$zero,1360($sp)
.L0dab0954:
    # Line 573
    li	$a2,1
    la	$a0,SYMBOL_LOCATION
    ld	$a3,1360($sp)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,348($a0)
    move	$a1,$zero
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$a3
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    # Line 572
    ld	$a5,1360($sp)
    addiu	$t2,$sp,104
    li	$a6,16
    addiu	$a5,$a5,1
    # Line 574
    lw	$at,904($sp)
    # Line 573
    sw	$v0,1316($sp)
    sd	$a5,1360($sp)
    # Line 574
    lwc1	$f0,1316($sp)
    addiu	$at,$at,4
    sw	$at,904($sp)
    # Line 572
    bne	$a5,$a6,.L0dab0954
    # Line 574
    swc1	$f0,-4($at)
    # Line 576
    addiu	$t3,$sp,912
    # Line 572
    sw	$v0,1316($sp)
    # Line 576
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0dab09bc:
    # Line 773
    addiu	$a5,$t0,1
    sw	$a5,1312($sp)
    lbu	$v1,737($s0)
    # Line 774
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 773
    sb	$v1,0($sp)
.L0dab09d4:
    # Line 858
    addiu	$t3,$sp,912
    lw	$a6,3136($s0)
    addiu	$s1,$t3,4
    # Line 859
    b	.L0daaf8e4
    # Line 858
    sw	$a6,912($sp)
.L0dab09e8:
    # Line 919
    addiu	$t3,$sp,912
    lw	$at,3180($s0)
    addiu	$s1,$t3,4
    # Line 920
    b	.L0daaf8e4
    # Line 919
    sw	$at,912($sp)
.L0dab09fc:
    # Line 294
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,572($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 296
    addiu	$t3,$sp,912
    # Line 295
    lw	$a5,904($sp)
    # Line 294
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 295
    lwc1	$f1,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 296
    b	.L0daaf8e4
    # Line 295
    swc1	$f1,-4($a5)
.L0dab0a48:
    # Line 108
    sltiu	$a6,$a0,2833
    bnez	$a6,.L0dab141c
    sltiu	$at,$a0,2834
    beqz	$at,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 298
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,684($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 300
    addiu	$t3,$sp,912
    # Line 299
    lw	$a5,904($sp)
    # Line 298
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 299
    lwc1	$f2,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 300
    b	.L0daaf8e4
    # Line 299
    swc1	$f2,-4($a5)
.L0dab0aa4:
    # Line 108
    sltiu	$a6,$a0,2902
    bnez	$a6,.L0dab1484
    sltiu	$at,$a0,2903
    beqz	$at,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 370
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,636($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 371
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 370
    addiu	$t3,$sp,912
    # Line 372
    b	.L0daaf8e4
    # Line 371
    addiu	$s1,$t3,4
.L0dab0af0:
    # Line 398
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,660($a0)
    # Line 400
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 399
    lw	$a3,904($sp)
    # Line 398
    sw	$v0,1316($sp)
    # Line 400
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 399
    lwc1	$f3,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f3,-4($a3)
    # Line 400
    bal __Mgr_ReturnMode
    lw	$a0,664($a0)
    # Line 402
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 401
    lw	$a3,904($sp)
    # Line 400
    sw	$v0,1316($sp)
    # Line 402
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 401
    lwc1	$f4,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f4,-4($a3)
    # Line 402
    bal __Mgr_ReturnMode
    lw	$a0,668($a0)
    # Line 404
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 403
    lw	$a3,904($sp)
    # Line 402
    sw	$v0,1316($sp)
    # Line 404
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 403
    lwc1	$f5,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f5,-4($a3)
    # Line 404
    bal __Mgr_ReturnMode
    lw	$a0,1020($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 406
    addiu	$t3,$sp,912
    # Line 405
    lw	$a5,904($sp)
    # Line 404
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 405
    lwc1	$f0,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 406
    b	.L0daaf8e4
    # Line 405
    swc1	$f0,-4($a5)
.L0dab0bcc:
    # Line 108
    li	$v0,0x808c
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab170c
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab2294
    li	$v0,0x8094
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab279c
    sltu	$a5,$v0,$a0
    beqz	$a5,.L0daaf858
    li	$a6,0x8096
    bne	$a0,$a6,.L0dab01e0
    # Line 1117
    li	$a4,1
.L0dab0c00:
    # Line 1119
    addiu	$a4,$a4,2
.L0dab0c04:
    b	.L0dab0220
    # Line 1121
    addiu	$a4,$a4,2
.L0dab0c0c:
    # Line 108
    sltiu	$at,$a0,2915
    bnez	$at,.L0dab15c8
    sltiu	$v1,$a0,2916
    beqz	$v1,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 386
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,648($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 388
    addiu	$t3,$sp,912
    # Line 387
    lw	$a5,904($sp)
    # Line 386
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 387
    lwc1	$f1,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 388
    b	.L0daaf8e4
    # Line 387
    swc1	$f1,-4($a5)
.L0dab0c68:
    # Line 108
    sltiu	$a6,$a0,2929
    bnez	$a6,.L0dab161c
    sltiu	$at,$a0,2930
    beqz	$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab0c84:
    # Line 108
    sltiu	$v1,$a0,2964
    bnez	$v1,.L0dab16a0
    sltiu	$a5,$a0,2965
    beqz	$a5,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 459
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,136($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 461
    srl	$a0,$v0,0x3
    andi	$a0,$a0,0x7
    beqz	$a0,.L0dab33e4
    ld	$ra,1392($sp)
    li	$a5,1
    beq	$a5,$a0,.L0dab3430
    li	$a6,2
    beq	$a0,$a6,.L0dab3454
    li	$at,3
    beq	$a0,$at,.L0dab3554
    li	$v1,4
    beq	$a0,$v1,.L0dab35bc
    li	$a5,5
    beq	$a0,$a5,.L0dab35e0
    # Line 478
    li	$v1,5386
    # Line 461
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0dab0d00:
    # Line 108
    sltiu	$a6,$a0,3088
    bnez	$a6,.L0dab1810
    sltiu	$at,$a0,3089
    bnez	$at,.L0dab2be8
    li	$v1,3089
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab0d24:
    # Line 108
    sltiu	$a5,$a0,3123
    bnez	$a5,.L0dab1834
    sltiu	$a6,$a0,3124
    bnez	$a6,.L0dab24d4
    li	$at,3136
    bne	$a0,$at,.L0dab01e0
    # Line 695
    addiu	$t3,$sp,912
    lw	$v1,3092($s0)
    addiu	$s1,$t3,4
    # Line 696
    b	.L0daaf8e4
    # Line 695
    sw	$v1,912($sp)
.L0dab0d50:
    # Line 108
    sltiu	$a5,$a0,3350
    bnez	$a5,.L0dab188c
    sltiu	$a6,$a0,3351
    bnez	$a6,.L0dab24a8
    sltiu	$at,$a0,3352
    bnez	$at,.L0dab2828
    sltiu	$v1,$a0,3353
    bnez	$v1,.L0dab3144
    li	$a5,3353
    bne	$a0,$a5,.L0dab01e0
    # Line 800
    addiu	$a6,$t1,4
    sw	$a6,904($sp)
    lwc1	$f2,640($s0)
    # Line 801
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 800
    swc1	$f2,504($sp)
.L0dab0d90:
    # Line 108
    sltiu	$at,$a0,3412
    bnez	$at,.L0dab18ec
    sltiu	$v1,$a0,3413
    bnez	$v1,.L0dab24c0
    li	$a5,3413
    bne	$a0,$a5,.L0dab01e0
    # Line 870
    addiu	$t3,$sp,912
    lw	$a6,3152($s0)
    addiu	$s1,$t3,4
    # Line 871
    b	.L0daaf8e4
    # Line 870
    sw	$a6,912($sp)
.L0dab0dbc:
    # Line 108
    sltiu	$at,$a0,3456
    bnez	$at,.L0dab1910
    sltiu	$v1,$a0,3457
    bnez	$v1,.L0daaf858
    li	$a5,3472
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab0de0:
    # Line 108
    li	$v0,0x8023
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab19a8
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab24ec
    li	$v1,0x8024
    bne	$a0,$v1,.L0dab01e0
    # Line 943
    addiu	$a6,$t0,1
    sw	$a6,1312($sp)
    lbu	$a5,-32292($a1)
    # Line 944
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 943
    sb	$a5,0($sp)
.L0dab0e14:
    # Line 108
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab19d4
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dab2494
    li	$v0,0x8073
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab2884
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0dab311c
    li	$at,0x8074
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab0e4c:
    # Line 108
    li	$v0,0x807a
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab1a04
    sltu	$a5,$v0,$a0
    beqz	$a5,.L0dab2504
    li	$v0,0x807c
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab2898
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab318c
    li	$v1,0x807d
    bne	$a0,$v1,.L0dab01e0
    # Line 1066
    addiu	$t3,$sp,912
    lw	$a5,4808($s0)
    addiu	$s1,$t3,4
    # Line 1067
    b	.L0daaf8e4
    # Line 1066
    sw	$a5,912($sp)
.L0dab0e90:
    # Line 64
    li	$a6,2931
    bne	$a0,$a6,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab0ea4:
    # Line 64
    li	$at,2962
    bne	$a0,$at,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab0eb8:
    # Line 64
    sltiu	$v1,$a0,3010
    bnez	$v1,.L0dab1a40
    sltiu	$a5,$a0,3011
    beqz	$a5,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab0ed4:
    # Line 64
    sltiu	$a6,$a0,3089
    bnez	$a6,.L0dab1a68
    sltiu	$at,$a0,3090
    bnez	$at,.L0daaf7a8
    li	$v1,3104
    bne	$a0,$v1,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab0ef8:
    # Line 981
    addiu	$a5,$t1,4
    sw	$a5,904($sp)
    lwc1	$f3,-32140($a1)
    # Line 982
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 981
    swc1	$f3,504($sp)
.L0dab0f10:
    # Line 548
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,592($a0)
    # Line 549
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    # Line 548
    sw	$v0,912($sp)
    # Line 549
    bal __Mgr_ReturnMode
    lw	$a0,596($a0)
    # Line 550
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    # Line 549
    sw	$v0,916($sp)
    # Line 550
    bal __Mgr_ReturnMode
    lw	$a0,600($a0)
    # Line 551
    li	$a2,1
    li	$a1,1
    # Line 550
    sw	$v0,920($sp)
    addiu	$s1,$sp,912
    # Line 551
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    addiu	$s1,$s1,16
    bal __Mgr_ReturnMode
    lw	$a0,604($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    addiu	$t3,$sp,912
    sw	$v0,924($sp)
    # Line 552
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0dab0fa4:
    # Line 108
    li	$a5,2816
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab051c
    sd	$ra,1392($sp)
.L0dab0fb8:
    # Line 108
    sltiu	$a6,$a0,2822
    bnez	$a6,.L0dab1b0c
    sltiu	$at,$a0,2823
    beqz	$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 254
    beqz	$a2,.L0dab347c
    # Line 268
    addiu	$at,$t1,4
    sw	$at,904($sp)
    lwc1	$f3,264($s0)
    swc1	$f3,504($sp)
    # Line 269
    addiu	$a6,$t1,8
    sw	$a6,904($sp)
    lwc1	$f2,268($s0)
    swc1	$f2,508($sp)
    # Line 270
    addiu	$a5,$t1,12
    sw	$a5,904($sp)
    lwc1	$f1,272($s0)
    swc1	$f1,512($sp)
    # Line 271
    addiu	$v1,$t1,16
    sw	$v1,904($sp)
    lwc1	$f0,276($s0)
    swc1	$f0,516($sp)
.L0dab1010:
    # Line 273
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0dab1018:
    # Line 108
    sltiu	$v1,$a0,2854
    bnez	$v1,.L0dab1b34
    sltiu	$a5,$a0,2855
    beqz	$a5,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 330
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,724($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 331
    addiu	$a5,$v0,1
    sw	$a5,912($sp)
    # Line 333
    b	.L0daaf8e4
    # Line 331
    addiu	$s1,$t3,4
.L0dab1068:
    # Line 108
    sltiu	$a6,$a0,2885
    bnez	$a6,.L0dab1b80
    sltiu	$at,$a0,2886
    bnez	$at,.L0dab2d1c
    li	$v1,2886
    bne	$a0,$v1,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 345
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,696($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 346
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 345
    addiu	$t3,$sp,912
    # Line 347
    b	.L0daaf8e4
    # Line 346
    addiu	$s1,$t3,4
.L0dab10bc:
    # Line 108
    sltiu	$a5,$a0,3010
    bnez	$a5,.L0dab1b9c
    sltiu	$a6,$a0,3011
    beqz	$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 594
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,148($a0)
    # Line 596
    srl	$a6,$v0,0x3
    andi	$a6,$a6,0xfff
    dmtc1	$a6,$f0
    nop
    cvt.s.l	$f0,$f0
    lwc1	$f1,_lit_457ff000
    div.s	$f0,$f0,$f1
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    lw	$a5,904($sp)
    # Line 597
    addiu	$t3,$sp,912
    ld	$ra,1392($sp)
    # Line 596
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 597
    b	.L0daaf8e4
    # Line 596
    swc1	$f0,-4($a5)
.L0dab112c:
    # Line 108
    sltiu	$at,$a0,3255
    bnez	$at,.L0dab1be8
    sltiu	$v1,$a0,3256
    bnez	$v1,.L0daafb60
    li	$a5,3256
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daafb64
    # Line 827
    addiu	$t3,$sp,912
.L0dab1150:
    # Line 108
    sltiu	$a6,$a0,3381
    bnez	$a6,.L0dab1c04
    sltiu	$at,$a0,3382
    beqz	$at,.L0dab01e0
    # Line 843
    addiu	$t3,$sp,912
    lw	$v1,3480($s0)
    addiu	$s1,$t3,4
    # Line 844
    b	.L0daaf8e4
    # Line 843
    sw	$v1,912($sp)
.L0dab1174:
    # Line 108
    sltiu	$a5,$a0,3512
    bnez	$a5,.L0dab1c20
    sltiu	$a6,$a0,3513
    bnez	$a6,.L0daaf858
    li	$at,3536
    bne	$a0,$at,.L0dab01e0
    # Line 891
    addiu	$a5,$t1,4
    sw	$a5,904($sp)
    lwc1	$f2,1824($s0)
    swc1	$f2,504($sp)
    # Line 892
    addiu	$v1,$t1,8
    sw	$v1,904($sp)
    lwc1	$f1,1828($s0)
    # Line 893
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 892
    swc1	$f1,508($sp)
.L0dab11b4:
    # Line 108
    sltiu	$a6,$a0,16388
    bnez	$a6,.L0dab1c3c
    sltiu	$at,$a0,16389
    bnez	$at,.L0daaf858
    sltiu	$v1,$a0,16390
    bnez	$v1,.L0dab2b20
    sltiu	$a5,$a0,16391
    bnez	$a5,.L0daaf858
    li	$a6,16391
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab11e8:
    # Line 710
    addiu	$t3,$sp,912
    lw	$at,1812($s0)
    addiu	$s1,$t3,4
    # Line 711
    b	.L0daaf8e4
    # Line 710
    sw	$at,912($sp)
.L0dab11fc:
    # Line 108
    li	$v1,2944
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 430
    lbu	$a5,31613($s0)
    beqz	$a5,.L0dab17ac
    # Line 431
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,376($a0)
    # Line 433
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 432
    lw	$a3,908($sp)
    # Line 431
    sw	$v0,1316($sp)
    # Line 433
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 432
    lwc1	$f3,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f3,-4($a3)
    # Line 433
    bal __Mgr_ReturnMode
    lw	$a0,380($a0)
    # Line 435
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 434
    lw	$a3,908($sp)
    # Line 433
    sw	$v0,1316($sp)
    # Line 435
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 434
    lwc1	$f4,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f4,-4($a3)
    # Line 435
    bal __Mgr_ReturnMode
    lw	$a0,384($a0)
    # Line 437
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 436
    lw	$a3,908($sp)
    # Line 435
    sw	$v0,1316($sp)
    # Line 437
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 436
    lwc1	$f5,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f5,-4($a3)
    # Line 437
    bal __Mgr_ReturnMode
    lw	$a0,388($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 438
    lw	$a5,908($sp)
    # Line 437
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 438
    lwc1	$f0,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,908($sp)
    b	.L0dab17ec
    swc1	$f0,-4($a5)
.L0dab12e8:
    # Line 108
    li	$a6,2968
    bne	$a0,$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 540
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,140($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 541
    addiu	$s1,$t3,4
    srl	$a5,$v0,0x8
    andi	$a5,$a5,0xff
    # Line 542
    b	.L0daaf8e4
    # Line 541
    sw	$a5,912($sp)
.L0dab1334:
    # Line 108
    sltiu	$a6,$a0,2980
    bnez	$a6,.L0dab1ccc
    sltiu	$at,$a0,2981
    beqz	$at,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 562
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,504($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    la	$a5,SYMBOL_LOCATION
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    # Line 564
    lw	$a5,488($a5)
    # Line 562
    addiu	$t3,$sp,912
    # Line 564
    addiu	$s1,$t3,4
    subu	$a5,$v0,$a5
    srl	$a5,$a5,0x4
    addiu	$a5,$a5,1
    # Line 565
    b	.L0daaf8e4
    # Line 564
    sw	$a5,912($sp)
.L0dab1394:
    # Line 108
    bnez	$a6,.L0dab1d24
    sltiu	$at,$a0,2993
    bnez	$at,.L0dab2674
    li	$v1,2993
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1130
    lw	$a5,12740($s0)
    lw	$a6,12736($s0)
    addiu	$t3,$sp,912
    addiu	$s1,$t3,4
    subu	$a5,$a5,$a6
    sra	$a5,$a5,0x2
    # Line 1131
    b	.L0daaf8e4
    # Line 1130
    sw	$a5,912($sp)
.L0dab13cc:
    # Line 713
    addiu	$t3,$sp,912
    lw	$at,1872($s0)
    addiu	$s1,$t3,4
    # Line 714
    b	.L0daaf8e4
    # Line 713
    sw	$at,912($sp)
.L0dab13e0:
    # Line 764
    addiu	$t3,$sp,912
    lw	$v1,1120($s0)
    addiu	$s1,$t3,4
    # Line 765
    b	.L0daaf8e4
    # Line 764
    sw	$v1,912($sp)
.L0dab13f4:
    # Line 852
    addiu	$t3,$sp,912
    lw	$a5,3496($s0)
    addiu	$s1,$t3,4
    # Line 853
    b	.L0daaf8e4
    # Line 852
    sw	$a5,912($sp)
.L0dab1408:
    # Line 1136
    addiu	$t3,$sp,912
    lw	$a6,4580($s0)
    addiu	$s1,$t3,4
    # Line 1137
    b	.L0daaf8e4
    # Line 1136
    sw	$a6,912($sp)
.L0dab141c:
    # Line 108
    li	$at,2832
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab1430:
    # Line 108
    li	$v1,2849
    bne	$a0,$v1,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 309
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,688($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 311
    addiu	$t3,$sp,912
    # Line 310
    lw	$a5,904($sp)
    # Line 309
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 310
    lwc1	$f1,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 311
    b	.L0daaf8e4
    # Line 310
    swc1	$f1,-4($a5)
.L0dab1484:
    # Line 108
    li	$a6,2901
    bne	$a0,$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 366
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,632($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 367
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 366
    addiu	$t3,$sp,912
    # Line 368
    b	.L0daaf8e4
    # Line 367
    addiu	$s1,$t3,4
.L0dab14c8:
    # Line 108
    sltiu	$a5,$a0,3056
    bnez	$a5,.L0dab1e8c
    sltiu	$a6,$a0,3057
    beqz	$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 611
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,344($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 613
    addiu	$s1,$t3,4
    srl	$a5,$v0,0x1a
    andi	$a5,$a5,0xf
    addiu	$a5,$a5,5376
    # Line 614
    b	.L0daaf8e4
    # Line 613
    sw	$a5,912($sp)
.L0dab1520:
    # Line 302
    addiu	$t3,$t1,4
    sw	$t3,904($sp)
    lwc1	$f3,3448($s0)
    swc1	$f3,504($sp)
    # Line 303
    addiu	$a6,$t1,8
    sw	$a6,904($sp)
    lwc1	$f2,3452($s0)
    # Line 304
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 303
    swc1	$f2,508($sp)
.L0dab1548:
    # Line 378
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,656($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 379
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 378
    addiu	$t3,$sp,912
    # Line 380
    b	.L0daaf8e4
    # Line 379
    addiu	$s1,$t3,4
.L0dab1584:
    # Line 108
    li	$v0,0x80d2
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab1ec8
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0dab2920
    li	$v0,0x813f
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab2f0c
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dab3314
    li	$a5,0x8140
    bne	$a0,$a5,.L0dab01e0
    # Line 1038
    addiu	$t3,$sp,912
    lw	$a6,-31380($a1)
    addiu	$s1,$t3,4
    # Line 1039
    b	.L0daaf8e4
    # Line 1038
    sw	$a6,912($sp)
.L0dab15c8:
    # Line 108
    li	$at,2914
    bne	$a0,$at,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 382
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,644($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 384
    addiu	$t3,$sp,912
    # Line 383
    lw	$a5,904($sp)
    # Line 382
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 383
    lwc1	$f0,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 384
    b	.L0daaf8e4
    # Line 383
    swc1	$f0,-4($a5)
.L0dab161c:
    # Line 108
    li	$a6,2928
    bne	$a0,$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 408
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,584($a0)
    # Line 410
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 409
    lw	$a3,908($sp)
    # Line 408
    sw	$v0,1316($sp)
    # Line 410
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 409
    lwc1	$f1,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f1,-4($a3)
    # Line 410
    bal __Mgr_ReturnMode
    lw	$a0,588($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 412
    addiu	$t3,$sp,912
    # Line 411
    lw	$a5,908($sp)
    # Line 410
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 411
    lwc1	$f2,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,908($sp)
    # Line 412
    b	.L0daaf8e4
    # Line 411
    swc1	$f2,-4($a5)
.L0dab16a0:
    # Line 108
    li	$a6,2963
    bne	$a0,$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 455
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,140($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 456
    andi	$a5,$v0,0xff
    sw	$a5,912($sp)
    # Line 457
    b	.L0daaf8e4
    # Line 456
    addiu	$s1,$t3,4
.L0dab16e8:
    # Line 108
    sltiu	$a6,$a0,3170
    bnez	$a6,.L0dab1f18
    sltiu	$at,$a0,3171
    bnez	$at,.L0daaf858
    li	$v1,3171
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab170c:
    # Line 108
    li	$v0,0x808a
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab2010
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0dab2ad8
    li	$at,0x808b
    bne	$a0,$at,.L0dab01e0
    # Line 1108
    addiu	$t3,$sp,912
    lw	$v1,4912($s0)
    addiu	$s1,$t3,4
    # Line 1109
    b	.L0daaf8e4
    # Line 1108
    sw	$v1,912($sp)
.L0dab173c:
    sd	$ra,1392($sp)
    sd	$zero,1360($sp)
.L0dab1744:
    # Line 950
    li	$a2,1
    la	$a0,SYMBOL_LOCATION
    ld	$a3,1360($sp)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,480($a0)
    move	$a1,$zero
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$a3
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    # Line 949
    ld	$a5,1360($sp)
    addiu	$t2,$sp,104
    li	$a6,16
    addiu	$a5,$a5,1
    # Line 951
    lw	$at,904($sp)
    # Line 950
    sw	$v0,1316($sp)
    sd	$a5,1360($sp)
    # Line 951
    lwc1	$f3,1316($sp)
    addiu	$at,$at,4
    sw	$at,904($sp)
    # Line 949
    bne	$a5,$a6,.L0dab1744
    # Line 951
    swc1	$f3,-4($at)
    # Line 953
    addiu	$t3,$sp,912
    # Line 949
    sw	$v0,1316($sp)
    # Line 953
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0dab17ac:
    # Line 440
    addiu	$at,$t2,4
    sw	$at,908($sp)
    lwc1	$f3,1552($s0)
    swc1	$f3,104($sp)
    # Line 441
    addiu	$a6,$t2,8
    sw	$a6,908($sp)
    lwc1	$f2,1556($s0)
    swc1	$f2,108($sp)
    # Line 442
    addiu	$a5,$t2,12
    sw	$a5,908($sp)
    lwc1	$f1,1560($s0)
    swc1	$f1,112($sp)
    # Line 443
    addiu	$v1,$t2,16
    sw	$v1,908($sp)
    lwc1	$f0,1564($s0)
    swc1	$f0,116($sp)
.L0dab17ec:
    # Line 445
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0dab17f4:
    # Line 108
    li	$v1,2867
    bne	$a0,$v1,.L0dab01e0
    # Line 716
    addiu	$t3,$sp,912
    lw	$a5,4688($s0)
    addiu	$s1,$t3,4
    # Line 717
    b	.L0daaf8e4
    # Line 716
    sw	$a5,912($sp)
.L0dab1810:
    # Line 108
    sltiu	$a6,$a0,3074
    bnez	$a6,.L0dab2080
    sltiu	$at,$a0,3075
    beqz	$at,.L0dab01e0
    # Line 619
    addiu	$t3,$sp,912
    lw	$v1,1152($s0)
    addiu	$s1,$t3,4
    # Line 620
    b	.L0daaf8e4
    # Line 619
    sw	$v1,912($sp)
.L0dab1834:
    # Line 108
    sltiu	$a5,$a0,3122
    bnez	$a5,.L0dab209c
    sltiu	$a6,$a0,3123
    beqz	$a6,.L0dab01e0
    # Line 916
    addiu	$v1,$t0,1
    sw	$v1,1312($sp)
    lbu	$at,3106($s0)
    # Line 917
    addiu	$t3,$sp,912
    # Line 916
    sltu	$at,$zero,$at
    # Line 917
    b	.L0daaf8e4
    # Line 916
    sb	$at,0($sp)
.L0dab1860:
    # Line 108
    sltiu	$a5,$a0,3329
    bnez	$a5,.L0dab20c0
    sltiu	$a6,$a0,3330
    bnez	$a6,.L0dab2b34
    li	$at,3330
    bne	$a0,$at,.L0dab01e0
    # Line 731
    addiu	$t3,$sp,912
    lw	$v1,1076($s0)
    addiu	$s1,$t3,4
    # Line 732
    b	.L0daaf8e4
    # Line 731
    sw	$v1,912($sp)
.L0dab188c:
    # Line 108
    sltiu	$a5,$a0,3348
    bnez	$a5,.L0dab20e8
    sltiu	$a6,$a0,3349
    bnez	$a6,.L0dab2b60
    li	$at,3349
    bne	$a0,$at,.L0dab01e0
    # Line 797
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f0,636($s0)
    # Line 798
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 797
    swc1	$f0,504($sp)
.L0dab18bc:
    # Line 108
    sltiu	$a5,$a0,3386
    bnez	$a5,.L0dab210c
    sltiu	$a6,$a0,3387
    beqz	$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 912
    lw	$v1,3344($s0)
    sw	$v1,912($sp)
    addiu	$t3,$sp,912
    # Line 913
    lw	$at,3348($s0)
    addiu	$s1,$t3,8
    # Line 914
    b	.L0daaf8e4
    # Line 913
    sw	$at,916($sp)
.L0dab18ec:
    # Line 108
    sltiu	$a5,$a0,3411
    bnez	$a5,.L0dab2128
    sltiu	$a6,$a0,3412
    beqz	$a6,.L0dab01e0
    # Line 864
    addiu	$t3,$sp,912
    lw	$at,3144($s0)
    addiu	$s1,$t3,4
    # Line 865
    b	.L0daaf8e4
    # Line 864
    sw	$at,912($sp)
.L0dab1910:
    # Line 108
    sltiu	$v1,$a0,3440
    bnez	$v1,.L0dab2144
    sltiu	$a5,$a0,3441
    beqz	$a5,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 908
    li	$a2,1
    li	$a1,1
    addiu	$s1,$sp,912
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    addiu	$s1,$s1,4
    bal __Mgr_ReturnMode
    lw	$a0,1000($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    addiu	$t3,$sp,912
    sw	$v0,912($sp)
    # Line 910
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0dab1960:
    # Line 108
    sltiu	$at,$a0,3480
    bnez	$at,.L0dab2174
    sltiu	$v1,$a0,3481
    bnez	$v1,.L0daaf858
    li	$a5,3504
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab1984:
    # Line 108
    sltiu	$a6,$a0,10752
    bnez	$a6,.L0dab21c0
    sltiu	$at,$a0,10753
    bnez	$at,.L0dab3254
    li	$v1,12288
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab19a8:
    # Line 108
    li	$v0,0x8022
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab2218
    sltu	$a6,$v0,$a0
    bnez	$a6,.L0dab01e0
    # Line 1026
    addiu	$t3,$t1,4
    sw	$t3,904($sp)
    lwc1	$f1,-31868($a1)
    # Line 1027
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1026
    swc1	$f1,504($sp)
.L0dab19d4:
    # Line 108
    li	$v0,0x806c
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab2238
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dab2b4c
    li	$a5,0x806d
    bne	$a0,$a5,.L0dab01e0
    # Line 758
    addiu	$t3,$sp,912
    lw	$a6,1128($s0)
    addiu	$s1,$t3,4
    # Line 759
    b	.L0daaf8e4
    # Line 758
    sw	$a6,912($sp)
.L0dab1a04:
    # Line 108
    li	$v0,0x8078
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab2260
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0daaf858
    li	$a5,0x8079
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab1a2c:
    # Line 64
    li	$a6,2966
    bne	$a0,$a6,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab1a40:
    # Line 64
    li	$at,3009
    bne	$a0,$at,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab1a54:
    # Line 64
    li	$v1,3042
    bne	$a0,$v1,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab1a68:
    # Line 64
    li	$a5,3088
    bne	$a0,$a5,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab1a7c:
    # Line 426
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,144($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 427
    addiu	$s1,$t3,4
    andi	$a5,$v0,0x7
    addiu	$a5,$a5,512
    # Line 428
    b	.L0daaf8e4
    # Line 427
    sw	$a5,912($sp)
.L0dab1ac0:
    # Line 536
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,136($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 537
    addiu	$s1,$t3,4
    lui	$a5,0xf
    ori	$a5,$a5,0xf000
    and	$a5,$v0,$a5
    srl	$a5,$a5,0xc
    # Line 538
    b	.L0daaf8e4
    # Line 537
    sw	$a5,912($sp)
.L0dab1b0c:
    # Line 108
    li	$a6,2821
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 220
    lbu	$at,3104($s0)
    beqz	$at,.L0dab35f0
    # Line 226
    li	$a2,1
    # Line 222
    sw	$v0,912($sp)
.L0dab1b28:
    # Line 232
    addiu	$t3,$sp,912
    # Line 234
    b	.L0daaf8e4
    # Line 232
    addiu	$s1,$t3,4
.L0dab1b34:
    # Line 108
    li	$v1,2853
    bne	$a0,$v1,.L0dab01e0
    sd	$ra,1392($sp)
    li	$s1,1
    sd	$zero,1400($sp)
    # Line 322
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,720($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    li	$a2,-1
    li	$a1,15
    ld	$a0,1400($sp)
    b	.L0dab3240
    ld	$ra,1392($sp)
.L0dab1b80:
    # Line 108
    sltiu	$a5,$a0,2884
    bnez	$a5,.L0dab23b4
    sltiu	$a6,$a0,2885
    beqz	$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab1b9c:
    # Line 108
    li	$at,3009
    bne	$a0,$at,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 590
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,148($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 591
    addiu	$s1,$t3,4
    andi	$a5,$v0,0x7
    addiu	$a5,$a5,512
    # Line 592
    b	.L0daaf8e4
    # Line 591
    sw	$a5,912($sp)
.L0dab1be8:
    # Line 108
    sltiu	$a6,$a0,3254
    bnez	$a6,.L0dab2414
    sltiu	$at,$a0,3255
    beqz	$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daafb64
    # Line 827
    addiu	$t3,$sp,912
.L0dab1c04:
    # Line 108
    li	$v1,3380
    bne	$a0,$v1,.L0dab01e0
    # Line 840
    addiu	$t3,$sp,912
    lw	$a5,3476($s0)
    addiu	$s1,$t3,4
    # Line 841
    b	.L0daaf8e4
    # Line 840
    sw	$a5,912($sp)
.L0dab1c20:
    # Line 108
    sltiu	$a6,$a0,3511
    bnez	$a6,.L0dab2450
    sltiu	$at,$a0,3512
    beqz	$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab1c3c:
    # Line 108
    sltiu	$v1,$a0,16386
    bnez	$v1,.L0dab2464
    sltiu	$a5,$a0,16387
    bnez	$a5,.L0daaf858
    li	$a6,16387
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab1c60:
    # Line 698
    addiu	$t3,$sp,912
    lw	$at,1796($s0)
    addiu	$s1,$t3,4
    # Line 699
    b	.L0daaf8e4
    # Line 698
    sw	$at,912($sp)
.L0dab1c74:
    # Line 788
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f2,624($s0)
    # Line 789
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 788
    swc1	$f2,504($sp)
.L0dab1c8c:
    # Line 873
    addiu	$t3,$sp,912
    lw	$a5,3128($s0)
    addiu	$s1,$t3,4
    # Line 874
    b	.L0daaf8e4
    # Line 873
    sw	$a5,912($sp)
.L0dab1ca0:
    # Line 946
    addiu	$t3,$t0,1
    sw	$t3,1312($sp)
    lbu	$a6,-32244($a1)
    # Line 947
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 946
    sb	$a6,0($sp)
.L0dab1cb8:
    # Line 1069
    addiu	$t3,$sp,912
    lw	$at,4820($s0)
    addiu	$s1,$t3,4
    # Line 1070
    b	.L0daaf8e4
    # Line 1069
    sw	$at,912($sp)
.L0dab1ccc:
    # Line 108
    li	$v1,2979
    bne	$a0,$v1,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 557
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    move	$a1,$zero
    bal __Mgr_ReturnMode
    lw	$a0,500($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    la	$a5,SYMBOL_LOCATION
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    # Line 559
    lw	$a5,484($a5)
    # Line 557
    addiu	$t3,$sp,912
    # Line 559
    addiu	$s1,$t3,4
    subu	$a5,$v0,$a5
    srl	$a5,$a5,0x4
    addiu	$a5,$a5,1
    # Line 560
    b	.L0daaf8e4
    # Line 559
    sw	$a5,912($sp)
.L0dab1d24:
    # Line 108
    li	$a6,2984
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,1392($sp)
    sd	$zero,1360($sp)
.L0dab1d38:
    # Line 585
    li	$a2,1
    la	$a0,SYMBOL_LOCATION
    ld	$a3,1360($sp)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,356($a0)
    move	$a1,$zero
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$a3
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    # Line 584
    ld	$a5,1360($sp)
    addiu	$t2,$sp,104
    li	$a6,16
    addiu	$a5,$a5,1
    # Line 586
    lw	$at,904($sp)
    # Line 585
    sw	$v0,1316($sp)
    sd	$a5,1360($sp)
    # Line 586
    lwc1	$f3,1316($sp)
    addiu	$at,$at,4
    sw	$at,904($sp)
    # Line 584
    bne	$a5,$a6,.L0dab1d38
    # Line 586
    swc1	$f3,-4($at)
    # Line 588
    addiu	$t3,$sp,912
    # Line 584
    sw	$v0,1316($sp)
    # Line 588
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0dab1da0:
    # Line 719
    addiu	$t3,$sp,912
    lw	$v1,4684($s0)
    addiu	$s1,$t3,4
    # Line 720
    b	.L0daaf8e4
    # Line 719
    sw	$v1,912($sp)
.L0dab1db4:
    # Line 846
    addiu	$t3,$sp,912
    lw	$a5,3492($s0)
    addiu	$s1,$t3,4
    # Line 847
    b	.L0daaf8e4
    # Line 846
    sw	$a5,912($sp)
.L0dab1dc8:
    # Line 895
    addiu	$t3,$sp,912
    lw	$a6,1836($s0)
    addiu	$s1,$t3,4
    # Line 896
    b	.L0daaf8e4
    # Line 895
    sw	$a6,912($sp)
.L0dab1ddc:
    # Line 925
    addiu	$a5,$t2,4
    sw	$a5,908($sp)
    lwc1	$f3,1740($s0)
    swc1	$f3,104($sp)
    # Line 926
    addiu	$v1,$t2,8
    sw	$v1,908($sp)
    lwc1	$f2,1744($s0)
    swc1	$f2,108($sp)
    # Line 927
    addiu	$at,$t2,12
    sw	$at,908($sp)
    lwc1	$f1,1748($s0)
    swc1	$f1,112($sp)
    # Line 928
    addiu	$t3,$t2,16
    sw	$t3,908($sp)
    lwc1	$f0,1752($s0)
    # Line 929
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 928
    swc1	$f0,116($sp)
.L0dab1e24:
    # Line 607
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,788($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 608
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 607
    addiu	$t3,$sp,912
    # Line 609
    b	.L0daaf8e4
    # Line 608
    addiu	$s1,$t3,4
.L0dab1e60:
    # Line 108
    li	$a5,3105
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 644
    lbu	$a6,3104($s0)
    beqz	$a6,.L0dab3654
    # Line 649
    li	$a2,1
    # Line 653
    lw	$at,1780($s0)
    sw	$at,912($sp)
.L0dab1e80:
    addiu	$t3,$sp,912
    # Line 655
    b	.L0daaf8e4
    # Line 653
    addiu	$s1,$t3,4
.L0dab1e8c:
    # Line 108
    li	$v1,3042
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab1ea0:
    # Line 313
    addiu	$a6,$t1,4
    sw	$a6,904($sp)
    lwc1	$f1,3460($s0)
    swc1	$f1,504($sp)
    # Line 314
    addiu	$a5,$t1,8
    sw	$a5,904($sp)
    lwc1	$f0,3464($s0)
    # Line 315
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 314
    swc1	$f0,508($sp)
.L0dab1ec8:
    # Line 108
    li	$v0,0x80d0
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab27b8
    sltu	$v1,$v0,$a0
    beqz	$v1,.L0dab3080
    li	$a5,0x80d1
    bne	$a0,$a5,.L0dab01e0
    # Line 1002
    addiu	$t3,$t0,1
    sw	$t3,1312($sp)
    lbu	$a6,-31716($a1)
    # Line 1003
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1002
    sb	$a6,0($sp)
.L0dab1efc:
    # Line 108
    li	$at,3153
    bne	$a0,$at,.L0dab01e0
    # Line 701
    addiu	$t3,$sp,912
    lw	$v1,1800($s0)
    addiu	$s1,$t3,4
    # Line 702
    b	.L0daaf8e4
    # Line 701
    sw	$v1,912($sp)
.L0dab1f18:
    # Line 108
    sltiu	$a5,$a0,3169
    bnez	$a5,.L0dab27e4
    sltiu	$a6,$a0,3170
    beqz	$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab1f34:
    # Line 108
    sltiu	$at,$a0,3357
    bnez	$at,.L0dab2848
    sltiu	$v1,$a0,3358
    bnez	$v1,.L0dab315c
    li	$a5,3358
    bne	$a0,$a5,.L0dab01e0
    # Line 794
    addiu	$a6,$t1,4
    sw	$a6,904($sp)
    lwc1	$f2,632($s0)
    # Line 795
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 794
    swc1	$f2,504($sp)
.L0dab1f64:
    # Line 108
    li	$at,3415
    bne	$a0,$at,.L0dab01e0
    # Line 876
    addiu	$t3,$sp,912
    lw	$v1,3132($s0)
    addiu	$s1,$t3,4
    # Line 877
    b	.L0daaf8e4
    # Line 876
    sw	$v1,912($sp)
.L0dab1f80:
    # Line 108
    li	$v0,0x8038
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab2870
    sltu	$a6,$v0,$a0
    bnez	$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 931
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,1228($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 933
    addiu	$t3,$sp,912
    # Line 932
    lw	$a5,904($sp)
    # Line 931
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 932
    lwc1	$f3,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 933
    b	.L0daaf8e4
    # Line 932
    swc1	$f3,-4($a5)
.L0dab1fe0:
    # Line 108
    li	$v0,0x8081
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab28b4
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab31a0
    li	$v1,0x8082
    bne	$a0,$v1,.L0dab01e0
    # Line 1081
    addiu	$t3,$sp,912
    lw	$a5,4848($s0)
    addiu	$s1,$t3,4
    # Line 1082
    b	.L0daaf8e4
    # Line 1081
    sw	$a5,912($sp)
.L0dab2010:
    # Line 108
    li	$v0,0x8089
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab28dc
    sltu	$at,$v0,$a0
    bnez	$at,.L0dab01e0
    # Line 1102
    addiu	$t3,$sp,912
    lw	$v1,4900($s0)
    addiu	$s1,$t3,4
    # Line 1103
    b	.L0daaf8e4
    # Line 1102
    sw	$v1,912($sp)
.L0dab2038:
    # Line 108
    li	$v0,0x80b4
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab28f8
    sltu	$a6,$v0,$a0
    beqz	$a6,.L0dab3174
    li	$at,0x80b5
    bne	$a0,$at,.L0dab01e0
    # Line 966
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f0,-32160($a1)
    # Line 967
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 966
    swc1	$f0,504($sp)
.L0dab206c:
    # Line 1041
    addiu	$t3,$sp,912
    lw	$a5,-31376($a1)
    addiu	$s1,$t3,4
    # Line 1042
    b	.L0daaf8e4
    # Line 1041
    sw	$a5,912($sp)
.L0dab2080:
    # Line 108
    li	$a6,3073
    bne	$a0,$a6,.L0dab01e0
    # Line 616
    addiu	$t3,$sp,912
    lw	$at,1792($s0)
    addiu	$s1,$t3,4
    # Line 617
    b	.L0daaf8e4
    # Line 616
    sw	$at,912($sp)
.L0dab209c:
    # Line 108
    li	$v1,3121
    bne	$a0,$v1,.L0dab01e0
    # Line 668
    addiu	$a6,$t0,1
    sw	$a6,1312($sp)
    lbu	$a5,3104($s0)
    # Line 669
    addiu	$t3,$sp,912
    # Line 668
    sltu	$a5,$zero,$a5
    # Line 669
    b	.L0daaf8e4
    # Line 668
    sb	$a5,0($sp)
.L0dab20c0:
    # Line 108
    sltiu	$at,$a0,3328
    bnez	$at,.L0dab2938
    sltiu	$v1,$a0,3329
    beqz	$v1,.L0dab01e0
    # Line 722
    addiu	$a6,$t0,1
    sw	$a6,1312($sp)
    lbu	$a5,1072($s0)
    # Line 723
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 722
    sb	$a5,0($sp)
.L0dab20e8:
    # Line 108
    sltiu	$at,$a0,3347
    bnez	$at,.L0dab2954
    sltiu	$v1,$a0,3348
    beqz	$v1,.L0dab01e0
    # Line 779
    addiu	$t3,$sp,912
    lw	$a5,732($s0)
    addiu	$s1,$t3,4
    # Line 780
    b	.L0daaf8e4
    # Line 779
    sw	$a5,912($sp)
.L0dab210c:
    # Line 108
    li	$a6,3385
    bne	$a0,$a6,.L0dab01e0
    # Line 855
    addiu	$t3,$sp,912
    lw	$at,3500($s0)
    addiu	$s1,$t3,4
    # Line 856
    b	.L0daaf8e4
    # Line 855
    sw	$at,912($sp)
.L0dab2128:
    # Line 108
    li	$v1,3410
    bne	$a0,$v1,.L0dab01e0
    # Line 861
    addiu	$t3,$sp,912
    lw	$a5,3140($s0)
    addiu	$s1,$t3,4
    # Line 862
    b	.L0daaf8e4
    # Line 861
    sw	$a5,912($sp)
.L0dab2144:
    # Line 108
    li	$a6,3419
    bne	$a0,$a6,.L0dab01e0
    # Line 888
    addiu	$t3,$sp,912
    lw	$at,3124($s0)
    addiu	$s1,$t3,4
    # Line 889
    b	.L0daaf8e4
    # Line 888
    sw	$at,912($sp)
.L0dab2160:
    # Line 108
    li	$v1,3474
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2174:
    # Line 108
    sltiu	$a5,$a0,3479
    bnez	$a5,.L0dab2970
    sltiu	$a6,$a0,3480
    beqz	$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2190:
    # Line 108
    sltiu	$at,$a0,3539
    bnez	$at,.L0dab2998
    sltiu	$v1,$a0,3540
    beqz	$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 904
    lw	$a6,1852($s0)
    sw	$a6,912($sp)
    addiu	$t3,$sp,912
    # Line 905
    lw	$a5,1868($s0)
    addiu	$s1,$t3,8
    # Line 906
    b	.L0daaf8e4
    # Line 905
    sw	$a5,916($sp)
.L0dab21c0:
    # Line 108
    sltiu	$at,$a0,3572
    bnez	$at,.L0dab29e8
    sltiu	$v1,$a0,3573
    beqz	$v1,.L0dab01e0
    # Line 1142
    addiu	$t3,$sp,912
    lw	$a5,4612($s0)
    addiu	$s1,$t3,4
    # Line 1143
    b	.L0daaf8e4
    # Line 1142
    sw	$a5,912($sp)
.L0dab21e4:
    # Line 108
    li	$v0,0x8011
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab2a18
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab3200
    li	$v1,0x8012
    bne	$a0,$v1,.L0dab01e0
    # Line 993
    addiu	$a6,$t0,1
    sw	$a6,1312($sp)
    lbu	$a5,-31948($a1)
    # Line 994
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 993
    sb	$a5,0($sp)
.L0dab2218:
    # Line 108
    li	$at,0x8021
    bne	$a0,$at,.L0dab01e0
    # Line 1023
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f1,-31872($a1)
    # Line 1024
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1023
    swc1	$f1,504($sp)
.L0dab2238:
    # Line 108
    li	$v0,0x806b
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab2a44
    sltu	$a6,$v0,$a0
    bnez	$a6,.L0dab01e0
    # Line 734
    addiu	$t3,$sp,912
    lw	$at,1092($s0)
    addiu	$s1,$t3,4
    # Line 735
    b	.L0daaf8e4
    # Line 734
    sw	$at,912($sp)
.L0dab2260:
    # Line 108
    li	$v0,0x8077
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab2a58
    sltu	$a5,$v0,$a0
    bnez	$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2280:
    # Line 64
    li	$a6,3106
    bne	$a0,$a6,.L0dab0760
    # Line 101
    nop	# was lw $t9, -26832($gp) # &__glDoGet
    b	.L0daaf7ac
    # Line 108
    sltiu	$a5,$a0,3379
.L0dab2294:
    # Line 1111
    addiu	$t3,$sp,912
    lw	$at,4928($s0)
    addiu	$s1,$t3,4
    # Line 1112
    b	.L0daaf8e4
    # Line 1111
    sw	$at,912($sp)
.L0dab22a8:
    # Line 390
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,652($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 392
    addiu	$t3,$sp,912
    # Line 391
    lw	$a5,904($sp)
    # Line 390
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 391
    lwc1	$f2,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 392
    b	.L0daaf8e4
    # Line 391
    swc1	$f2,-4($a5)
.L0dab22f4:
    # Line 414
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,144($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    lw	$t3,1312($sp)
    lui	$a6,0xfff
    ori	$a6,$a6,0xfff0
    and	$a5,$a6,$v0
    beq	$a5,$a6,.L0dab3300
    ld	$ra,1392($sp)
    # Line 418
    addiu	$at,$t3,1
    sw	$at,1312($sp)
    sb	$zero,-1($at)
.L0dab2340:
    # Line 419
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0dab2348:
    # Line 484
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,136($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 487
    srl	$a0,$v0,0x6
    andi	$a0,$a0,0x7
    beqz	$a0,.L0dab33d0
    ld	$ra,1392($sp)
    li	$a5,1
    beq	$a5,$a0,.L0dab3410
    li	$a6,2
    beq	$a0,$a6,.L0dab3440
    li	$at,3
    beq	$a0,$at,.L0dab3468
    li	$v1,4
    beq	$a0,$v1,.L0dab35a8
    li	$a5,5
    beq	$a0,$a5,.L0dab35d0
    # Line 504
    li	$at,5386
    # Line 487
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0dab23b4:
    # Line 108
    li	$a6,2883
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab051c
    sd	$ra,1392($sp)
.L0dab23c8:
    # Line 108
    li	$at,2897
    bne	$a0,$at,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 349
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,612($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 350
    lw	$a5,1312($sp)
    # Line 351
    addiu	$t3,$sp,912
    ld	$ra,1392($sp)
    # Line 350
    addiu	$a5,$a5,1
    sw	$a5,1312($sp)
    # Line 351
    b	.L0daaf8e4
    # Line 350
    sb	$v0,-1($a5)
.L0dab2414:
    # Line 108
    li	$a6,3253
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daafb64
    # Line 827
    addiu	$t3,$sp,912
.L0dab2428:
    # Line 108
    sltiu	$at,$a0,3313
    bnez	$at,.L0dab2aec
    sltiu	$v1,$a0,3314
    beqz	$v1,.L0dab01e0
    # Line 749
    addiu	$a6,$t0,1
    sw	$a6,1312($sp)
    lbu	$a5,1109($s0)
    # Line 750
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 749
    sb	$a5,0($sp)
.L0dab2450:
    # Line 108
    li	$at,3510
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2464:
    # Line 108
    sltiu	$v1,$a0,16385
    bnez	$v1,.L0dab2b0c
    sltiu	$a5,$a0,16386
    beqz	$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2480:
    # Line 737
    addiu	$t3,$sp,912
    lw	$a6,1080($s0)
    addiu	$s1,$t3,4
    # Line 738
    b	.L0daaf8e4
    # Line 737
    sw	$a6,912($sp)
.L0dab2494:
    # Line 752
    addiu	$t3,$sp,912
    lw	$at,1132($s0)
    addiu	$s1,$t3,4
    # Line 753
    b	.L0daaf8e4
    # Line 752
    sw	$at,912($sp)
.L0dab24a8:
    # Line 812
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f3,720($s0)
    # Line 813
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 812
    swc1	$f3,504($sp)
.L0dab24c0:
    # Line 867
    addiu	$t3,$sp,912
    lw	$a5,3148($s0)
    addiu	$s1,$t3,4
    # Line 868
    b	.L0daaf8e4
    # Line 867
    sw	$a5,912($sp)
.L0dab24d4:
    # Line 922
    addiu	$t3,$t0,1
    sw	$t3,1312($sp)
    lbu	$a6,3107($s0)
    # Line 923
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 922
    sb	$a6,0($sp)
.L0dab24ec:
    # Line 1029
    addiu	$at,$t1,4
    sw	$at,904($sp)
    lwc1	$f0,-31864($a1)
    # Line 1030
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1029
    swc1	$f0,504($sp)
.L0dab2504:
    # Line 1057
    addiu	$t3,$sp,912
    lw	$v1,4792($s0)
    addiu	$s1,$t3,4
    # Line 1058
    b	.L0daaf8e4
    # Line 1057
    sw	$v1,912($sp)
.L0dab2518:
    # Line 1133
    addiu	$t3,$sp,912
    lw	$a5,3484($s0)
    addiu	$s1,$t3,4
    # Line 1134
    b	.L0daaf8e4
    # Line 1133
    sw	$a5,912($sp)
.L0dab252c:
    # Line 636
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,396($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 638
    addiu	$t3,$sp,912
    # Line 637
    lw	$a5,904($sp)
    # Line 636
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 637
    lwc1	$f1,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 638
    b	.L0daaf8e4
    # Line 637
    swc1	$f1,-4($a5)
.L0dab2578:
    # Line 275
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,552($a0)
    sw	$v0,1316($sp)
    # Line 277
    lwc1	$f2,1316($sp)
    ldc1	$f3,_lit8_c0e7fff000000000
    cvt.d.s	$f2,$f2
    # Line 278
    li	$a2,1
    # Line 277
    add.d	$f2,$f2,$f3
    # Line 278
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 277
    lw	$a3,904($sp)
    cvt.s.d	$f2,$f2
    # Line 278
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 277
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f2,-4($a3)
    # Line 278
    bal __Mgr_ReturnMode
    lw	$a0,556($a0)
    sw	$v0,1316($sp)
    # Line 280
    lwc1	$f3,1316($sp)
    ldc1	$f4,_lit8_c0e7fff000000000
    cvt.d.s	$f3,$f3
    # Line 281
    li	$a2,1
    # Line 280
    add.d	$f3,$f3,$f4
    # Line 281
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 280
    lw	$a3,904($sp)
    cvt.s.d	$f3,$f3
    # Line 281
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 280
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f3,-4($a3)
    # Line 281
    bal __Mgr_ReturnMode
    lw	$a0,560($a0)
    # Line 284
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 283
    lw	$a3,904($sp)
    # Line 281
    sw	$v0,1316($sp)
    # Line 284
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 283
    lwc1	$f4,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f4,-4($a3)
    # Line 284
    bal __Mgr_ReturnMode
    lw	$a0,564($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 287
    addiu	$t3,$sp,912
    # Line 286
    lw	$a5,904($sp)
    # Line 284
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 286
    lwc1	$f0,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 287
    b	.L0daaf8e4
    # Line 286
    swc1	$f0,-4($a5)
.L0dab2674:
    # Line 554
    lw	$a6,12732($s0)
    lw	$at,12728($s0)
    addiu	$t3,$sp,912
    addiu	$s1,$t3,4
    subu	$a6,$a6,$at
    sra	$a6,$a6,0x2
    # Line 555
    b	.L0daaf8e4
    # Line 554
    sw	$a6,912($sp)
.L0dab2694:
    # Line 688
    addiu	$at,$t0,1
    sw	$at,1312($sp)
    lbu	$a6,1784($s0)
    sb	$a6,0($sp)
    # Line 689
    addiu	$a5,$t0,2
    sw	$a5,1312($sp)
    lbu	$v1,1785($s0)
    sb	$v1,1($sp)
    # Line 690
    addiu	$at,$t0,3
    sw	$at,1312($sp)
    lbu	$a6,1786($s0)
    sb	$a6,2($sp)
    # Line 691
    addiu	$a5,$t0,4
    sw	$a5,1312($sp)
    lbu	$v1,1787($s0)
    sb	$v1,3($sp)
.L0dab26d4:
    # Line 693
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0dab26dc:
    # Line 544
    li	$a2,1
    move	$a1,$zero
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,728($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    addiu	$t3,$sp,912
    # Line 545
    addiu	$a5,$v0,5889
    sw	$a5,912($sp)
    # Line 546
    b	.L0daaf8e4
    # Line 545
    addiu	$s1,$t3,4
.L0dab271c:
    # Line 567
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,508($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    la	$a5,SYMBOL_LOCATION
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    # Line 569
    lw	$a5,492($a5)
    # Line 567
    addiu	$t3,$sp,912
    # Line 569
    addiu	$s1,$t3,4
    subu	$a5,$v0,$a5
    srl	$a5,$a5,0x4
    addiu	$a5,$a5,1
    # Line 570
    b	.L0daaf8e4
    # Line 569
    sw	$a5,912($sp)
.L0dab276c:
    # Line 108
    li	$v0,0x8144
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab2f2c
    sltu	$at,$v0,$a0
    beqz	$at,.L0dab3328
    li	$v1,0x8145
    bne	$a0,$v1,.L0dab01e0
    # Line 1053
    addiu	$t3,$sp,912
    lw	$a5,-31360($a1)
    addiu	$s1,$t3,4
    # Line 1054
    b	.L0daaf8e4
    # Line 1053
    sw	$a5,912($sp)
.L0dab279c:
    # Line 108
    li	$a6,0x808d
    bne	$a0,$a6,.L0dab01e0
    # Line 1114
    addiu	$t3,$sp,912
    lw	$at,4932($s0)
    addiu	$s1,$t3,4
    # Line 1115
    b	.L0daaf8e4
    # Line 1114
    sw	$at,912($sp)
.L0dab27b8:
    # Line 108
    li	$v0,0x80bc
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab2fac
    sltu	$a5,$v0,$a0
    bnez	$a5,.L0dab01e0
    # Line 999
    addiu	$t3,$t0,1
    sw	$t3,1312($sp)
    lbu	$a6,-31776($a1)
    # Line 1000
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 999
    sb	$a6,0($sp)
.L0dab27e4:
    # Line 108
    li	$at,3168
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab27f8:
    # Line 108
    li	$v1,3249
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daafb64
    # Line 827
    addiu	$t3,$sp,912
.L0dab280c:
    # Line 108
    li	$a5,3332
    bne	$a0,$a5,.L0dab01e0
    # Line 740
    addiu	$t3,$sp,912
    lw	$a6,1084($s0)
    addiu	$s1,$t3,4
    # Line 741
    b	.L0daaf8e4
    # Line 740
    sw	$a6,912($sp)
.L0dab2828:
    # Line 108
    li	$at,3351
    bne	$a0,$at,.L0dab01e0
    # Line 815
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f1,724($s0)
    # Line 816
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 815
    swc1	$f1,504($sp)
.L0dab2848:
    # Line 108
    sltiu	$a5,$a0,3356
    bnez	$a5,.L0dab2fcc
    sltiu	$a6,$a0,3357
    beqz	$a6,.L0dab01e0
    # Line 791
    addiu	$t3,$t1,4
    sw	$t3,904($sp)
    lwc1	$f2,628($s0)
    # Line 792
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 791
    swc1	$f2,504($sp)
.L0dab2870:
    # Line 108
    li	$at,0x8037
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2884:
    # Line 108
    li	$v1,0x806f
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2898:
    # Line 108
    li	$a5,0x807b
    bne	$a0,$a5,.L0dab01e0
    # Line 1060
    addiu	$t3,$sp,912
    lw	$a6,4796($s0)
    addiu	$s1,$t3,4
    # Line 1061
    b	.L0daaf8e4
    # Line 1060
    sw	$a6,912($sp)
.L0dab28b4:
    # Line 108
    li	$v0,0x8080
    sltu	$at,$a0,$v0
    bnez	$at,.L0dab300c
    sltu	$v1,$v0,$a0
    bnez	$v1,.L0dab01e0
    # Line 1075
    addiu	$t3,$sp,912
    lw	$a5,4832($s0)
    addiu	$s1,$t3,4
    # Line 1076
    b	.L0daaf8e4
    # Line 1075
    sw	$a5,912($sp)
.L0dab28dc:
    # Line 108
    li	$a6,0x8088
    bne	$a0,$a6,.L0dab01e0
    # Line 1099
    addiu	$t3,$sp,912
    lw	$at,4896($s0)
    addiu	$s1,$t3,4
    # Line 1100
    b	.L0daaf8e4
    # Line 1099
    sw	$at,912($sp)
.L0dab28f8:
    # Line 108
    li	$v0,0x80b3
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0dab3028
    sltu	$a5,$v0,$a0
    bnez	$a5,.L0dab01e0
    # Line 960
    li	$a6,2
    sw	$a6,912($sp)
    addiu	$t3,$sp,912
    # Line 961
    b	.L0daaf8e4
    # Line 960
    addiu	$s1,$t3,4
.L0dab2920:
    # Line 1005
    addiu	$v1,$t0,1
    sw	$v1,1312($sp)
    lbu	$at,-31656($a1)
    # Line 1006
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1005
    sb	$at,0($sp)
.L0dab2938:
    # Line 108
    li	$a5,3317
    bne	$a0,$a5,.L0dab01e0
    # Line 767
    addiu	$t3,$sp,912
    lw	$a6,1124($s0)
    addiu	$s1,$t3,4
    # Line 768
    b	.L0daaf8e4
    # Line 767
    sw	$a6,912($sp)
.L0dab2954:
    # Line 108
    li	$at,3346
    bne	$a0,$at,.L0dab01e0
    # Line 776
    addiu	$t3,$sp,912
    lw	$v1,728($s0)
    addiu	$s1,$t3,4
    # Line 777
    b	.L0daaf8e4
    # Line 776
    sw	$v1,912($sp)
.L0dab2970:
    # Line 108
    li	$a5,3478
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2984:
    # Line 108
    li	$a6,3506
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2998:
    # Line 108
    li	$at,3538
    bne	$a0,$at,.L0dab01e0
    # Line 898
    addiu	$t3,$t1,4
    sw	$t3,904($sp)
    lwc1	$f2,1840($s0)
    swc1	$f2,504($sp)
    # Line 899
    addiu	$a6,$t1,8
    sw	$a6,904($sp)
    lwc1	$f1,1844($s0)
    swc1	$f1,508($sp)
    # Line 900
    addiu	$a5,$t1,12
    sw	$a5,904($sp)
    lwc1	$f0,1856($s0)
    swc1	$f0,512($sp)
    # Line 901
    addiu	$v1,$t1,16
    sw	$v1,904($sp)
    lwc1	$f3,1860($s0)
    # Line 902
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 901
    swc1	$f3,516($sp)
.L0dab29e8:
    # Line 108
    li	$at,3570
    bne	$a0,$at,.L0dab01e0
    # Line 1139
    addiu	$t3,$sp,912
    lw	$v1,4584($s0)
    addiu	$s1,$t3,4
    # Line 1140
    b	.L0daaf8e4
    # Line 1139
    sw	$v1,912($sp)
.L0dab2a04:
    # Line 108
    li	$a5,12290
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2a18:
    # Line 108
    li	$v0,0x8010
    sltu	$a6,$a0,$v0
    bnez	$a6,.L0dab3098
    sltu	$at,$v0,$a0
    bnez	$at,.L0dab01e0
    # Line 987
    addiu	$a5,$t0,1
    sw	$a5,1312($sp)
    lbu	$v1,-32108($a1)
    # Line 988
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 987
    sb	$v1,0($sp)
.L0dab2a44:
    # Line 108
    li	$a6,0x806a
    bne	$a0,$a6,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab0c04
    nop
.L0dab2a58:
    # Line 108
    li	$at,0x8076
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2a6c:
    # Line 704
    addiu	$t3,$sp,912
    lw	$v1,1804($s0)
    addiu	$s1,$t3,4
    # Line 705
    b	.L0daaf8e4
    # Line 704
    sw	$v1,912($sp)
.L0dab2a80:
    # Line 809
    addiu	$a5,$t1,4
    sw	$a5,904($sp)
    lwc1	$f3,652($s0)
    # Line 810
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 809
    swc1	$f3,504($sp)
.L0dab2a98:
    # Line 879
    addiu	$t3,$sp,912
    lw	$a6,3112($s0)
    addiu	$s1,$t3,4
    # Line 880
    b	.L0daaf8e4
    # Line 879
    sw	$a6,912($sp)
.L0dab2aac:
    # Line 969
    addiu	$t3,$t1,4
    sw	$t3,904($sp)
    lwc1	$f0,-32156($a1)
    # Line 970
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 969
    swc1	$f0,504($sp)
.L0dab2ac4:
    # Line 1084
    addiu	$t3,$sp,912
    lw	$at,4856($s0)
    addiu	$s1,$t3,4
    # Line 1085
    b	.L0daaf8e4
    # Line 1084
    sw	$at,912($sp)
.L0dab2ad8:
    # Line 1105
    addiu	$t3,$sp,912
    lw	$v1,4908($s0)
    addiu	$s1,$t3,4
    # Line 1106
    b	.L0daaf8e4
    # Line 1105
    sw	$v1,912($sp)
.L0dab2aec:
    # Line 108
    li	$a5,3312
    bne	$a0,$a5,.L0dab01e0
    # Line 746
    addiu	$t3,$t0,1
    sw	$t3,1312($sp)
    lbu	$a6,1108($s0)
    # Line 747
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 746
    sb	$a6,0($sp)
.L0dab2b0c:
    # Line 108
    li	$at,16384
    bne	$a0,$at,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2b20:
    # Line 108
    li	$v1,16389
    bne	$a0,$v1,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0daaf858
    sd	$ra,1392($sp)
.L0dab2b34:
    # Line 725
    addiu	$a6,$t0,1
    sw	$a6,1312($sp)
    lbu	$a5,1073($s0)
    # Line 726
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 725
    sb	$a5,0($sp)
.L0dab2b4c:
    # Line 728
    addiu	$t3,$sp,912
    lw	$at,1096($s0)
    addiu	$s1,$t3,4
    # Line 729
    b	.L0daaf8e4
    # Line 728
    sw	$at,912($sp)
.L0dab2b60:
    # Line 782
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f1,616($s0)
    # Line 783
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 782
    swc1	$f1,504($sp)
.L0dab2b78:
    # Line 1008
    addiu	$a5,$t1,4
    sw	$a5,904($sp)
    lwc1	$f2,-31892($a1)
    # Line 1009
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1008
    swc1	$f2,504($sp)
.L0dab2b90:
    # Line 335
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,676($a0)
    # Line 337
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    # Line 336
    sw	$v0,912($sp)
    # Line 337
    bal __Mgr_ReturnMode
    lw	$a0,680($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 338
    sw	$v0,916($sp)
    ld	$ra,1392($sp)
    # Line 337
    addiu	$t3,$sp,912
    # Line 339
    b	.L0daaf8e4
    # Line 338
    addiu	$s1,$t3,8
.L0dab2be8:
    # Line 624
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 622
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    # Line 624
    bal __Mgr_ReturnMode
    lw	$a0,1072($a0)
    sd	$v0,1336($sp)
    # Line 625
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,1076($a0)
    sd	$v0,1344($sp)
    # Line 626
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,1080($a0)
    sd	$v0,1352($sp)
    # Line 627
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,1084($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    addiu	$t3,$sp,912
    # Line 632
    addiu	$s1,$t3,16
    # Line 629
    ld	$a6,1336($sp)
    # Line 631
    ld	$a5,1352($sp)
    ld	$ra,1344($sp)
    # Line 629
    sw	$a6,912($sp)
    # Line 631
    subu	$a5,$a5,$a6
    # Line 630
    sw	$ra,916($sp)
    # Line 632
    subu	$ra,$v0,$ra
    addiu	$ra,$ra,1
    # Line 631
    addiu	$a5,$a5,1
    sw	$a5,920($sp)
    # Line 632
    sw	$ra,924($sp)
    # Line 634
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0dab2ca0:
    # Line 510
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,136($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 513
    srl	$a0,$v0,0x9
    andi	$a0,$a0,0x7
    beqz	$a0,.L0dab3640
    ld	$ra,1392($sp)
    li	$a5,1
    beq	$a5,$a0,.L0dab3694
    li	$a6,2
    beq	$a0,$a6,.L0dab36a4
    li	$at,3
    beq	$a0,$at,.L0dab36b8
    li	$v1,4
    beq	$a0,$v1,.L0dab36cc
    li	$a5,5
    beq	$a0,$a5,.L0dab36e0
    # Line 530
    li	$at,5386
    # Line 513
    b	.L0daaf8e4
    addiu	$t3,$sp,912
.L0dab2d08:
    # Line 755
    addiu	$t3,$sp,912
    lw	$a6,1112($s0)
    addiu	$s1,$t3,4
    # Line 756
    b	.L0daaf8e4
    # Line 755
    sw	$a6,912($sp)
.L0dab2d1c:
    # Line 341
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,692($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 342
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 341
    addiu	$t3,$sp,912
    # Line 343
    b	.L0daaf8e4
    # Line 342
    addiu	$s1,$t3,4
.L0dab2d58:
    # Line 243
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 241
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    # Line 243
    bal __Mgr_ReturnMode
    lw	$a0,520($a0)
    # Line 245
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 244
    lw	$a3,904($sp)
    # Line 243
    sw	$v0,1316($sp)
    # Line 245
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 244
    lwc1	$f3,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f3,-4($a3)
    # Line 245
    bal __Mgr_ReturnMode
    lw	$a0,524($a0)
    # Line 247
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 246
    lw	$a3,904($sp)
    # Line 245
    sw	$v0,1316($sp)
    # Line 247
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 246
    lwc1	$f4,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f4,-4($a3)
    # Line 247
    bal __Mgr_ReturnMode
    lw	$a0,528($a0)
    # Line 249
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 248
    lw	$a3,904($sp)
    # Line 247
    sw	$v0,1316($sp)
    # Line 249
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 248
    lwc1	$f5,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f5,-4($a3)
    # Line 249
    bal __Mgr_ReturnMode
    lw	$a0,532($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 250
    lw	$a5,904($sp)
    # Line 249
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 250
    lwc1	$f0,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    b	.L0daaff18
    swc1	$f0,-4($a5)
.L0dab2e30:
    # Line 658
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,360($a0)
    # Line 660
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 659
    lw	$a3,908($sp)
    # Line 658
    sw	$v0,1316($sp)
    # Line 660
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 659
    lwc1	$f1,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f1,-4($a3)
    # Line 660
    bal __Mgr_ReturnMode
    lw	$a0,364($a0)
    # Line 662
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 661
    lw	$a3,908($sp)
    # Line 660
    sw	$v0,1316($sp)
    # Line 662
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 661
    lwc1	$f2,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f2,-4($a3)
    # Line 662
    bal __Mgr_ReturnMode
    lw	$a0,368($a0)
    # Line 664
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 663
    lw	$a3,908($sp)
    # Line 662
    sw	$v0,1316($sp)
    # Line 664
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 663
    lwc1	$f3,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,908($sp)
    swc1	$f3,-4($a3)
    # Line 664
    bal __Mgr_ReturnMode
    lw	$a0,372($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 666
    addiu	$t3,$sp,912
    # Line 665
    lw	$a5,908($sp)
    # Line 664
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 665
    lwc1	$f0,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,908($sp)
    # Line 666
    b	.L0daaf8e4
    # Line 665
    swc1	$f0,-4($a5)
.L0dab2f0c:
    # Line 108
    li	$a6,0x813e
    bne	$a0,$a6,.L0dab01e0
    # Line 1032
    addiu	$v1,$t0,1
    sw	$v1,1312($sp)
    lw	$at,-32296($a1)
    # Line 1033
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1032
    sb	$at,0($sp)
.L0dab2f2c:
    # Line 108
    li	$v0,0x8143
    sltu	$a5,$a0,$v0
    bnez	$a5,.L0dab32e4
    sltu	$a6,$v0,$a0
    bnez	$a6,.L0dab01e0
    # Line 1047
    addiu	$t3,$sp,912
    lw	$at,-31368($a1)
    addiu	$s1,$t3,4
    # Line 1048
    b	.L0daaf8e4
    # Line 1047
    sw	$at,912($sp)
.L0dab2f54:
    # Line 108
    li	$v1,3376
    bne	$a0,$v1,.L0dab01e0
    # Line 831
    addiu	$t3,$sp,912
    lw	$a5,3472($s0)
    addiu	$s1,$t3,4
    # Line 832
    b	.L0daaf8e4
    # Line 831
    sw	$a5,912($sp)
.L0dab2f70:
    # Line 108
    li	$a6,0x8084
    bne	$a0,$a6,.L0dab01e0
    # Line 1087
    addiu	$t3,$sp,912
    lw	$at,4860($s0)
    addiu	$s1,$t3,4
    # Line 1088
    b	.L0daaf8e4
    # Line 1087
    sw	$at,912($sp)
.L0dab2f8c:
    # Line 108
    li	$v1,0x80b7
    bne	$a0,$v1,.L0dab01e0
    # Line 972
    addiu	$a5,$t1,4
    sw	$a5,904($sp)
    lwc1	$f1,-32152($a1)
    # Line 973
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 972
    swc1	$f1,504($sp)
.L0dab2fac:
    # Line 108
    li	$a6,0x80bb
    bne	$a0,$a6,.L0dab01e0
    # Line 984
    addiu	$t3,$t1,4
    sw	$t3,904($sp)
    lwc1	$f2,-32136($a1)
    # Line 985
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 984
    swc1	$f2,504($sp)
.L0dab2fcc:
    # Line 108
    li	$at,3355
    bne	$a0,$at,.L0dab01e0
    # Line 803
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f3,644($s0)
    # Line 804
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 803
    swc1	$f3,504($sp)
.L0dab2fec:
    # Line 108
    li	$a5,0x801d
    bne	$a0,$a5,.L0dab01e0
    # Line 1011
    addiu	$a6,$t1,4
    sw	$a6,904($sp)
    lwc1	$f0,-31888($a1)
    # Line 1012
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1011
    swc1	$f0,504($sp)
.L0dab300c:
    # Line 108
    li	$at,0x807f
    bne	$a0,$at,.L0dab01e0
    # Line 1072
    addiu	$t3,$sp,912
    lw	$v1,4828($s0)
    addiu	$s1,$t3,4
    # Line 1073
    b	.L0daaf8e4
    # Line 1072
    sw	$v1,912($sp)
.L0dab3028:
    # Line 108
    li	$a5,0x80b2
    bne	$a0,$a5,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 955
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,512($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    la	$a5,SYMBOL_LOCATION
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    # Line 957
    lw	$a5,496($a5)
    # Line 955
    addiu	$t3,$sp,912
    # Line 957
    addiu	$s1,$t3,4
    subu	$a5,$v0,$a5
    srl	$a5,$a5,0x4
    addiu	$a5,$a5,1
    # Line 958
    b	.L0daaf8e4
    # Line 957
    sw	$a5,912($sp)
.L0dab3080:
    # Line 996
    addiu	$t3,$t0,1
    sw	$t3,1312($sp)
    lbu	$a6,-31836($a1)
    # Line 997
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 996
    sb	$a6,0($sp)
.L0dab3098:
    # Line 108
    li	$at,0x8009
    bne	$a0,$at,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 599
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,992($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 600
    sw	$v0,912($sp)
    ld	$ra,1392($sp)
    # Line 599
    addiu	$t3,$sp,912
    # Line 601
    b	.L0daaf8e4
    # Line 600
    addiu	$s1,$t3,4
.L0dab30dc:
    # Line 108
    li	$a5,0x817b
    bne	$a0,$a5,.L0dab01e4
    # Line 1158
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dab30e8:
    # Line 1150
    lbu	$a6,-25435($a1)
    bnez	$a6,.L0dab01e0
    sd	$ra,1392($sp)
    # Line 1151
    # lw $t9, -26832($gp) # &__glDoGet
    ld	$a1,1320($sp)
    jal	__glDoGet
    ld	$a2,1328($sp)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 1152
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    ld	$ra,1392($sp)
.L0dab311c:
    # Line 182
    li	$t3,64
    sw	$t3,912($sp)
    addiu	$t3,$sp,912
    # Line 183
    b	.L0daaf8e4
    # Line 182
    addiu	$s1,$t3,4
.L0dab3130:
    # Line 743
    addiu	$t3,$sp,912
    lw	$at,1088($s0)
    addiu	$s1,$t3,4
    # Line 744
    b	.L0daaf8e4
    # Line 743
    sw	$at,912($sp)
.L0dab3144:
    # Line 785
    addiu	$v1,$t1,4
    sw	$v1,904($sp)
    lwc1	$f1,620($s0)
    # Line 786
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 785
    swc1	$f1,504($sp)
.L0dab315c:
    # Line 806
    addiu	$a5,$t1,4
    sw	$a5,904($sp)
    lwc1	$f2,648($s0)
    # Line 807
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 806
    swc1	$f2,504($sp)
.L0dab3174:
    # Line 963
    addiu	$a6,$t1,4
    sw	$a6,904($sp)
    lwc1	$f3,-32164($a1)
    # Line 964
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 963
    swc1	$f3,504($sp)
.L0dab318c:
    # Line 1063
    addiu	$t3,$sp,912
    lw	$at,4804($s0)
    addiu	$s1,$t3,4
    # Line 1064
    b	.L0daaf8e4
    # Line 1063
    sw	$at,912($sp)
.L0dab31a0:
    # Line 1078
    addiu	$t3,$sp,912
    lw	$v1,4844($s0)
    addiu	$s1,$t3,4
    # Line 1079
    b	.L0daaf8e4
    # Line 1078
    sw	$v1,912($sp)
.L0dab31b4:
    # Line 935
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,1232($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 937
    addiu	$t3,$sp,912
    # Line 936
    lw	$a5,904($sp)
    # Line 935
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 936
    lwc1	$f0,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 937
    b	.L0daaf8e4
    # Line 936
    swc1	$f0,-4($a5)
.L0dab3200:
    # Line 990
    addiu	$t3,$t0,1
    sw	$t3,1312($sp)
    lbu	$a6,-32028($a1)
    # Line 991
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 990
    sb	$a6,0($sp)
.L0dab3218:
    # Line 325
    or	$a0,$at,$a0
    # Line 323
    srl	$v0,$v0,0x1
.L0dab3220:
    # Line 322
    andi	$v1,$v0,0x1
    beqz	$v1,.L0dab3234
    # Line 323
    addiu	$a1,$a1,-1
    # Line 325
    sllv	$a5,$s1,$a1
    or	$a0,$a5,$a0
.L0dab3234:
    # Line 323
    addiu	$a1,$a1,-1
    beq	$a1,$a2,.L0dab3420
    srl	$v0,$v0,0x1
.L0dab3240:
    # Line 322
    andi	$a6,$v0,0x1
    beqzl	$a6,.L0dab3220
    # Line 323
    srl	$v0,$v0,0x1
    b	.L0dab3218
    # Line 325
    sllv	$at,$s1,$a1
.L0dab3254:
    # Line 939
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,1236($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 941
    addiu	$t3,$sp,912
    # Line 940
    lw	$a5,904($sp)
    # Line 939
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 940
    lwc1	$f1,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    # Line 941
    b	.L0daaf8e4
    # Line 940
    swc1	$f1,-4($a5)
.L0dab32a0:
    # Line 353
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,616($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 354
    lw	$a5,1312($sp)
    # Line 355
    addiu	$t3,$sp,912
    ld	$ra,1392($sp)
    # Line 354
    addiu	$a5,$a5,1
    sw	$a5,1312($sp)
    # Line 355
    b	.L0daaf8e4
    # Line 354
    sb	$v0,-1($a5)
.L0dab32e4:
    # Line 108
    li	$a6,0x8142
    bne	$a0,$a6,.L0dab01e0
    # Line 1044
    addiu	$t3,$sp,912
    lw	$at,-31372($a1)
    addiu	$s1,$t3,4
    # Line 1045
    b	.L0daaf8e4
    # Line 1044
    sw	$at,912($sp)
.L0dab3300:
    li	$v1,1
    # Line 416
    addiu	$a5,$t3,1
    sw	$a5,1312($sp)
    b	.L0dab2340
    sb	$v1,-1($a5)
.L0dab3314:
    # Line 1035
    li	$a6,16384
    sw	$a6,912($sp)
    addiu	$t3,$sp,912
    # Line 1036
    b	.L0daaf8e4
    # Line 1035
    addiu	$s1,$t3,4
.L0dab3328:
    # Line 1050
    addiu	$t3,$sp,912
    lw	$at,-31364($a1)
    addiu	$s1,$t3,4
    # Line 1051
    b	.L0daaf8e4
    # Line 1050
    sw	$at,912($sp)
.L0dab333c:
    # Line 210
    addiu	$a3,$sp,1312
    # lw $t9, -30892($gp) # &__Mgr_GetCurrentAttrState
    addiu	$a2,$sp,908
    sd	$ra,1392($sp)
    bal __Mgr_GetCurrentAttrState
    addiu	$a1,$sp,904
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    b	.L0dab0330
    ld	$ra,1392($sp)
.L0dab3368:
    sd	$ra,1392($sp)
    # Line 1125
    li	$a0,0x8a30
    bal mgrTM_RefreshDim
    addu	$a0,$t3,$a0
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    lw	$v0,-29964($s1)
    b	.L0dab0264
    ld	$ra,1392($sp)
.L0dab3390:
    # Line 834
    addiu	$t3,$sp,912
    lw	$a5,3328($s0)
    addiu	$s1,$t3,4
    # Line 835
    b	.L0daaf8e4
    # Line 834
    sw	$a5,912($sp)
.L0dab33a4:
    # Line 975
    addiu	$a6,$t1,4
    sw	$a6,904($sp)
    lwc1	$f2,-32148($a1)
    # Line 976
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 975
    swc1	$f2,504($sp)
.L0dab33bc:
    # Line 1090
    addiu	$t3,$sp,912
    lw	$at,4872($s0)
    addiu	$s1,$t3,4
    # Line 1091
    b	.L0daaf8e4
    # Line 1090
    sw	$at,912($sp)
.L0dab33d0:
    # Line 489
    li	$v1,7680
    sw	$v1,912($sp)
    addiu	$t3,$sp,912
    # Line 490
    b	.L0daaf8e4
    # Line 489
    addiu	$s1,$t3,4
.L0dab33e4:
    # Line 463
    li	$a5,7680
    sw	$a5,912($sp)
    addiu	$t3,$sp,912
    # Line 464
    b	.L0daaf8e4
    # Line 463
    addiu	$s1,$t3,4
.L0dab33f8:
    # Line 1014
    addiu	$a6,$t1,4
    sw	$a6,904($sp)
    lwc1	$f3,-31884($a1)
    # Line 1015
    addiu	$t3,$sp,912
    b	.L0daaf8e4
    # Line 1014
    swc1	$f3,504($sp)
.L0dab3410:
    # Line 492
    sw	$zero,912($sp)
    addiu	$t3,$sp,912
    # Line 493
    b	.L0daaf8e4
    # Line 492
    addiu	$s1,$t3,4
.L0dab3420:
    # Line 326
    sw	$a0,912($sp)
    # Line 323
    addiu	$t3,$sp,912
    # Line 328
    b	.L0daaf8e4
    # Line 326
    addiu	$s1,$t3,4
.L0dab3430:
    # Line 466
    sw	$zero,912($sp)
    addiu	$t3,$sp,912
    # Line 467
    b	.L0daaf8e4
    # Line 466
    addiu	$s1,$t3,4
.L0dab3440:
    # Line 495
    li	$t3,7681
    sw	$t3,912($sp)
    addiu	$t3,$sp,912
    # Line 496
    b	.L0daaf8e4
    # Line 495
    addiu	$s1,$t3,4
.L0dab3454:
    # Line 469
    li	$s1,7681
    sw	$s1,912($sp)
    addiu	$t3,$sp,912
    # Line 470
    b	.L0daaf8e4
    # Line 469
    addiu	$s1,$t3,4
.L0dab3468:
    # Line 498
    li	$at,7682
    sw	$at,912($sp)
    addiu	$t3,$sp,912
    # Line 499
    b	.L0daaf8e4
    # Line 498
    addiu	$s1,$t3,4
.L0dab347c:
    # Line 255
    li	$a2,1
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,536($a0)
    # Line 258
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 257
    lw	$a3,904($sp)
    # Line 255
    sw	$v0,1316($sp)
    # Line 258
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 257
    lwc1	$f4,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f4,-4($a3)
    # Line 258
    bal __Mgr_ReturnMode
    lw	$a0,540($a0)
    # Line 261
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 260
    lw	$a3,904($sp)
    # Line 258
    sw	$v0,1316($sp)
    # Line 261
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 260
    lwc1	$f5,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f5,-4($a3)
    # Line 261
    bal __Mgr_ReturnMode
    lw	$a0,544($a0)
    # Line 264
    li	$a2,1
    li	$a1,1
    la	$a0,SYMBOL_LOCATION
    # Line 263
    lw	$a3,904($sp)
    # Line 261
    sw	$v0,1316($sp)
    # Line 264
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 263
    lwc1	$f6,1316($sp)
    addiu	$a3,$a3,4
    sw	$a3,904($sp)
    swc1	$f6,-4($a3)
    # Line 264
    bal __Mgr_ReturnMode
    lw	$a0,548($a0)
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    # Line 266
    lw	$a5,904($sp)
    # Line 264
    sw	$v0,1316($sp)
    ld	$ra,1392($sp)
    # Line 266
    lwc1	$f0,1316($sp)
    addiu	$a5,$a5,4
    sw	$a5,904($sp)
    b	.L0dab1010
    swc1	$f0,-4($a5)
.L0dab3554:
    # Line 472
    li	$a6,7682
    sw	$a6,912($sp)
    addiu	$t3,$sp,912
    # Line 473
    b	.L0daaf8e4
    # Line 472
    addiu	$s1,$t3,4
.L0dab3568:
    # Line 683
    addiu	$at,$t3,1
    sw	$at,1312($sp)
    b	.L0daaffb8
    sb	$zero,-1($at)
.L0dab3578:
    addiu	$v1,$t3,1
    sw	$v1,1312($sp)
    b	.L0daaffd8
    sb	$zero,-1($v1)
.L0dab3588:
    addiu	$a5,$t3,1
    sw	$a5,1312($sp)
    b	.L0daafff8
    sb	$zero,-1($a5)
.L0dab3598:
    addiu	$a6,$t3,1
    sw	$a6,1312($sp)
    b	.L0dab0018
    sb	$zero,-1($a6)
.L0dab35a8:
    # Line 501
    li	$t3,7683
    sw	$t3,912($sp)
    addiu	$t3,$sp,912
    # Line 502
    b	.L0daaf8e4
    # Line 501
    addiu	$s1,$t3,4
.L0dab35bc:
    # Line 475
    li	$s1,7683
    sw	$s1,912($sp)
    addiu	$t3,$sp,912
    # Line 476
    b	.L0daaf8e4
    # Line 475
    addiu	$s1,$t3,4
.L0dab35d0:
    # Line 504
    sw	$at,912($sp)
    addiu	$t3,$sp,912
    # Line 505
    b	.L0daaf8e4
    # Line 504
    addiu	$s1,$t3,4
.L0dab35e0:
    # Line 478
    sw	$v1,912($sp)
    addiu	$t3,$sp,912
    # Line 479
    b	.L0daaf8e4
    # Line 478
    addiu	$s1,$t3,4
.L0dab35f0:
    # Line 226
    li	$a1,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    sd	$ra,1392($sp)
    bal __Mgr_ReturnMode
    lw	$a0,516($a0)
    sw	$v0,1316($sp)
    # Line 228
    lwc1	$f1,1316($sp)
    trunc.w.s	$f1,$f1
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    mfc1	$a1,$f1
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    slti	$a5,$a1,4096
    bnez	$a5,.L0dab3638
    move	$a0,$a1
    # Line 230
    sra	$a0,$a1,0xc
.L0dab3638:
    b	.L0dab1b28
    # Line 232
    sw	$a0,912($sp)
.L0dab3640:
    # Line 515
    li	$a6,7680
    sw	$a6,912($sp)
    addiu	$t3,$sp,912
    # Line 516
    b	.L0daaf8e4
    # Line 515
    addiu	$s1,$t3,4
.L0dab3654:
    # Line 649
    li	$a1,1
    sd	$ra,1392($sp)
    la	$a0,SYMBOL_LOCATION
    # Line 647
    lw	$s1,3136($s0)
    # Line 649
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,1216($a0)
    # Line 647
    sllv	$s1,$v0,$s1
    # Line 649
    bal __Mgr_ReturnMode
    # Line 647
    addiu	$s1,$s1,-1
    addiu	$t0,$sp,0
    addiu	$t1,$sp,504
    addiu	$t2,$sp,104
    ld	$ra,1392($sp)
    # Line 651
    and	$a5,$v0,$s1
    b	.L0dab1e80
    sw	$a5,912($sp)
.L0dab3694:
    # Line 518
    sw	$zero,912($sp)
    addiu	$t3,$sp,912
    # Line 519
    b	.L0daaf8e4
    # Line 518
    addiu	$s1,$t3,4
.L0dab36a4:
    # Line 521
    li	$a6,7681
    sw	$a6,912($sp)
    addiu	$t3,$sp,912
    # Line 522
    b	.L0daaf8e4
    # Line 521
    addiu	$s1,$t3,4
.L0dab36b8:
    # Line 524
    li	$t3,7682
    sw	$t3,912($sp)
    addiu	$t3,$sp,912
    # Line 525
    b	.L0daaf8e4
    # Line 524
    addiu	$s1,$t3,4
.L0dab36cc:
    # Line 527
    li	$s1,7683
    sw	$s1,912($sp)
    addiu	$t3,$sp,912
    # Line 528
    b	.L0daaf8e4
    # Line 527
    addiu	$s1,$t3,4
.L0dab36e0:
    # Line 530
    sw	$at,912($sp)
    addiu	$t3,$sp,912
    # Line 531
    b	.L0daaf8e4
    # Line 530
    addiu	$s1,$t3,4
.end __glMgrDoGet

# Function: __glMgrim_GetDoublev
# Declared: Line 1177 (Source lines: 1177-1179)
# Address: 0x0dab36f0 - 0x0dab372c (Size: 60 bytes, Frame: 32)
.globl __glMgrim_GetDoublev
.ent __glMgrim_GetDoublev
__glMgrim_GetDoublev:
    # Line 1178
    li	$a2,2
    # Line 1177
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a4,0x15
    addiu	$a4,$a4,-20568
    addu	$gp,$t9,$a4
    # Line 1178
    # lw $t9, -30888($gp) # &__glMgrDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glMgrDoGet
    addiu	$a3,$a3,-7744
    # Line 1179
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_GetDoublev

# Function: __glMgrim_GetError
# Declared: Line 1185 (Source lines: 1185-1202)
# Address: 0x0dab372c - 0x0dab37d4 (Size: 168 bytes, Frame: 32)
.globl __glMgrim_GetError
.ent __glMgrim_GetError
__glMgrim_GetError:
    # Line 1188
    li	$v0,1
    # Line 1185
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    sd	$s0,8($sp)
    # Line 1188
    lw	$s0,__glCurrentContext
    sd	$gp,0($sp)
    lw	$at,__glBeginMode
    # Line 1185
    lui	$v1,0x15
    addiu	$v1,$v1,-20628
    # Line 1188
    beq	$at,$v0,.L0dab37b0
    # Line 1185
    addu	$gp,$t9,$v1
    # Line 1193
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    la	$a0,SYMBOL_LOCATION
    li	$a1,1
    bal __Mgr_ReturnMode
    lw	$a0,804($a0)
    move	$a2,$v0
    # Line 1197
    lui	$at,0x7
    # Line 1193
    beqz	$v0,.L0dab37a8
    ld	$ra,16($sp)
    # Line 1197
    ori	$at,$at,0x4080
    # Line 1195
    move	$v0,$a2
    sw	$a2,3096($s0)
    # Line 1197
    li	$a1,25344
    sw	$a1,0($at)
.L0dab3794:
    ld	$gp,0($sp)
    # Line 1200
    sw	$zero,3096($s0)
    # Line 1202
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab37a8:
    b	.L0dab3794
    # Line 1197
    lw	$v0,3096($s0)
.L0dab37b0:
    # Line 1188
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    move	$v0,$zero
    ld	$ra,16($sp)
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_GetError

# Function: __glMgrim_GetFloatv
# Declared: Line 1206 (Source lines: 1206-1208)
# Address: 0x0dab37d4 - 0x0dab3810 (Size: 60 bytes, Frame: 32)
.globl __glMgrim_GetFloatv
.ent __glMgrim_GetFloatv
__glMgrim_GetFloatv:
    # Line 1207
    li	$a2,1
    # Line 1206
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a4,0x15
    addiu	$a4,$a4,-20796
    addu	$gp,$t9,$a4
    # Line 1207
    # lw $t9, -30888($gp) # &__glMgrDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glMgrDoGet
    addiu	$a3,$a3,-7728
    # Line 1208
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_GetFloatv

# Function: __glMgrim_GetIntegerv
# Declared: Line 1211 (Source lines: 1211-1213)
# Address: 0x0dab3810 - 0x0dab384c (Size: 60 bytes, Frame: 32)
.globl __glMgrim_GetIntegerv
.ent __glMgrim_GetIntegerv
__glMgrim_GetIntegerv:
    # Line 1212
    li	$a2,3
    # Line 1211
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a4,0x15
    addiu	$a4,$a4,-20856
    addu	$gp,$t9,$a4
    # Line 1212
    # lw $t9, -30888($gp) # &__glMgrDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glMgrDoGet
    addiu	$a3,$a3,-7712
    # Line 1213
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_GetIntegerv

# Function: __glMgrim_GetBooleanv
# Declared: Line 1216 (Source lines: 1216-1218)
# Address: 0x0dab384c - 0x0dab3888 (Size: 60 bytes, Frame: 32)
.globl __glMgrim_GetBooleanv
.ent __glMgrim_GetBooleanv
__glMgrim_GetBooleanv:
    # Line 1217
    li	$a2,4
    # Line 1216
    addiu	$sp,$sp,-32
    sd	$gp,8($sp)
    lui	$a4,0x15
    addiu	$a4,$a4,-20916
    addu	$gp,$t9,$a4
    # Line 1217
    # lw $t9, -30888($gp) # &__glMgrDoGet
    la	$a3,sub_0dbf0000
    sd	$ra,0($sp)
    bal __glMgrDoGet
    addiu	$a3,$a3,-7696
    # Line 1218
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_GetBooleanv

# Function: __glMgrim_GetClipPlane
# Declared: Line 1225 (Source lines: 1225-1236)
# Address: 0x0dab3888 - 0x0dab39a8 (Size: 288 bytes, Frame: 192)
.globl __glMgrim_GetClipPlane
.ent __glMgrim_GetClipPlane
__glMgrim_GetClipPlane:
    # Line 1225
    li	$v0,1
    addiu	$sp,$sp,-64
    sd	$gp,8($sp)
    lw	$at,__glBeginMode
    lui	$v1,0x15
    addiu	$v1,$v1,-20976
    beq	$at,$v0,.L0dab3988
    addu	$gp,$t9,$v1
    sd	$s0,24($sp)
    # Line 1229
    la	$s0,SYMBOL_LOCATION
    sd	$ra,16($sp)
    lw	$s0,812($s0)
    sd	$s1,32($sp)
    sll	$s1,$a0,0x2
    addu	$s0,$s0,$s1
    lui	$s1,0xffff
    ori	$s1,$s1,0x4000
    addu	$s0,$s0,$s1
    move	$s1,$a1
    # Line 1233
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    li	$a2,1
    move	$a0,$s0
    bal __Mgr_ReturnMode
    li	$a1,1
    li	$a2,1
    li	$a1,1
    # Line 1232
    addiu	$s0,$s0,1
    # Line 1233
    sw	$v0,0($sp)
    move	$a0,$s0
    # Line 1234
    lwc1	$f0,0($sp)
    # Line 1233
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 1232
    addiu	$s0,$s0,1
    # Line 1234
    cvt.d.s	$f0,$f0
    # Line 1233
    bal __Mgr_ReturnMode
    # Line 1234
    sdc1	$f0,0($s1)
    # Line 1233
    li	$a2,1
    li	$a1,1
    sw	$v0,0($sp)
    move	$a0,$s0
    # Line 1234
    lwc1	$f1,0($sp)
    # Line 1233
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 1232
    addiu	$s0,$s0,1
    # Line 1234
    cvt.d.s	$f1,$f1
    # Line 1233
    bal __Mgr_ReturnMode
    # Line 1234
    sdc1	$f1,8($s1)
    # Line 1233
    li	$a2,1
    sw	$v0,0($sp)
    li	$a1,1
    # Line 1234
    lwc1	$f2,0($sp)
    # Line 1233
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    move	$a0,$s0
    # Line 1234
    cvt.d.s	$f2,$f2
    # Line 1233
    bal __Mgr_ReturnMode
    # Line 1234
    sdc1	$f2,16($s1)
    # Line 1233
    sw	$v0,0($sp)
    # Line 1234
    lwc1	$f3,0($sp)
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    cvt.d.s	$f3,$f3
    # Line 1236
    ld	$s0,24($sp)
    # Line 1234
    sdc1	$f3,24($s1)
    # Line 1236
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0dab3988:
    # Line 1227
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,16($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glMgrim_GetClipPlane

# Function: __glMgrim_GetLightfv
# Declared: Line 1242 (Source lines: 1242-1300)
# Address: 0x0dab39a8 - 0x0dab3c00 (Size: 600 bytes, Frame: 240)
.globl __glMgrim_GetLightfv
.ent __glMgrim_GetLightfv
__glMgrim_GetLightfv:
    # Line 1242
    move	$v0,$a2
    li	$v1,1
    addiu	$sp,$sp,-112
    sd	$gp,40($sp)
    lw	$at,__glBeginMode
    sd	$s0,32($sp)
    move	$s0,$a1
    lui	$a1,0x15
    addiu	$a1,$a1,-21264
    beq	$at,$v1,.L0dab3bdc
    addu	$gp,$t9,$a1
    # Line 1246
    lw	$a3,__glCurrentContext
    lw	$a3,3328($a3)
    addiu	$a1,$a0,-16384
    sltu	$a3,$a1,$a3
    beqz	$a3,.L0dab3bb8
    # Line 1256
    li	$at,0xef08
    sd	$ra,48($sp)
    sd	$v0,24($sp)
    sd	$s7,64($sp)
    # Line 1259
    la	$s7,SYMBOL_LOCATION
    sd	$s5,56($sp)
    addiu	$s5,$sp,0
    sd	$s1,72($sp)
    move	$s1,$zero
    # Line 1256
    lui	$a4,0x7
    ori	$a4,$a4,0x4080
    sw	$at,0($a4)
    sw	$a1,0($a4)
    # Line 1257
    sw	$s0,0($a4)
    # Line 1260
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($s7)
    li	$a1,1
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s1
    li	$a2,1
    li	$a1,1
    # Line 1259
    addiu	$s1,$s1,1
    # Line 1260
    lw	$a0,244($s7)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sw	$v0,16($sp)
    addu	$a0,$a0,$s1
    # Line 1261
    lwc1	$f0,16($sp)
    # Line 1259
    addiu	$s1,$s1,1
    # Line 1260
    bal __Mgr_ReturnMode
    # Line 1261
    swc1	$f0,0($s5)
    # Line 1260
    li	$a2,1
    li	$a1,1
    lw	$a0,244($s7)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sw	$v0,16($sp)
    addu	$a0,$a0,$s1
    # Line 1261
    lwc1	$f1,16($sp)
    # Line 1259
    addiu	$s1,$s1,1
    # Line 1260
    bal __Mgr_ReturnMode
    # Line 1261
    swc1	$f1,4($s5)
    # Line 1260
    li	$a2,1
    li	$a1,1
    lw	$a0,244($s7)
    sw	$v0,16($sp)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 1261
    lwc1	$f2,16($sp)
    # Line 1260
    addu	$a0,$a0,$s1
    bal __Mgr_ReturnMode
    # Line 1261
    swc1	$f2,8($s5)
    ld	$ra,48($sp)
    ld	$s7,64($sp)
    ld	$s1,72($sp)
    # Line 1259
    addiu	$a0,$s0,-4608
    # Line 1300
    ld	$s0,32($sp)
    # Line 1260
    sw	$v0,16($sp)
    # Line 1291
    ld	$at,24($sp)
    # Line 1261
    lwc1	$f3,16($sp)
    # Line 1259
    sltiu	$a3,$a0,10
    sll	$a0,$a0,0x2
    # Line 1261
    swc1	$f3,12($s5)
    # Line 1259
    la	$a4,sub_0dbf0000
    ld	$s5,56($sp)
    sw	$v0,16($sp)
    addiu	$a4,$a4,-7680
    beqz	$a3,.L0dab3b98
    addu	$a0,$a0,$a4
    # Line 1288
    ld	$a4,24($sp)
    ld	$gp,40($sp)
    # Line 1259
    lw	$a3,%lo(jtbl_0dbee200)($a0)
    # Line 1294
    lwc1	$f3,0($sp)
    # Line 1259
    jr	$a3
    # Line 1291
    lwc1	$f2,0($sp)
.L0dab3b0c:
    # Line 1272
    lwc1	$f1,4($sp)
    # Line 1274
    ld	$a4,24($sp)
    lwc1	$f3,12($sp)
    # Line 1273
    lwc1	$f2,8($sp)
    # Line 1271
    lwc1	$f0,0($sp)
    # Line 1274
    swc1	$f3,12($a4)
    # Line 1273
    swc1	$f2,8($a4)
    # Line 1272
    swc1	$f1,4($a4)
    # Line 1275
    b	.L0dab3b40
    # Line 1271
    swc1	$f0,0($a4)
.L0dab3b34:
    # Line 1282
    ld	$at,24($sp)
    lwc1	$f0,0($sp)
    swc1	$f0,0($at)
.L0dab3b40:
    # Line 1300
    jr	$ra
    addiu	$sp,$sp,112
.L0dab3b48:
    # Line 1279
    ld	$v1,24($sp)
    lwc1	$f3,8($sp)
    # Line 1278
    lwc1	$f2,4($sp)
    # Line 1277
    lwc1	$f1,0($sp)
    # Line 1279
    swc1	$f3,8($v1)
    # Line 1278
    swc1	$f2,4($v1)
    # Line 1280
    b	.L0dab3b40
    # Line 1277
    swc1	$f1,0($v1)
.L0dab3b68:
    # Line 1285
    ld	$a3,24($sp)
    lwc1	$f0,0($sp)
    # Line 1286
    b	.L0dab3b40
    # Line 1285
    swc1	$f0,0($a3)
.L0dab3b78:
    # Line 1288
    lwc1	$f1,0($sp)
    # Line 1289
    b	.L0dab3b40
    # Line 1288
    swc1	$f1,0($a4)
.L0dab3b84:
    # Line 1292
    b	.L0dab3b40
    # Line 1291
    swc1	$f2,0($at)
.L0dab3b8c:
    # Line 1294
    ld	$v1,24($sp)
    # Line 1295
    b	.L0dab3b40
    # Line 1294
    swc1	$f3,0($v1)
.L0dab3b98:
    # Line 1297
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 1298
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab3bb8:
    # Line 1253
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1254
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab3bdc:
    # Line 1246
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,48($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrim_GetLightfv

# Function: __glMgrim_GetLightiv
# Declared: Line 1303 (Source lines: 1303-1366)
# Address: 0x0dab3c00 - 0x0dab3fb0 (Size: 944 bytes, Frame: 128)
.globl __glMgrim_GetLightiv
.ent __glMgrim_GetLightiv
__glMgrim_GetLightiv:
    # Line 1307
    li	$v0,1
    # Line 1303
    addiu	$sp,$sp,-128
    sd	$s0,32($sp)
    # Line 1307
    lw	$s0,__glCurrentContext
    sd	$s1,24($sp)
    # Line 1303
    move	$s1,$a2
    sd	$s4,40($sp)
    move	$s4,$a1
    sd	$gp,48($sp)
    # Line 1307
    lw	$at,__glBeginMode
    # Line 1303
    lui	$v1,0x15
    addiu	$v1,$v1,-21864
    # Line 1307
    beq	$at,$v0,.L0dab3f84
    # Line 1303
    addu	$gp,$t9,$v1
    # Line 1307
    lw	$a3,3328($s0)
    addiu	$v0,$a0,-16384
    sltu	$a3,$v0,$a3
    beqz	$a3,.L0dab3f58
    # Line 1316
    li	$at,0xef08
    sd	$ra,56($sp)
    sd	$s8,80($sp)
    # Line 1319
    la	$s8,SYMBOL_LOCATION
    sd	$s7,72($sp)
    addiu	$s7,$sp,0
    sd	$s5,64($sp)
    move	$s5,$zero
    # Line 1316
    lui	$a5,0x7
    ori	$a5,$a5,0x4080
    sw	$at,0($a5)
    sw	$v0,0($a5)
    # Line 1317
    sw	$s4,0($a5)
    # Line 1320
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($s8)
    li	$a1,1
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s5
    li	$a2,1
    li	$a1,1
    # Line 1319
    addiu	$s5,$s5,1
    # Line 1320
    lw	$a0,244($s8)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sw	$v0,16($sp)
    addu	$a0,$a0,$s5
    # Line 1321
    lwc1	$f0,16($sp)
    # Line 1319
    addiu	$s5,$s5,1
    # Line 1320
    bal __Mgr_ReturnMode
    # Line 1321
    swc1	$f0,0($s7)
    # Line 1320
    li	$a2,1
    li	$a1,1
    lw	$a0,244($s8)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    sw	$v0,16($sp)
    addu	$a0,$a0,$s5
    # Line 1321
    lwc1	$f1,16($sp)
    # Line 1319
    addiu	$s5,$s5,1
    # Line 1320
    bal __Mgr_ReturnMode
    # Line 1321
    swc1	$f1,4($s7)
    # Line 1320
    li	$a2,1
    li	$a1,1
    lw	$a0,244($s8)
    sw	$v0,16($sp)
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    # Line 1321
    lwc1	$f2,16($sp)
    # Line 1320
    addu	$a0,$a0,$s5
    bal __Mgr_ReturnMode
    # Line 1321
    swc1	$f2,8($s7)
    ld	$s8,80($sp)
    ld	$s5,64($sp)
    # Line 1319
    addiu	$a0,$s4,-4608
    sltiu	$a3,$a0,10
    la	$a5,sub_0dbf0000
    # Line 1320
    sw	$v0,16($sp)
    # Line 1319
    sll	$a0,$a0,0x2
    # Line 1321
    lwc1	$f3,16($sp)
    # Line 1319
    addiu	$a5,$a5,-7640
    addu	$a0,$a0,$a5
    # Line 1321
    swc1	$f3,12($s7)
    ld	$s7,72($sp)
    # Line 1319
    beqz	$a3,.L0dab3f30
    sw	$v0,16($sp)
    lw	$a3,%lo(jtbl_0dbee228)($a0)
    jr	$a3
    # Line 1359
    move	$a0,$s0
.L0dab3d50:
    # Line 1329
    lwc1	$f13,3304($s0)
    lwc1	$f14,0($sp)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    mfc1	$a4,$f15
    nop
    sw	$a4,0($s1)
    # Line 1330
    lwc1	$f13,3304($s0)
    lwc1	$f14,4($sp)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    mfc1	$a5,$f15
    nop
    sw	$a5,4($s1)
    # Line 1331
    lwc1	$f13,3304($s0)
    lwc1	$f14,8($sp)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    mfc1	$a6,$f15
    nop
    sw	$a6,8($s1)
    # Line 1332
    lwc1	$f13,3304($s0)
    lwc1	$f14,12($sp)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($s0)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    mfc1	$ra,$f0
    nop
    sw	$ra,12($s1)
    ld	$ra,56($sp)
.L0dab3e04:
    ld	$gp,48($sp)
    # Line 1366
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dab3e1c:
    # Line 1335
    move	$a0,$s0
    move	$a1,$zero
    li	$a5,4
    # lw $t9, -26836($gp) # &__glConvertResult
    move	$a4,$s1
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab3e04
    ld	$ra,56($sp)
.L0dab3e44:
    # Line 1339
    move	$a0,$s0
    move	$a1,$zero
    li	$a5,3
    # lw $t9, -26836($gp) # &__glConvertResult
    move	$a4,$s1
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab3e04
    ld	$ra,56($sp)
.L0dab3e6c:
    # Line 1343
    move	$a0,$s0
    move	$a1,$zero
    li	$a5,1
    # lw $t9, -26836($gp) # &__glConvertResult
    move	$a4,$s1
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab3e04
    ld	$ra,56($sp)
.L0dab3e94:
    # Line 1347
    move	$a0,$s0
    move	$a1,$zero
    li	$a5,1
    # lw $t9, -26836($gp) # &__glConvertResult
    move	$a4,$s1
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab3e04
    ld	$ra,56($sp)
.L0dab3ebc:
    # Line 1351
    move	$a0,$s0
    move	$a1,$zero
    li	$a5,1
    # lw $t9, -26836($gp) # &__glConvertResult
    move	$a4,$s1
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab3e04
    ld	$ra,56($sp)
.L0dab3ee4:
    # Line 1355
    move	$a0,$s0
    move	$a1,$zero
    li	$a5,1
    # lw $t9, -26836($gp) # &__glConvertResult
    move	$a4,$s1
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab3e04
    ld	$ra,56($sp)
.L0dab3f0c:
    # Line 1359
    move	$a1,$zero
    li	$a5,1
    # lw $t9, -26836($gp) # &__glConvertResult
    move	$a4,$s1
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab3e04
    ld	$ra,56($sp)
.L0dab3f30:
    # Line 1363
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 1364
    ld	$s0,32($sp)
    ld	$ra,56($sp)
    ld	$s1,24($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dab3f58:
    # Line 1313
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$gp,48($sp)
    # Line 1314
    ld	$s0,32($sp)
    ld	$ra,56($sp)
    ld	$s1,24($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0dab3f84:
    # Line 1307
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    ld	$ra,56($sp)
    ld	$s1,24($sp)
    ld	$s4,40($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glMgrim_GetLightiv

# Function: __glMgrim_GetMaterialfv
# Declared: Line 1371 (Source lines: 1371-1417)
# Address: 0x0dab3fb0 - 0x0dab4218 (Size: 616 bytes, Frame: 240)
.globl __glMgrim_GetMaterialfv
.ent __glMgrim_GetMaterialfv
__glMgrim_GetMaterialfv:
    # Line 1371
    move	$v0,$a2
    li	$v1,1
    addiu	$sp,$sp,-112
    sd	$gp,48($sp)
    lw	$at,__glBeginMode
    sd	$s1,40($sp)
    move	$s1,$a1
    lui	$a1,0x15
    addiu	$a1,$a1,-22808
    beq	$at,$v1,.L0dab41f4
    addu	$gp,$t9,$a1
    # Line 1375
    li	$a3,1028
    beq	$a0,$a3,.L0dab4014
    # Line 1380
    lui	$at,0x7
    # Line 1375
    li	$a4,1029
    beq	$a0,$a4,.L0dab4014
    # Line 1384
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1385
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab4014:
    sd	$ra,56($sp)
    sd	$v0,24($sp)
    sd	$s2,64($sp)
    # Line 1388
    move	$s2,$zero
    # Line 1380
    ori	$at,$at,0x4080
    # Line 1388
    addiu	$v1,$sp,0
    sd	$v1,32($sp)
    # Line 1380
    li	$v1,0xee08
    sw	$v1,0($at)
    sw	$a0,0($at)
    # Line 1381
    sw	$s1,0($at)
    la	$a0,SYMBOL_LOCATION
    # Line 1389
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($a0)
    li	$a1,1
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s2
    li	$a2,1
    li	$a1,1
    # Line 1388
    addiu	$s2,$s2,1
    # Line 1390
    ld	$a3,32($sp)
    # Line 1389
    sw	$v0,16($sp)
    la	$a0,SYMBOL_LOCATION
    # Line 1390
    lwc1	$f0,16($sp)
    # Line 1389
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($a0)
    # Line 1390
    swc1	$f0,0($a3)
    # Line 1389
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s2
    li	$a2,1
    li	$a1,1
    # Line 1388
    addiu	$s2,$s2,1
    # Line 1390
    ld	$a3,32($sp)
    # Line 1389
    sw	$v0,16($sp)
    la	$a0,SYMBOL_LOCATION
    # Line 1390
    lwc1	$f1,16($sp)
    # Line 1389
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($a0)
    # Line 1390
    swc1	$f1,4($a3)
    # Line 1389
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s2
    li	$a2,1
    li	$a1,1
    # Line 1388
    addiu	$s2,$s2,1
    # Line 1390
    ld	$a3,32($sp)
    # Line 1389
    sw	$v0,16($sp)
    la	$a0,SYMBOL_LOCATION
    # Line 1390
    lwc1	$f2,16($sp)
    # Line 1389
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($a0)
    # Line 1390
    swc1	$f2,8($a3)
    # Line 1389
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s2
    ld	$ra,56($sp)
    # Line 1388
    sltiu	$a4,$s1,5632
    # Line 1389
    sw	$v0,16($sp)
    # Line 1390
    ld	$a3,32($sp)
    lwc1	$f3,16($sp)
    ld	$s2,64($sp)
    # Line 1394
    sltiu	$at,$s1,5633
    # Line 1390
    swc1	$f3,12($a3)
    # Line 1394
    sltiu	$a3,$s1,4609
    # Line 1411
    lwc1	$f3,12($sp)
    # Line 1409
    lwc1	$f1,4($sp)
    # Line 1388
    bnez	$a4,.L0dab4158
    sw	$v0,16($sp)
    # Line 1394
    sltiu	$a4,$s1,5635
    beqz	$at,.L0dab41a8
    sltiu	$a3,$s1,5634
.L0dab412c:
    # Line 1411
    ld	$v1,24($sp)
.L0dab4130:
    # Line 1410
    lwc1	$f2,8($sp)
    # Line 1408
    lwc1	$f0,0($sp)
    # Line 1411
    swc1	$f3,12($v1)
    # Line 1410
    swc1	$f2,8($v1)
    # Line 1409
    swc1	$f1,4($v1)
    # Line 1408
    swc1	$f0,0($v1)
.L0dab4148:
    ld	$gp,48($sp)
    # Line 1417
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab4158:
    # Line 1394
    li	$at,4610
    bnez	$a3,.L0dab417c
    sltiu	$a4,$s1,4610
    bnez	$a4,.L0dab4130
    # Line 1411
    ld	$v1,24($sp)
    # Line 1394
    bne	$s1,$at,.L0dab418c
    # Line 1414
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4130
    # Line 1411
    ld	$v1,24($sp)
.L0dab417c:
    # Line 1394
    li	$v1,4608
    beq	$s1,$v1,.L0dab4130
    # Line 1411
    ld	$v1,24($sp)
.L0dab4188:
    # Line 1414
    # lw $t9, -27320($gp) # &__glSetError
.L0dab418c:
    jal	__glSetError
    li	$a0,1280
    # Line 1415
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab41a8:
    # Line 1394
    bnez	$a3,.L0dab41e0
    li	$a3,5633
    bnez	$a4,.L0dab412c
    li	$at,5635
    bne	$s1,$at,.L0dab418c
    # Line 1414
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1398
    ld	$v1,24($sp)
    lwc1	$f2,8($sp)
    # Line 1397
    lwc1	$f1,4($sp)
    # Line 1396
    lwc1	$f0,0($sp)
    # Line 1398
    swc1	$f2,8($v1)
    # Line 1397
    swc1	$f1,4($v1)
    # Line 1399
    b	.L0dab4148
    # Line 1396
    swc1	$f0,0($v1)
.L0dab41e0:
    # Line 1394
    bne	$s1,$a3,.L0dab4188
    # Line 1401
    ld	$a4,24($sp)
    lwc1	$f3,0($sp)
    # Line 1402
    b	.L0dab4148
    # Line 1401
    swc1	$f3,0($a4)
.L0dab41f4:
    # Line 1375
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,56($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,56($sp)
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrim_GetMaterialfv

# Function: __glMgrim_GetMaterialiv
# Declared: Line 1420 (Source lines: 1420-1468)
# Address: 0x0dab4218 - 0x0dab4538 (Size: 800 bytes, Frame: 240)
.globl __glMgrim_GetMaterialiv
.ent __glMgrim_GetMaterialiv
__glMgrim_GetMaterialiv:
    # Line 1424
    lw	$v0,__glCurrentContext
    li	$v1,1
    # Line 1420
    addiu	$sp,$sp,-112
    sd	$gp,56($sp)
    # Line 1424
    lw	$at,__glBeginMode
    sd	$s1,48($sp)
    # Line 1420
    move	$s1,$a1
    lui	$a1,0x15
    addiu	$a1,$a1,-23424
    # Line 1424
    beq	$at,$v1,.L0dab44ec
    # Line 1420
    addu	$gp,$t9,$a1
    # Line 1424
    li	$a3,1028
    beq	$a0,$a3,.L0dab427c
    # Line 1429
    lui	$at,0x7
    # Line 1424
    li	$a5,1029
    beq	$a0,$a5,.L0dab427c
    # Line 1433
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1434
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab427c:
    sd	$ra,64($sp)
    sd	$v0,32($sp)
    sd	$a2,24($sp)
    sd	$s2,72($sp)
    # Line 1438
    move	$s2,$zero
    # Line 1429
    ori	$at,$at,0x4080
    # Line 1438
    addiu	$v1,$sp,0
    sd	$v1,40($sp)
    # Line 1429
    li	$v1,0xee08
    sw	$v1,0($at)
    sw	$a0,0($at)
    # Line 1430
    sw	$s1,0($at)
    la	$a0,SYMBOL_LOCATION
    # Line 1439
    li	$a2,1
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($a0)
    li	$a1,1
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s2
    li	$a2,1
    li	$a1,1
    # Line 1438
    addiu	$s2,$s2,1
    # Line 1440
    ld	$a3,40($sp)
    # Line 1439
    sw	$v0,16($sp)
    la	$a0,SYMBOL_LOCATION
    # Line 1440
    lwc1	$f0,16($sp)
    # Line 1439
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($a0)
    # Line 1440
    swc1	$f0,0($a3)
    # Line 1439
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s2
    li	$a2,1
    li	$a1,1
    # Line 1438
    addiu	$s2,$s2,1
    # Line 1440
    ld	$a3,40($sp)
    # Line 1439
    sw	$v0,16($sp)
    la	$a0,SYMBOL_LOCATION
    # Line 1440
    lwc1	$f1,16($sp)
    # Line 1439
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($a0)
    # Line 1440
    swc1	$f1,4($a3)
    # Line 1439
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s2
    li	$a2,1
    li	$a1,1
    # Line 1438
    addiu	$s2,$s2,1
    # Line 1440
    ld	$a3,40($sp)
    # Line 1439
    sw	$v0,16($sp)
    la	$a0,SYMBOL_LOCATION
    # Line 1440
    lwc1	$f2,16($sp)
    # Line 1439
    # lw $t9, -30900($gp) # &__Mgr_ReturnMode
    lw	$a0,244($a0)
    # Line 1440
    swc1	$f2,8($a3)
    # Line 1439
    bal __Mgr_ReturnMode
    addu	$a0,$a0,$s2
    # Line 1438
    sltiu	$a5,$s1,5632
    ld	$s2,72($sp)
    # Line 1439
    sw	$v0,16($sp)
    # Line 1440
    ld	$a3,40($sp)
    lwc1	$f3,16($sp)
    # Line 1445
    sltiu	$at,$s1,5633
    # Line 1440
    swc1	$f3,12($a3)
    # Line 1438
    bnez	$a5,.L0dab4448
    sw	$v0,16($sp)
    # Line 1445
    beqz	$at,.L0dab4480
.L0dab4380:
    ld	$v0,32($sp)
.L0dab4384:
    # Line 1459
    lwc1	$f14,0($sp)
    lwc1	$f13,3304($v0)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($v0)
    ld	$s1,24($sp)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    mfc1	$a0,$f15
    # Line 1460
    ld	$v1,32($sp)
    # Line 1459
    sw	$a0,0($s1)
    # Line 1460
    lwc1	$f14,4($sp)
    lwc1	$f13,3304($v1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($v1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    mfc1	$a2,$f15
    # Line 1461
    ld	$a1,32($sp)
    # Line 1460
    sw	$a2,4($s1)
    # Line 1461
    lwc1	$f14,8($sp)
    lwc1	$f13,3304($a1)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a1)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f15,$f0
    mfc1	$a4,$f15
    # Line 1462
    ld	$a3,32($sp)
    # Line 1461
    sw	$a4,8($s1)
    # Line 1462
    lwc1	$f14,12($sp)
    lwc1	$f13,3304($a3)
    mul.s	$f13,$f13,$f14
    # lw $t9, -17792($gp) # &floorf
    lwc1	$f12,3280($a3)
    jal	floorf
    mul.s	$f12,$f12,$f13
    trunc.w.s	$f0,$f0
    mfc1	$a5,$f0
    ld	$ra,64($sp)
    sw	$a5,12($s1)
.L0dab4438:
    ld	$gp,56($sp)
    # Line 1468
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab4448:
    # Line 1445
    sltiu	$at,$s1,4609
    bnez	$at,.L0dab446c
    sltiu	$v1,$s1,4610
    bnez	$v1,.L0dab4380
    li	$a3,4610
    bne	$s1,$a3,.L0dab44d0
    # Line 1465
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4384
    ld	$v0,32($sp)
.L0dab446c:
    # Line 1445
    li	$a5,4608
    bne	$s1,$a5,.L0dab44d0
    # Line 1465
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4384
    ld	$v0,32($sp)
.L0dab4480:
    # Line 1445
    sltiu	$at,$s1,5634
    bnez	$at,.L0dab44c4
    sltiu	$v1,$s1,5635
    bnez	$v1,.L0dab4380
    li	$a3,5635
    bne	$s1,$a3,.L0dab44d0
    # Line 1465
    nop	# was lw $t9, -27320($gp) # &__glSetError
    ld	$a0,32($sp)
    # Line 1447
    move	$a1,$zero
    li	$a5,3
    # lw $t9, -26836($gp) # &__glConvertResult
    ld	$a4,24($sp)
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab4438
    ld	$ra,64($sp)
.L0dab44c4:
    # Line 1445
    li	$a5,5633
    beq	$s1,$a5,.L0dab4510
    # Line 1465
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dab44d0:
    jal	__glSetError
    li	$a0,1280
    # Line 1466
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab44ec:
    # Line 1424
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,64($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,64($sp)
    ld	$gp,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab4510:
    ld	$a0,32($sp)
    # Line 1451
    move	$a1,$zero
    li	$a5,1
    # lw $t9, -26836($gp) # &__glConvertResult
    ld	$a4,24($sp)
    li	$a3,3
    jal	__glConvertResult
    addiu	$a2,$sp,0
    b	.L0dab4438
    ld	$ra,64($sp)
.end __glMgrim_GetMaterialiv

# Function: __glMgrim_GetMapfv
# Declared: Line 1475 (Source lines: 1475-1549)
# Address: 0x0dab4538 - 0x0dab47f8 (Size: 704 bytes, Frame: 48)
.globl __glMgrim_GetMapfv
.ent __glMgrim_GetMapfv
__glMgrim_GetMapfv:
    # Line 1479
    lw	$a6,__glCurrentContext
    # Line 1484
    addiu	$a5,$a0,-3472
    # Line 1479
    li	$v0,1
    # Line 1475
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1479
    lw	$at,__glBeginMode
    # Line 1475
    lui	$v1,0x15
    addiu	$v1,$v1,-24224
    # Line 1479
    beq	$at,$v0,.L0dab4760
    # Line 1475
    addu	$gp,$t9,$v1
    # Line 1484
    move	$a4,$a2
    la	$at,sub_0dbf0000
    sltiu	$a3,$a5,41
    sll	$a5,$a5,0x2
    addiu	$at,$at,-7600
    beqz	$a3,.L0dab4588
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbee250)($a5)
    jr	$at
    # Line 1496
    li	$a3,2561
.L0dab4588:
    # Line 1546
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1547
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab45a8:
    # Line 1496
    li	$v0,2560
    beq	$a1,$v0,.L0dab4620
    li	$v1,2562
    beq	$a1,$v1,.L0dab4780
    # Line 1507
    sll	$v1,$a0,0x2
    # Line 1496
    beq	$a1,$a3,.L0dab46e0
    # Line 1507
    lui	$v0,0xfffd
    # Line 1510
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1511
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab45e4:
    # Line 1524
    li	$at,2560
    beq	$a1,$at,.L0dab4680
    # Line 1526
    sll	$a2,$a0,0x2
    # Line 1524
    li	$v0,2562
    beq	$a1,$v0,.L0dab47b4
    li	$v1,2561
    beq	$a1,$v1,.L0dab4714
    # Line 1541
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1542
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4620:
    # Line 1498
    lui	$a3,0xfffe
    sll	$a2,$a0,0x2
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a6
    addu	$a2,$a2,$a3
    lw	$a3,-15088($a2)
    blez	$a3,.L0dab46d4
    move	$a1,$zero
    move	$a0,$zero
.L0dab4650:
    # Line 1499
    lw	$at,-15084($a2)
    addu	$at,$at,$a0
    lwc1	$f0,0($at)
    swc1	$f0,0($a4)
    # Line 1498
    lw	$a3,-15088($a2)
    # Line 1499
    addiu	$a4,$a4,4
    # Line 1498
    addiu	$a1,$a1,1
    slt	$a3,$a1,$a3
    bnez	$a3,.L0dab4650
    addiu	$a0,$a0,4
    b	.L0dab46d8
    ld	$gp,0($sp)
.L0dab4680:
    # Line 1526
    lui	$a3,0xfffe
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a6
    addu	$a2,$a2,$a3
    lw	$v0,-16232($a2)
    move	$a1,$zero
    blez	$v0,.L0dab46d4
    move	$a0,$zero
.L0dab46ac:
    # Line 1527
    lw	$at,-16228($a2)
    addu	$at,$at,$a0
    lwc1	$f1,0($at)
    swc1	$f1,0($a4)
    # Line 1526
    lw	$a3,-16232($a2)
    # Line 1527
    addiu	$a4,$a4,4
    # Line 1526
    addiu	$a1,$a1,1
    slt	$a3,$a1,$a3
    bnez	$a3,.L0dab46ac
    addiu	$a0,$a0,4
.L0dab46d4:
    ld	$gp,0($sp)
.L0dab46d8:
    # Line 1549
    jr	$ra
    addiu	$sp,$sp,48
.L0dab46e0:
    # Line 1507
    subu	$v1,$v1,$a0
    ori	$v0,$v0,0xc4ec
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a6
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    # Line 1508
    b	.L0dab46d4
    # Line 1507
    swc1	$f2,0($a2)
.L0dab4714:
    # Line 1537
    lui	$a3,0xfffe
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a6
    addu	$v1,$v1,$a3
    lw	$a3,-16268($v1)
    mtc1	$a3,$f0
    nop
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a4)
    # Line 1538
    lw	$v1,-16264($v1)
    mtc1	$v1,$f3
    nop
    cvt.s.w	$f3,$f3
    # Line 1539
    b	.L0dab46d4
    # Line 1538
    swc1	$f3,4($a4)
.L0dab4760:
    # Line 1479
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4780:
    # Line 1503
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a6
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lwc1	$f2,-15112($a3)
    swc1	$f2,0($a2)
    # Line 1504
    lwc1	$f1,-15108($a3)
    # Line 1505
    b	.L0dab46d4
    # Line 1504
    swc1	$f1,4($a2)
.L0dab47b4:
    # Line 1531
    sll	$at,$a0,0x2
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a6
    lui	$v0,0xfffe
    addu	$at,$at,$v0
    lwc1	$f2,-16256($at)
    swc1	$f2,0($a4)
    # Line 1532
    lwc1	$f1,-16252($at)
    swc1	$f1,4($a4)
    # Line 1533
    lwc1	$f0,-16248($at)
    swc1	$f0,8($a4)
    # Line 1534
    lwc1	$f3,-16244($at)
    # Line 1535
    b	.L0dab46d4
    # Line 1534
    swc1	$f3,12($a4)
.end __glMgrim_GetMapfv

# Function: __glMgrim_GetMapdv
# Declared: Line 1552 (Source lines: 1552-1626)
# Address: 0x0dab47f8 - 0x0dab4ad8 (Size: 736 bytes, Frame: 48)
.globl __glMgrim_GetMapdv
.ent __glMgrim_GetMapdv
__glMgrim_GetMapdv:
    # Line 1556
    lw	$a6,__glCurrentContext
    # Line 1561
    addiu	$a5,$a0,-3472
    # Line 1556
    li	$v0,1
    # Line 1552
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1556
    lw	$at,__glBeginMode
    # Line 1552
    lui	$v1,0x15
    addiu	$v1,$v1,-24928
    # Line 1556
    beq	$at,$v0,.L0dab4a28
    # Line 1552
    addu	$gp,$t9,$v1
    # Line 1561
    move	$a4,$a2
    la	$at,sub_0dbf0000
    sltiu	$a3,$a5,41
    sll	$a5,$a5,0x2
    addiu	$at,$at,-7432
    beqz	$a3,.L0dab4848
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbee2f8)($a5)
    jr	$at
    # Line 1573
    li	$a3,2561
.L0dab4848:
    # Line 1623
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1624
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4868:
    # Line 1573
    li	$v0,2560
    beq	$a1,$v0,.L0dab48e0
    li	$v1,2562
    beq	$a1,$v1,.L0dab4a48
    # Line 1584
    sll	$v1,$a0,0x2
    # Line 1573
    beq	$a1,$a3,.L0dab49a8
    # Line 1584
    lui	$v0,0xfffd
    # Line 1587
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1588
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab48a4:
    # Line 1601
    li	$at,2560
    beq	$a1,$at,.L0dab4944
    # Line 1603
    sll	$a2,$a0,0x2
    # Line 1601
    li	$v0,2562
    beq	$a1,$v0,.L0dab4a84
    li	$v1,2561
    beq	$a1,$v1,.L0dab49dc
    # Line 1618
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1619
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab48e0:
    # Line 1575
    lui	$a3,0xfffe
    sll	$a2,$a0,0x2
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a6
    addu	$a2,$a2,$a3
    lw	$a3,-15088($a2)
    blez	$a3,.L0dab499c
    move	$a1,$zero
    move	$a0,$zero
.L0dab4910:
    # Line 1576
    lw	$at,-15084($a2)
    addu	$at,$at,$a0
    lwc1	$f0,0($at)
    cvt.d.s	$f0,$f0
    sdc1	$f0,0($a4)
    # Line 1575
    lw	$a3,-15088($a2)
    # Line 1576
    addiu	$a4,$a4,8
    # Line 1575
    addiu	$a1,$a1,1
    slt	$a3,$a1,$a3
    bnez	$a3,.L0dab4910
    addiu	$a0,$a0,4
    b	.L0dab49a0
    ld	$gp,0($sp)
.L0dab4944:
    # Line 1603
    lui	$a3,0xfffe
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a6
    addu	$a2,$a2,$a3
    lw	$v0,-16232($a2)
    move	$a1,$zero
    blez	$v0,.L0dab499c
    move	$a0,$zero
.L0dab4970:
    # Line 1604
    lw	$at,-16228($a2)
    addu	$at,$at,$a0
    lwc1	$f1,0($at)
    cvt.d.s	$f1,$f1
    sdc1	$f1,0($a4)
    # Line 1603
    lw	$a3,-16232($a2)
    # Line 1604
    addiu	$a4,$a4,8
    # Line 1603
    addiu	$a1,$a1,1
    slt	$a3,$a1,$a3
    bnez	$a3,.L0dab4970
    addiu	$a0,$a0,4
.L0dab499c:
    ld	$gp,0($sp)
.L0dab49a0:
    # Line 1626
    jr	$ra
    addiu	$sp,$sp,48
.L0dab49a8:
    # Line 1584
    subu	$v1,$v1,$a0
    ori	$v0,$v0,0xc4ec
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a6
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    mtc1	$v0,$f2
    nop
    cvt.d.w	$f2,$f2
    # Line 1585
    b	.L0dab499c
    # Line 1584
    sdc1	$f2,0($a2)
.L0dab49dc:
    # Line 1614
    lui	$a3,0xfffe
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a6
    addu	$v1,$v1,$a3
    lw	$a3,-16268($v1)
    mtc1	$a3,$f0
    nop
    cvt.d.w	$f0,$f0
    sdc1	$f0,0($a4)
    # Line 1615
    lw	$v1,-16264($v1)
    mtc1	$v1,$f3
    nop
    cvt.d.w	$f3,$f3
    # Line 1616
    b	.L0dab499c
    # Line 1615
    sdc1	$f3,8($a4)
.L0dab4a28:
    # Line 1556
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4a48:
    # Line 1580
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a6
    lui	$at,0xfffe
    addu	$a3,$a3,$at
    lwc1	$f2,-15112($a3)
    cvt.d.s	$f2,$f2
    sdc1	$f2,0($a2)
    # Line 1581
    lwc1	$f1,-15108($a3)
    cvt.d.s	$f1,$f1
    # Line 1582
    b	.L0dab499c
    # Line 1581
    sdc1	$f1,8($a2)
.L0dab4a84:
    # Line 1608
    sll	$at,$a0,0x2
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a6
    lui	$v0,0xfffe
    addu	$at,$at,$v0
    lwc1	$f2,-16256($at)
    cvt.d.s	$f2,$f2
    sdc1	$f2,0($a4)
    # Line 1609
    lwc1	$f1,-16252($at)
    cvt.d.s	$f1,$f1
    sdc1	$f1,8($a4)
    # Line 1610
    lwc1	$f0,-16248($at)
    cvt.d.s	$f0,$f0
    sdc1	$f0,16($a4)
    # Line 1611
    lwc1	$f3,-16244($at)
    cvt.d.s	$f3,$f3
    # Line 1612
    b	.L0dab499c
    # Line 1611
    sdc1	$f3,24($a4)
.end __glMgrim_GetMapdv

# Function: __glMgrim_GetMapiv
# Declared: Line 1629 (Source lines: 1629-1698)
# Address: 0x0dab4ad8 - 0x0dab4d64 (Size: 652 bytes, Frame: 48)
.globl __glMgrim_GetMapiv
.ent __glMgrim_GetMapiv
__glMgrim_GetMapiv:
    # Line 1632
    lw	$t0,__glCurrentContext
    # Line 1629
    move	$a4,$a2
    move	$a7,$a0
    # Line 1632
    li	$v0,1
    # Line 1629
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1632
    lw	$at,__glBeginMode
    # Line 1629
    lui	$v1,0x15
    addiu	$v1,$v1,-25664
    # Line 1632
    beq	$at,$v0,.L0dab4c24
    # Line 1629
    addu	$gp,$t9,$v1
    # Line 1632
    addiu	$a5,$a7,-3472
    la	$at,sub_0dbf0000
    sltiu	$v0,$a5,41
    sll	$a5,$a5,0x2
    addiu	$at,$at,-7264
    beqz	$v0,.L0dab4b2c
    addu	$a5,$a5,$at
    lw	$at,%lo(jtbl_0dbee3a0)($a5)
    jr	$at
    # Line 1649
    li	$v0,2560
.L0dab4b2c:
    # Line 1695
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1696
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4b4c:
    # Line 1659
    sll	$at,$a7,0x2
    # Line 1649
    beq	$a1,$v0,.L0dab4c44
    li	$v1,2562
    beq	$a1,$v1,.L0dab4cd4
    li	$a3,2561
    beq	$a1,$a3,.L0dab4bc0
    # Line 1662
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1663
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4b84:
    # Line 1676
    li	$at,2560
    beq	$a1,$at,.L0dab4c8c
    li	$v0,2562
    beq	$a1,$v0,.L0dab4d1c
    li	$v1,2561
    # Line 1686
    sll	$at,$a7,0x2
    # Line 1676
    beq	$a1,$v1,.L0dab4bf4
    # Line 1690
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1691
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4bc0:
    # Line 1659
    subu	$at,$at,$a7
    lui	$a3,0xfffd
    ori	$a3,$a3,0xc4ec
    sll	$at,$at,0x2
    addu	$at,$at,$a7
    sll	$at,$at,0x2
    addu	$at,$at,$t0
    addu	$a3,$a3,$at
    lw	$a3,0($a3)
    sw	$a3,0($a4)
.L0dab4be8:
    ld	$gp,0($sp)
    # Line 1698
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4bf4:
    # Line 1686
    subu	$at,$at,$a7
    lui	$v0,0xfffe
    sll	$at,$at,0x2
    addu	$at,$at,$a7
    sll	$at,$at,0x2
    addu	$at,$at,$t0
    addu	$at,$at,$v0
    lw	$v0,-16268($at)
    sw	$v0,0($a4)
    # Line 1687
    lw	$at,-16264($at)
    # Line 1688
    b	.L0dab4be8
    # Line 1687
    sw	$at,4($a4)
.L0dab4c24:
    # Line 1632
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab4c44:
    # Line 1651
    li	$a3,3
    move	$a1,$zero
    move	$a0,$t0
    sd	$ra,8($sp)
    lui	$a5,0xfffe
    # lw $t9, -26836($gp) # &__glConvertResult
    sll	$a2,$a7,0x2
    subu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t0
    addu	$a2,$a2,$a5
    lw	$a5,-15088($a2)
    jal	__glConvertResult
    lw	$a2,-15084($a2)
    b	.L0dab4be8
    ld	$ra,8($sp)
.L0dab4c8c:
    # Line 1678
    li	$a3,3
    move	$a1,$zero
    move	$a0,$t0
    sd	$ra,8($sp)
    lui	$a5,0xfffe
    # lw $t9, -26836($gp) # &__glConvertResult
    sll	$a2,$a7,0x2
    subu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t0
    addu	$a2,$a2,$a5
    lw	$a5,-16232($a2)
    jal	__glConvertResult
    lw	$a2,-16228($a2)
    b	.L0dab4be8
    ld	$ra,8($sp)
.L0dab4cd4:
    # Line 1655
    move	$a0,$t0
    move	$a1,$zero
    li	$a5,2
    li	$a3,3
    sd	$ra,8($sp)
    lui	$a6,0xfffd
    ori	$a6,$a6,0xc4f8
    # lw $t9, -26836($gp) # &__glConvertResult
    sll	$a2,$a7,0x2
    subu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t0
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0dab4be8
    ld	$ra,8($sp)
.L0dab4d1c:
    # Line 1682
    move	$a0,$t0
    move	$a1,$zero
    li	$a5,4
    li	$a3,3
    sd	$ra,8($sp)
    lui	$a6,0xfffd
    ori	$a6,$a6,0xc080
    # lw $t9, -26836($gp) # &__glConvertResult
    sll	$a2,$a7,0x2
    subu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$a7
    sll	$a2,$a2,0x2
    addu	$a2,$a2,$t0
    jal	__glConvertResult
    addu	$a2,$a2,$a6
    b	.L0dab4be8
    ld	$ra,8($sp)
.end __glMgrim_GetMapiv

# Function: __glMgrim_GetTexImage
# Declared: Line 1701 (Source lines: 1702-1777)
# Address: 0x0dab4d64 - 0x0dab5134 (Size: 976 bytes, Frame: 240)
.globl __glMgrim_GetTexImage
.ent __glMgrim_GetTexImage
__glMgrim_GetTexImage:
    # Line 1705
    li	$v0,1
    # Line 1702
    addiu	$sp,$sp,-112
    sd	$ra,56($sp)
    sd	$s3,40($sp)
    # Line 1705
    lw	$s3,__glCurrentContext
    sd	$a4,0($sp)
    sd	$s2,48($sp)
    # Line 1702
    move	$s2,$a3
    sd	$s1,8($sp)
    move	$s1,$a2
    sd	$s4,24($sp)
    move	$s4,$a1
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$gp,32($sp)
    # Line 1705
    lw	$at,__glBeginMode
    # Line 1702
    lui	$v1,0x15
    addiu	$v1,$v1,-26316
    # Line 1705
    beq	$at,$v0,.L0dab5018
    # Line 1702
    addu	$gp,$t9,$v1
    # Line 1708
    # lw $t9, -31440($gp) # &__glMgrLookUpTexture
    move	$a0,$s3
    jal	__glMgrLookUpTexture
    move	$a1,$s0
    # Line 1710
    li	$at,0x8070
    # Line 1708
    beqz	$v0,.L0dab4e58
    # Line 1710
    li	$a6,0x8064
    # Line 1708
    li	$a5,0x8063
    beq	$s0,$a5,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1710
    beq	$s0,$a6,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1710
    beq	$s0,$at,.L0dab4e58
    # Line 1720
    sltiu	$a6,$s1,6407
    # Line 1710
    li	$v1,0x8135
    beq	$s0,$v1,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1718
    bltz	$s4,.L0dab4fb8
    # Line 1722
    sltiu	$v1,$s1,6410
    # Line 1718
    lw	$a5,3436($s3)
    slt	$a5,$s4,$a5
    beqz	$a5,.L0dab4fbc
    # Line 1719
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1720
    bnez	$a6,.L0dab4e40
    # Line 1722
    sltiu	$at,$s1,6408
    bnezl	$at,.L0dab4e9c
    # Line 1737
    sltiu	$v1,$s2,5126
    # Line 1722
    bnez	$v1,.L0dab4ffc
    sltiu	$a5,$s1,6411
    bnez	$a5,.L0dab4e98
    li	$a6,0x8000
    bne	$s1,$a6,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4e9c
    # Line 1737
    sltiu	$v1,$s2,5126
.L0dab4e40:
    # Line 1722
    sltiu	$at,$s1,6405
    bnez	$at,.L0dab4e88
    sltiu	$v1,$s1,6406
    bnez	$v1,.L0dab4e98
    li	$a5,6406
    beq	$s1,$a5,.L0dab5104
.L0dab4e58:
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dab4e5c:
    jal	__glSetError
    li	$a0,1280
    ld	$gp,32($sp)
    # Line 1716
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab4e88:
    # Line 1722
    sltiu	$a6,$s1,6404
    bnez	$a6,.L0dab4fe8
    sltiu	$at,$s1,6405
    beqz	$at,.L0dab4e58
.L0dab4e98:
    # Line 1737
    sltiu	$v1,$s2,5126
.L0dab4e9c:
    bnez	$v1,.L0dab4efc
    # Line 1738
    sltiu	$a5,$s2,5127
    bnez	$a5,.L0dab4f30
    li	$a0,0x8034
    sltu	$a6,$s2,$a0
    bnez	$a6,.L0dab5048
    sltu	$at,$a0,$s2
    bnez	$at,.L0dab50d0
    # Line 1757
    li	$v1,6408
.L0dab4ec0:
    beq	$s1,$v1,.L0dab4f30
    li	$a5,0x8000
    beq	$s1,$a5,.L0dab4f30
    # Line 1758
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    # Line 1759
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab4efc:
    # Line 1738
    sltiu	$a6,$s2,5123
    bnez	$a6,.L0dab4f94
    sltiu	$at,$s2,5124
    bnez	$at,.L0dab4f30
    sltiu	$v1,$s2,5125
    bnez	$v1,.L0dab507c
    sltiu	$a5,$s2,5126
    beqz	$a5,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4f34
    # Line 1767
    lui	$s0,0x1
.L0dab4f28:
    # Line 1738
    li	$a6,5120
    bne	$s2,$a6,.L0dab4e58
.L0dab4f30:
    # Line 1767
    lui	$s0,0x1
.L0dab4f34:
    # Line 1770
    ld	$a4,0($sp)
    move	$a3,$s2
    move	$a2,$s1
    move	$a1,$s4
    move	$a0,$v0
    # lw $t9, -30676($gp) # &mgrTM_DoTexRead
    # Line 1767
    addu	$s0,$s3,$s0
    li	$a7,1
    # Line 1770
    jal	mgrTM_DoTexRead
    # Line 1767
    sb	$a7,-25268($s0)
    # Line 1771
    lw	$s2,-28164($s0)
    ld	$gp,32($sp)
    # Line 1777
    ld	$s3,40($sp)
    # Line 1771
    sw	$zero,484($s2)
    # Line 1777
    ld	$s4,24($sp)
    # Line 1772
    lw	$s1,-28164($s0)
    # Line 1777
    ld	$ra,56($sp)
    ld	$s2,48($sp)
    # Line 1772
    sw	$zero,488($s1)
    # Line 1777
    ld	$s1,8($sp)
    # Line 1775
    sb	$zero,-25268($s0)
    # Line 1777
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab4f94:
    # Line 1738
    sltiu	$at,$s2,5121
    bnez	$at,.L0dab4f28
    sltiu	$v1,$s2,5122
    bnez	$v1,.L0dab4f30
    li	$a5,5122
    bne	$s2,$a5,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4f34
    # Line 1767
    lui	$s0,0x1
.L0dab4fb8:
    # Line 1719
    # lw $t9, -27320($gp) # &__glSetError
.L0dab4fbc:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,32($sp)
    # Line 1720
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab4fe8:
    # Line 1722
    li	$a6,6403
    bne	$s1,$a6,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4e9c
    # Line 1737
    sltiu	$v1,$s2,5126
.L0dab4ffc:
    # Line 1722
    sltiu	$at,$s1,6409
    bnez	$at,.L0dab5068
    sltiu	$v1,$s1,6410
    beqz	$v1,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4e9c
    # Line 1737
    sltiu	$v1,$s2,5126
.L0dab5018:
    # Line 1705
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab5048:
    # Line 1738
    li	$a0,0x8033
    sltu	$a5,$s2,$a0
    bnez	$a5,.L0dab5090
    sltu	$a6,$a0,$s2
    bnez	$a6,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4ec0
    # Line 1757
    li	$v1,6408
.L0dab5068:
    # Line 1722
    li	$at,6408
    bne	$s1,$at,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4e9c
    # Line 1737
    sltiu	$v1,$s2,5126
.L0dab507c:
    # Line 1738
    li	$v1,5124
    bne	$s2,$v1,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4f34
    # Line 1767
    lui	$s0,0x1
.L0dab5090:
    # Line 1738
    li	$a5,0x8032
    bne	$s2,$a5,.L0dab4e58
    # Line 1748
    li	$a6,6407
    beq	$s1,$a6,.L0dab4f30
    # Line 1749
    nop	# was lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    # Line 1750
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0dab50d0:
    # Line 1738
    li	$a0,0x8036
    sltu	$at,$s2,$a0
    bnez	$at,.L0dab50f0
    sltu	$v1,$a0,$s2
    bnez	$v1,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4ec0
    # Line 1757
    li	$v1,6408
.L0dab50f0:
    # Line 1738
    li	$a5,0x8035
    bne	$s2,$a5,.L0dab4e5c
    # Line 1715
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab4ec0
    # Line 1757
    li	$v1,6408
.L0dab5104:
    # Line 1733
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,32($sp)
    # Line 1734
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
    ld	$s3,40($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glMgrim_GetTexImage

# Function: __glMgrim_GetTexEnvfv
# Declared: Line 1780 (Source lines: 1781-1811)
# Address: 0x0dab5134 - 0x0dab5280 (Size: 332 bytes, Frame: 48)
.globl __glMgrim_GetTexEnvfv
.ent __glMgrim_GetTexEnvfv
__glMgrim_GetTexEnvfv:
    # Line 1784
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 1781
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1784
    lw	$at,__glBeginMode
    # Line 1781
    lui	$v1,0x15
    addiu	$v1,$v1,-27292
    # Line 1784
    beq	$at,$v0,.L0dab5260
    # Line 1781
    addu	$gp,$t9,$v1
    # Line 1784
    li	$a3,8960
    beq	$a0,$a3,.L0dab5184
    # Line 1791
    li	$at,8704
    # Line 1787
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1788
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab5184:
    # Line 1791
    beq	$a1,$at,.L0dab5238
    li	$v0,8705
    beq	$a1,$v0,.L0dab51b0
    # Line 1808
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1809
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab51b0:
    # Line 1799
    ldc1	$f3,_lit8_40affe0000000000
    # Line 1797
    lui	$v1,0x1
    addu	$v1,$a4,$v1
    # Line 1798
    lw	$a3,-28316($v1)
    andi	$a3,$a3,0xfff
    dmtc1	$a3,$f2
    nop
    cvt.s.l	$f2,$f2
    # Line 1801
    cvt.d.s	$f2,$f2
    div.d	$f2,$f2,$f3
    # Line 1797
    lw	$v1,-28320($v1)
    srl	$a3,$v1,0xc
    dmtc1	$a3,$f1
    nop
    cvt.s.l	$f1,$f1
    # Line 1800
    cvt.d.s	$f1,$f1
    div.d	$f1,$f1,$f3
    # Line 1799
    andi	$v1,$v1,0xfff
    dmtc1	$v1,$f0
    nop
    cvt.s.l	$f0,$f0
    cvt.d.s	$f0,$f0
    div.d	$f0,$f0,$f3
    # Line 1801
    cvt.s.d	$f2,$f2
    # Line 1800
    cvt.s.d	$f1,$f1
    # Line 1805
    mtc1	$zero,$f3
    # Line 1799
    cvt.s.d	$f0,$f0
    # Line 1805
    swc1	$f3,12($a2)
    # Line 1801
    swc1	$f2,8($a2)
    # Line 1800
    swc1	$f1,4($a2)
    # Line 1799
    swc1	$f0,0($a2)
.L0dab522c:
    ld	$gp,0($sp)
    # Line 1811
    jr	$ra
    addiu	$sp,$sp,48
.L0dab5238:
    # Line 1793
    li	$a3,0x915c
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f3
    nop
    cvt.s.l	$f3,$f3
    # Line 1794
    b	.L0dab522c
    # Line 1793
    swc1	$f3,0($a2)
.L0dab5260:
    # Line 1784
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_GetTexEnvfv

# Function: __glMgrim_GetTexEnviv
# Declared: Line 1814 (Source lines: 1814-1847)
# Address: 0x0dab5280 - 0x0dab53a8 (Size: 296 bytes, Frame: 48)
.globl __glMgrim_GetTexEnviv
.ent __glMgrim_GetTexEnviv
__glMgrim_GetTexEnviv:
    # Line 1817
    lw	$a4,__glCurrentContext
    li	$v0,1
    # Line 1814
    addiu	$sp,$sp,-48
    sd	$gp,0($sp)
    # Line 1817
    lw	$at,__glBeginMode
    # Line 1814
    lui	$v1,0x15
    addiu	$v1,$v1,-27624
    # Line 1817
    beq	$at,$v0,.L0dab5388
    # Line 1814
    addu	$gp,$t9,$v1
    # Line 1817
    li	$a3,8960
    beq	$a0,$a3,.L0dab52d0
    # Line 1824
    li	$at,8704
    # Line 1820
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1821
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab52d0:
    # Line 1824
    beq	$a1,$at,.L0dab5374
    li	$v0,8705
    beq	$a1,$v0,.L0dab52fc
    # Line 1844
    nop	# was lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 1845
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0dab52fc:
    # Line 1829
    lui	$a3,0x1
    addu	$a3,$a4,$a3
    # Line 1831
    lw	$v0,-28316($a3)
    # Line 1829
    lw	$a3,-28320($a3)
    # Line 1841
    sw	$zero,12($a2)
    # Line 1831
    andi	$v0,$v0,0xfff
    # Line 1837
    sll	$at,$v0,0x7
    sll	$v1,$v0,0x13
    sra	$v0,$v0,0x5
    or	$at,$at,$v1
    or	$at,$at,$v0
    # Line 1829
    andi	$v0,$a3,0xfff
    # Line 1830
    srl	$a3,$a3,0xc
    andi	$a3,$a3,0xffff
    # Line 1835
    sll	$v1,$v0,0x13
    # Line 1837
    sw	$at,8($a2)
    # Line 1835
    sll	$at,$v0,0x7
    or	$at,$at,$v1
    # Line 1836
    sll	$v1,$a3,0x7
    # Line 1835
    sra	$v0,$v0,0x5
    or	$at,$at,$v0
    sw	$at,0($a2)
    # Line 1836
    sll	$at,$a3,0x13
    sra	$a3,$a3,0x5
    or	$v1,$v1,$at
    or	$v1,$v1,$a3
    sw	$v1,4($a2)
.L0dab5368:
    ld	$gp,0($sp)
    # Line 1847
    jr	$ra
    addiu	$sp,$sp,48
.L0dab5374:
    # Line 1826
    li	$at,0x915c
    addu	$at,$at,$a4
    lw	$at,0($at)
    # Line 1827
    b	.L0dab5368
    # Line 1826
    sw	$at,0($a2)
.L0dab5388:
    # Line 1817
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glMgrim_GetTexEnviv

# Function: __glMgrim_GetTexParameterfv
# Declared: Line 1850 (Source lines: 1851-1951)
# Address: 0x0dab53a8 - 0x0dab5904 (Size: 1372 bytes, Frame: 224)
.globl __glMgrim_GetTexParameterfv
.ent __glMgrim_GetTexParameterfv
__glMgrim_GetTexParameterfv:
    # Line 1856
    li	$v0,1
    # Line 1851
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$a2,0($sp)
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$a0,8($sp)
    sd	$gp,24($sp)
    lui	$v1,0x15
    addiu	$v1,$v1,-27920
    # Line 1856
    lw	$at,__glBeginMode
    lw	$a3,__glCurrentContext
    # Line 1851
    addu	$gp,$t9,$v1
    # Line 1856
    beq	$at,$v0,.L0dab5628
    sd	$a3,16($sp)
    # Line 1859
    # lw $t9, -31440($gp) # &__glMgrLookUpTexture
    sd	$s1,40($sp)
    ld	$a0,16($sp)
    jal	__glMgrLookUpTexture
    ld	$a1,8($sp)
    move	$s1,$v0
    beqz	$v0,.L0dab5648
    ld	$ra,48($sp)
    # Line 1861
    li	$v0,0x8072
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab5468
    # Line 1863
    sltu	$at,$v0,$s0
    beqz	$at,.L0dab5504
    li	$v0,0x813a
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0dab55c4
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0dab5718
    li	$v0,0x8147
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab5740
    sltu	$at,$v0,$s0
    beqz	$at,.L0dab57f4
    ld	$s1,40($sp)
.L0dab5444:
    # Line 1948
    # lw $t9, -27320($gp) # &__glSetError
.L0dab5448:
    li	$a0,1280
    jal	__glSetError
    ld	$s1,40($sp)
    # Line 1949
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab5468:
    # Line 1863
    sltiu	$v1,$s0,10242
    bnez	$v1,.L0dab54c8
    sltiu	$a3,$s0,10243
    bnez	$a3,.L0dab5604
    li	$v0,0x8066
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab56b0
    sltu	$at,$v0,$s0
    beqz	$at,.L0dab575c
    li	$v1,0x8067
    bne	$s0,$v1,.L0dab5448
    # Line 1948
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1916
    lbu	$a3,192($s1)
    beqz	$a3,.L0dab58cc
    # Line 1917
    nop	# was lw $t9, -30736($gp) # &mgrTM_TexValidate
.L0dab54a4:
    # Line 1922
    lbu	$a1,165($s1)
    lbu	$a0,164($s1)
    # Line 1921
    li	$a5,1
    # Line 1922
    slt	$a4,$a1,$a0
    bnez	$a4,.L0dab57c0
    # Line 1921
    sb	$a5,193($s1)
    # Line 1922
    sll	$v0,$a0,0x2
    b	.L0dab579c
    addu	$v0,$v0,$s1
.L0dab54c8:
    # Line 1863
    sltiu	$v1,$s0,10240
    bnez	$v1,.L0dab5538
    sltiu	$a3,$s0,10241
    beqz	$a3,.L0dab566c
    li	$a3,10241
    # Line 1899
    lbu	$a4,177($s1)
    beqz	$a4,.L0dab58ac
    # Line 1900
    ld	$v1,0($sp)
    lbu	$at,190($s1)
    beqz	$at,.L0dab5820
    # Line 1904
    ld	$v1,0($sp)
    lwc1	$f0,_lit_47009700
    ld	$s1,40($sp)
    b	.L0dab5528
    swc1	$f0,0($v1)
.L0dab5504:
    # Line 1881
    lbu	$a3,174($s1)
    beqz	$a3,.L0dab5810
    # Line 1882
    ld	$at,0($sp)
    lbu	$a4,175($s1)
    beqz	$a4,.L0dab572c
    # Line 1884
    ld	$s1,0($sp)
    lwc1	$f1,_lit_46240000
    swc1	$f1,0($s1)
    ld	$s1,40($sp)
.L0dab5528:
    ld	$gp,24($sp)
    # Line 1951
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab5538:
    # Line 1863
    li	$at,4100
    bne	$s0,$at,.L0dab5448
    # Line 1948
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1907
    lw	$v1,144($s1)
    andi	$v1,$v1,0xfff
    dmtc1	$v1,$f2
    nop
    cvt.s.l	$f2,$f2
    lwc1	$f3,_lit_457ff000
    div.s	$f2,$f2,$f3
    ld	$v1,0($sp)
    swc1	$f2,0($v1)
    # Line 1908
    lw	$at,144($s1)
    srl	$at,$at,0xc
    dmtc1	$at,$f1
    nop
    cvt.s.l	$f1,$f1
    div.s	$f1,$f1,$f3
    swc1	$f1,4($v1)
    # Line 1909
    lw	$a4,148($s1)
    andi	$a4,$a4,0xfff
    dmtc1	$a4,$f0
    nop
    cvt.s.l	$f0,$f0
    div.s	$f0,$f0,$f3
    swc1	$f0,8($v1)
    # Line 1910
    lw	$a3,148($s1)
    srl	$a3,$a3,0xc
    dmtc1	$a3,$f2
    nop
    cvt.s.l	$f2,$f2
    div.s	$f2,$f2,$f3
    ld	$s1,40($sp)
    # Line 1911
    b	.L0dab5528
    # Line 1910
    swc1	$f2,12($v1)
.L0dab55c4:
    # Line 1863
    li	$v0,0x8124
    sltu	$a3,$s0,$v0
    bnez	$a3,.L0dab56e4
    sltu	$a4,$v0,$s0
    beqz	$a4,.L0dab5770
    li	$at,0x8125
    bne	$s0,$at,.L0dab5448
    # Line 1948
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1942
    lbu	$a3,189($s1)
    mtc1	$a3,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$v1,0($sp)
    ld	$s1,40($sp)
    # Line 1943
    b	.L0dab5528
    # Line 1942
    swc1	$f3,0($v1)
.L0dab5604:
    # Line 1865
    lbu	$a4,172($s1)
    # Line 1868
    lwc1	$f0,_lit_46240000
    # Line 1865
    beqz	$a4,.L0dab5834
    # Line 1868
    ld	$v1,0($sp)
    # Line 1866
    lbu	$at,175($s1)
    beqz	$at,.L0dab57e0
    ld	$s1,40($sp)
    # Line 1868
    b	.L0dab5528
    swc1	$f0,0($v1)
.L0dab5628:
    # Line 1856
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab5648:
    # Line 1860
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1280
    jal	__glSetError
    ld	$s1,40($sp)
    # Line 1861
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab566c:
    # Line 1863
    bne	$s0,$a3,.L0dab5448
    # Line 1948
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1889
    lbu	$a4,181($s1)
    beqz	$a4,.L0dab5848
    lbu	$v0,176($s1)
    # Line 1890
    lbu	$at,171($s1)
    beqz	$at,.L0dab5880
    nop
    beqz	$v0,.L0dab58a4
    ld	$s1,40($sp)
    # Line 1893
    li	$v0,9987
.L0dab5698:
    mtc1	$v0,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$v1,0($sp)
    b	.L0dab5528
    swc1	$f1,0($v1)
.L0dab56b0:
    # Line 1863
    li	$a3,10243
    bne	$s0,$a3,.L0dab5448
    # Line 1948
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1873
    lbu	$a4,173($s1)
    beqz	$a4,.L0dab58bc
    # Line 1874
    ld	$a3,0($sp)
    lbu	$at,175($s1)
    beqz	$at,.L0dab586c
    # Line 1876
    ld	$v1,0($sp)
    lwc1	$f2,_lit_46240000
    ld	$s1,40($sp)
    b	.L0dab5528
    swc1	$f2,0($v1)
.L0dab56e4:
    # Line 1863
    li	$a3,0x809c
    bne	$s0,$a3,.L0dab5444
    ld	$s1,40($sp)
    # Line 1930
    ld	$v1,16($sp)
    li	$at,0x9168
    addu	$at,$at,$v1
    lw	$at,0($at)
    mtc1	$at,$f3
    nop
    cvt.s.w	$f3,$f3
    ld	$a4,0($sp)
    # Line 1931
    b	.L0dab5528
    # Line 1930
    swc1	$f3,0($a4)
.L0dab5718:
    # Line 1933
    ld	$a3,0($sp)
    lwc1	$f0,128($s1)
    ld	$s1,40($sp)
    # Line 1934
    b	.L0dab5528
    # Line 1933
    swc1	$f0,0($a3)
.L0dab572c:
    # Line 1886
    ld	$a4,0($sp)
    lwc1	$f1,_lit_47012d00
    ld	$s1,40($sp)
    b	.L0dab5528
    swc1	$f1,0($a4)
.L0dab5740:
    # Line 1863
    li	$at,0x813b
    bne	$s0,$at,.L0dab5444
    # Line 1936
    ld	$v1,0($sp)
    lwc1	$f2,132($s1)
    ld	$s1,40($sp)
    # Line 1937
    b	.L0dab5528
    # Line 1936
    swc1	$f2,0($v1)
.L0dab575c:
    # Line 1913
    ld	$a3,0($sp)
    lwc1	$f3,112($s1)
    ld	$s1,40($sp)
    # Line 1914
    b	.L0dab5528
    # Line 1913
    swc1	$f3,0($a3)
.L0dab5770:
    # Line 1939
    lbu	$s1,188($s1)
    mtc1	$s1,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$a4,0($sp)
    ld	$s1,40($sp)
    # Line 1940
    b	.L0dab5528
    # Line 1939
    swc1	$f0,0($a4)
.L0dab5790:
    # Line 1924
    sb	$zero,193($s1)
.L0dab5794:
    # Line 1922
    bnez	$at,.L0dab57c0
    nop
.L0dab579c:
    lw	$v1,20($v0)
    lw	$v1,28($v1)
    lbu	$v1,89($v1)
    addiu	$v0,$v0,4
    addiu	$a0,$a0,1
    bnez	$v1,.L0dab5794
    slt	$at,$a1,$a0
    b	.L0dab5790
    # Line 1924
    move	$a5,$zero
.L0dab57c0:
    # Line 1926
    sltu	$a4,$zero,$a5
    mtc1	$a4,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$a3,0($sp)
    ld	$s1,40($sp)
    # Line 1927
    b	.L0dab5528
    # Line 1926
    swc1	$f1,0($a3)
.L0dab57e0:
    # Line 1870
    ld	$s1,0($sp)
    lwc1	$f2,_lit_47012d00
    swc1	$f2,0($s1)
    b	.L0dab5528
    ld	$s1,40($sp)
.L0dab57f4:
    # Line 1945
    # lw $t9, -26912($gp) # &__glim_GetTexParameterfv
    ld	$a0,8($sp)
    move	$a1,$s0
    jal	__glim_GetTexParameterfv
    ld	$a2,0($sp)
    b	.L0dab5528
    ld	$ra,48($sp)
.L0dab5810:
    # Line 1882
    lwc1	$f3,_lit_46240400
    ld	$s1,40($sp)
    b	.L0dab5528
    swc1	$f3,0($at)
.L0dab5820:
    # Line 1902
    ld	$v1,0($sp)
    lwc1	$f0,_lit_46180400
    ld	$s1,40($sp)
    b	.L0dab5528
    swc1	$f0,0($v1)
.L0dab5834:
    # Line 1866
    ld	$a3,0($sp)
    lwc1	$f1,_lit_46240400
    ld	$s1,40($sp)
    b	.L0dab5528
    swc1	$f1,0($a3)
.L0dab5848:
    # Line 1889
    beqz	$v0,.L0dab58f4
    ld	$s1,40($sp)
    # Line 1890
    li	$v0,9729
.L0dab5854:
    mtc1	$v0,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$a4,0($sp)
    b	.L0dab5528
    swc1	$f2,0($a4)
.L0dab586c:
    # Line 1878
    ld	$s1,0($sp)
    lwc1	$f3,_lit_47012d00
    swc1	$f3,0($s1)
    b	.L0dab5528
    ld	$s1,40($sp)
.L0dab5880:
    # Line 1893
    beqz	$v0,.L0dab58fc
    ld	$s1,40($sp)
    # Line 1895
    li	$v0,9985
.L0dab588c:
    mtc1	$v0,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$at,0($sp)
    b	.L0dab5528
    swc1	$f0,0($at)
.L0dab58a4:
    b	.L0dab5698
    # Line 1893
    li	$v0,9986
.L0dab58ac:
    # Line 1900
    lwc1	$f1,_lit_46180000
    ld	$s1,40($sp)
    b	.L0dab5528
    swc1	$f1,0($v1)
.L0dab58bc:
    # Line 1874
    lwc1	$f2,_lit_46240400
    ld	$s1,40($sp)
    b	.L0dab5528
    swc1	$f2,0($a3)
.L0dab58cc:
    # Line 1917
    bal mgrTM_TexValidate
    move	$a0,$s1
    lbu	$a4,192($s1)
    bnez	$a4,.L0dab54a4
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    # Line 1919
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab58f4:
    b	.L0dab5854
    # Line 1890
    li	$v0,9728
.L0dab58fc:
    b	.L0dab588c
    # Line 1895
    li	$v0,9984
.end __glMgrim_GetTexParameterfv

# Function: __glMgrim_GetTexParameteriv
# Declared: Line 1954 (Source lines: 1955-2053)
# Address: 0x0dab5904 - 0x0dab5dd4 (Size: 1232 bytes, Frame: 224)
.globl __glMgrim_GetTexParameteriv
.ent __glMgrim_GetTexParameteriv
__glMgrim_GetTexParameteriv:
    # Line 1960
    li	$v0,1
    # Line 1955
    addiu	$sp,$sp,-96
    sd	$ra,48($sp)
    sd	$a2,0($sp)
    sd	$s0,32($sp)
    move	$s0,$a1
    sd	$a0,8($sp)
    sd	$gp,24($sp)
    lui	$v1,0x15
    addiu	$v1,$v1,-29292
    # Line 1960
    lw	$at,__glBeginMode
    lw	$a3,__glCurrentContext
    # Line 1955
    addu	$gp,$t9,$v1
    # Line 1960
    beq	$at,$v0,.L0dab5b34
    sd	$a3,16($sp)
    # Line 1963
    # lw $t9, -31440($gp) # &__glMgrLookUpTexture
    sd	$s1,40($sp)
    ld	$a0,16($sp)
    jal	__glMgrLookUpTexture
    ld	$a1,8($sp)
    move	$s1,$v0
    beqz	$v0,.L0dab5b54
    ld	$ra,48($sp)
    # Line 1965
    li	$v0,0x8072
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab59c4
    # Line 1967
    sltu	$at,$v0,$s0
    beqz	$at,.L0dab5a60
    li	$v0,0x813c
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0dab5adc
    sltu	$a3,$v0,$s0
    beqz	$a3,.L0dab5c0c
    li	$v0,0x8147
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab5c34
    sltu	$at,$v0,$s0
    beqz	$at,.L0dab5cdc
    ld	$s1,40($sp)
.L0dab59a0:
    # Line 2050
    # lw $t9, -27320($gp) # &__glSetError
.L0dab59a4:
    li	$a0,1280
    jal	__glSetError
    ld	$s1,40($sp)
    # Line 2051
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab59c4:
    # Line 1967
    sltiu	$v1,$s0,10242
    bnez	$v1,.L0dab5a24
    sltiu	$a3,$s0,10243
    bnez	$a3,.L0dab5b10
    li	$v0,0x8066
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab5bb0
    sltu	$at,$v0,$s0
    beqz	$at,.L0dab5c54
    li	$v1,0x8067
    bne	$s0,$v1,.L0dab59a4
    # Line 2050
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2020
    lbu	$a3,192($s1)
    beqz	$a3,.L0dab5d9c
    # Line 2021
    nop	# was lw $t9, -30736($gp) # &mgrTM_TexValidate
.L0dab5a00:
    # Line 2025
    lbu	$a1,165($s1)
    lbu	$a0,164($s1)
    # Line 2024
    li	$a5,1
    # Line 2025
    slt	$a4,$a1,$a0
    bnez	$a4,.L0dab5cb4
    # Line 2024
    sb	$a5,193($s1)
    # Line 2025
    sll	$v0,$a0,0x2
    b	.L0dab5c90
    addu	$v0,$v0,$s1
.L0dab5a24:
    # Line 1967
    sltiu	$v1,$s0,10240
    bnez	$v1,.L0dab5a94
    sltiu	$a3,$s0,10241
    beqz	$a3,.L0dab5b78
    li	$at,10241
    # Line 2003
    lbu	$a4,177($s1)
    beqzl	$a4,.L0dab5d7c
    ld	$s1,40($sp)
    # Line 2004
    lbu	$at,190($s1)
    beqz	$at,.L0dab5d08
    ld	$s1,40($sp)
    # Line 2008
    ld	$a3,0($sp)
    li	$v1,0x8097
    b	.L0dab5a84
    sw	$v1,0($a3)
.L0dab5a60:
    # Line 1985
    lbu	$a4,174($s1)
    beqzl	$a4,.L0dab5cf8
    ld	$s1,40($sp)
    # Line 1986
    lbu	$at,175($s1)
    beqz	$at,.L0dab5c20
    ld	$s1,40($sp)
    # Line 1988
    ld	$a3,0($sp)
    li	$v1,10496
    sw	$v1,0($a3)
.L0dab5a84:
    ld	$gp,24($sp)
    # Line 2053
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab5a94:
    # Line 1967
    li	$a4,4100
    bne	$s0,$a4,.L0dab59a4
    # Line 2050
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2011
    lw	$a4,144($s1)
    ld	$at,0($sp)
    andi	$a4,$a4,0xfff
    sw	$a4,0($at)
    # Line 2012
    lw	$a3,144($s1)
    srl	$a3,$a3,0xc
    sw	$a3,4($at)
    # Line 2013
    lw	$v1,148($s1)
    andi	$v1,$v1,0xfff
    sw	$v1,8($at)
    # Line 2014
    lw	$s1,148($s1)
    srl	$s1,$s1,0xc
    sw	$s1,12($at)
    # Line 2015
    b	.L0dab5a84
    ld	$s1,40($sp)
.L0dab5adc:
    # Line 1967
    li	$v0,0x8124
    sltu	$at,$s0,$v0
    bnez	$at,.L0dab5be4
    sltu	$v1,$v0,$s0
    beqz	$v1,.L0dab5c70
    li	$a3,0x8125
    bne	$s0,$a3,.L0dab59a4
    # Line 2050
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2044
    lbu	$a4,189($s1)
    ld	$s1,0($sp)
    sw	$a4,0($s1)
    # Line 2045
    b	.L0dab5a84
    ld	$s1,40($sp)
.L0dab5b10:
    # Line 1969
    lbu	$at,172($s1)
    # Line 1972
    li	$a3,10496
    # Line 1969
    beqz	$at,.L0dab5d1c
    # Line 1972
    ld	$a4,0($sp)
    # Line 1970
    lbu	$v1,175($s1)
    beqz	$v1,.L0dab5cc8
    ld	$s1,40($sp)
    # Line 1972
    b	.L0dab5a84
    sw	$a3,0($a4)
.L0dab5b34:
    # Line 1960
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab5b54:
    # Line 1964
    # lw $t9, -27320($gp) # &__glSetError
    li	$a0,1280
    jal	__glSetError
    ld	$s1,40($sp)
    # Line 1965
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab5b78:
    # Line 1967
    bne	$s0,$at,.L0dab59a4
    # Line 2050
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1993
    lbu	$v0,181($s1)
    beqz	$v0,.L0dab5d30
    lbu	$v0,176($s1)
    # Line 1994
    lbu	$v1,171($s1)
    beqz	$v1,.L0dab5d5c
    nop
    beqz	$v0,.L0dab5d74
    ld	$s1,40($sp)
    # Line 1997
    li	$v0,9987
.L0dab5ba4:
    ld	$a3,0($sp)
    b	.L0dab5a84
    sw	$v0,0($a3)
.L0dab5bb0:
    # Line 1967
    li	$a4,10243
    bne	$s0,$a4,.L0dab59a4
    # Line 2050
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 1977
    lbu	$at,173($s1)
    beqzl	$at,.L0dab5d8c
    # Line 1978
    ld	$s1,0($sp)
    lbu	$v1,175($s1)
    beqz	$v1,.L0dab5d48
    ld	$s1,40($sp)
    # Line 1980
    ld	$a4,0($sp)
    li	$a3,10496
    b	.L0dab5a84
    sw	$a3,0($a4)
.L0dab5be4:
    # Line 1967
    li	$at,0x809c
    bne	$s0,$at,.L0dab59a0
    ld	$s1,40($sp)
    # Line 2032
    ld	$a3,16($sp)
    li	$v1,0x9168
    addu	$v1,$v1,$a3
    ld	$a3,0($sp)
    lw	$v1,0($v1)
    # Line 2033
    b	.L0dab5a84
    # Line 2032
    sw	$v1,0($a3)
.L0dab5c0c:
    # Line 2035
    lw	$a4,136($s1)
    ld	$s1,0($sp)
    sw	$a4,0($s1)
    # Line 2036
    b	.L0dab5a84
    ld	$s1,40($sp)
.L0dab5c20:
    ld	$s1,40($sp)
    # Line 1990
    ld	$v1,0($sp)
    li	$at,0x812d
    b	.L0dab5a84
    sw	$at,0($v1)
.L0dab5c34:
    # Line 1967
    li	$a3,0x813d
    bne	$s0,$a3,.L0dab59a4
    # Line 2050
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2038
    lw	$a4,140($s1)
    ld	$s1,0($sp)
    sw	$a4,0($s1)
    # Line 2039
    b	.L0dab5a84
    ld	$s1,40($sp)
.L0dab5c54:
    # Line 2017
    lwc1	$f0,112($s1)
    trunc.w.s	$f0,$f0
    ld	$v1,0($sp)
    mfc1	$at,$f0
    ld	$s1,40($sp)
    # Line 2018
    b	.L0dab5a84
    # Line 2017
    sw	$at,0($v1)
.L0dab5c70:
    # Line 2041
    ld	$a4,0($sp)
    lbu	$a3,188($s1)
    ld	$s1,40($sp)
    # Line 2042
    b	.L0dab5a84
    # Line 2041
    sw	$a3,0($a4)
.L0dab5c84:
    # Line 2027
    sb	$zero,193($s1)
.L0dab5c88:
    # Line 2025
    bnez	$at,.L0dab5cb4
    nop
.L0dab5c90:
    lw	$v1,20($v0)
    lw	$v1,28($v1)
    lbu	$v1,89($v1)
    addiu	$v0,$v0,4
    addiu	$a0,$a0,1
    bnez	$v1,.L0dab5c88
    slt	$at,$a1,$a0
    b	.L0dab5c84
    # Line 2027
    move	$a5,$zero
.L0dab5cb4:
    ld	$s1,40($sp)
    # Line 2028
    ld	$a4,0($sp)
    sltu	$a3,$zero,$a5
    # Line 2029
    b	.L0dab5a84
    # Line 2028
    sw	$a3,0($a4)
.L0dab5cc8:
    # Line 1974
    ld	$at,0($sp)
    li	$s1,0x812d
    sw	$s1,0($at)
    b	.L0dab5a84
    ld	$s1,40($sp)
.L0dab5cdc:
    # Line 2047
    # lw $t9, -26908($gp) # &__glim_GetTexParameteriv
    ld	$a0,8($sp)
    move	$a1,$s0
    jal	__glim_GetTexParameteriv
    ld	$a2,0($sp)
    b	.L0dab5a84
    ld	$ra,48($sp)
.L0dab5cf8:
    # Line 1986
    ld	$a3,0($sp)
    li	$v1,10497
    b	.L0dab5a84
    sw	$v1,0($a3)
.L0dab5d08:
    # Line 2006
    ld	$s1,0($sp)
    li	$a4,9729
    sw	$a4,0($s1)
    b	.L0dab5a84
    ld	$s1,40($sp)
.L0dab5d1c:
    ld	$s1,40($sp)
    # Line 1970
    ld	$v1,0($sp)
    li	$at,10497
    b	.L0dab5a84
    sw	$at,0($v1)
.L0dab5d30:
    # Line 1993
    beqz	$v0,.L0dab5dc4
    ld	$s1,40($sp)
    # Line 1994
    li	$v0,9729
.L0dab5d3c:
    ld	$a3,0($sp)
    b	.L0dab5a84
    sw	$v0,0($a3)
.L0dab5d48:
    # Line 1982
    ld	$s1,0($sp)
    li	$a4,0x812d
    sw	$a4,0($s1)
    b	.L0dab5a84
    ld	$s1,40($sp)
.L0dab5d5c:
    # Line 1997
    beqz	$v0,.L0dab5dcc
    ld	$s1,40($sp)
    # Line 1999
    li	$v0,9985
.L0dab5d68:
    ld	$at,0($sp)
    b	.L0dab5a84
    sw	$v0,0($at)
.L0dab5d74:
    b	.L0dab5ba4
    # Line 1997
    li	$v0,9986
.L0dab5d7c:
    # Line 2004
    ld	$a3,0($sp)
    li	$v1,9728
    b	.L0dab5a84
    sw	$v1,0($a3)
.L0dab5d8c:
    # Line 1978
    li	$a4,10497
    sw	$a4,0($s1)
    b	.L0dab5a84
    ld	$s1,40($sp)
.L0dab5d9c:
    # Line 2021
    bal mgrTM_TexValidate
    move	$a0,$s1
    lbu	$at,192($s1)
    bnez	$at,.L0dab5a00
    ld	$ra,48($sp)
    ld	$gp,24($sp)
    # Line 2023
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0dab5dc4:
    b	.L0dab5d3c
    # Line 1994
    li	$v0,9728
.L0dab5dcc:
    b	.L0dab5d68
    # Line 1999
    li	$v0,9984
.end __glMgrim_GetTexParameteriv

# Function: __glMgrim_GetTexLevelParameterfv
# Declared: Line 2058 (Source lines: 2059-2114)
# Address: 0x0dab5dd4 - 0x0dab60d4 (Size: 768 bytes, Frame: 208)
.globl __glMgrim_GetTexLevelParameterfv
.ent __glMgrim_GetTexLevelParameterfv
__glMgrim_GetTexLevelParameterfv:
    # Line 2063
    li	$v1,1
    # Line 2059
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s2,16($sp)
    # Line 2063
    lw	$s2,__glCurrentContext
    sd	$a3,0($sp)
    sd	$s0,32($sp)
    # Line 2059
    move	$s0,$a2
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    move	$v0,$a0
    # Line 2063
    lw	$at,__glBeginMode
    # Line 2059
    lui	$a0,0x15
    addiu	$a0,$a0,-30524
    # Line 2063
    beq	$at,$v1,.L0dab6010
    # Line 2059
    addu	$gp,$t9,$a0
    # Line 2066
    # lw $t9, -31440($gp) # &__glMgrLookUpTexture
    move	$a0,$s2
    jal	__glMgrLookUpTexture
    move	$a1,$v0
    move	$a0,$v0
    beqz	$v0,.L0dab6038
    ld	$ra,40($sp)
    # Line 2070
    bltz	$s1,.L0dab5f58
    # Line 2071
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2070
    lw	$a4,3436($s2)
    slt	$a4,$s1,$a4
    beqz	$a4,.L0dab5f54
    # Line 2074
    sll	$a1,$s1,0x2
    addu	$a1,$a1,$v0
    lw	$a1,20($a1)
    # Line 2076
    li	$v0,0x805d
    # Line 2078
    sltu	$a5,$v0,$s0
    # Line 2074
    beqz	$a1,.L0dab6088
    # Line 2076
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab5eb8
    # Line 2078
    li	$v0,0x8060
    beqz	$a5,.L0dab5ee0
    sltu	$v1,$v0,$s0
    sltu	$at,$s0,$v0
    bnez	$at,.L0dab5fb0
    li	$v0,0x805f
    beqz	$v1,.L0dab5ee0
    li	$a4,0x8071
    bne	$s0,$a4,.L0dab5fdc
    # Line 2112
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2086
    lw	$v1,20($a1)
    lw	$at,12($a1)
    addu	$v1,$v1,$v1
    addu	$at,$at,$v1
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$a5,0($sp)
    # Line 2087
    b	.L0dab5f00
    # Line 2086
    swc1	$f0,0($a5)
.L0dab5eb8:
    # Line 2078
    sltiu	$a4,$s0,4099
    bnez	$a4,.L0dab5f18
    sltiu	$a5,$s0,4100
    bnez	$a5,.L0dab5fec
    li	$v0,0x805c
    sltu	$at,$s0,$v0
    bnez	$at,.L0dab6060
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0dab5fdc
    # Line 2112
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dab5ee0:
    # Line 2099
    lbu	$v0,167($a0)
.L0dab5ee4:
    li	$a5,2
    beqz	$v0,.L0dab60b8
    li	$a4,1
    beql	$v0,$a4,.L0dab60c8
    # Line 2104
    ld	$a5,0($sp)
    # Line 2099
    beq	$v0,$a5,.L0dab60ac
    # Line 2107
    ld	$v1,0($sp)
.L0dab5f00:
    ld	$gp,24($sp)
    # Line 2114
    ld	$s0,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab5f18:
    # Line 2078
    sltiu	$at,$s0,4097
    bnez	$at,.L0dab5f7c
    sltiu	$v1,$s0,4098
    beqz	$v1,.L0dab5fdc
    # Line 2112
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2083
    lw	$at,20($a1)
    lw	$a5,8($a1)
    addu	$at,$at,$at
    addu	$a5,$a5,$at
    mtc1	$a5,$f1
    nop
    cvt.s.w	$f1,$f1
    ld	$a4,0($sp)
    # Line 2084
    b	.L0dab5f00
    # Line 2083
    swc1	$f1,0($a4)
.L0dab5f54:
    # Line 2071
    # lw $t9, -27320($gp) # &__glSetError
.L0dab5f58:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 2072
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab5f7c:
    # Line 2078
    li	$v1,4096
    bne	$s0,$v1,.L0dab5fdc
    # Line 2112
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2080
    lw	$at,20($a1)
    lw	$a5,4($a1)
    addu	$at,$at,$at
    addu	$a5,$a5,$at
    mtc1	$a5,$f2
    nop
    cvt.s.w	$f2,$f2
    ld	$a4,0($sp)
    # Line 2081
    b	.L0dab5f00
    # Line 2080
    swc1	$f2,0($a4)
.L0dab5fb0:
    # Line 2078
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0dab5fcc
    sltu	$a4,$v0,$s0
    bnez	$a4,.L0dab5fdc
    # Line 2112
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab5ee4
    # Line 2099
    lbu	$v0,167($a0)
.L0dab5fcc:
    # Line 2078
    li	$a5,0x805e
    beql	$s0,$a5,.L0dab5ee4
    # Line 2099
    lbu	$v0,167($a0)
    # Line 2112
    # lw $t9, -27320($gp) # &__glSetError
.L0dab5fdc:
    jal	__glSetError
    li	$a0,1281
    b	.L0dab5f00
    ld	$ra,40($sp)
.L0dab5fec:
    # Line 2089
    lw	$v1,24($a1)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f3
    nop
    cvt.s.l	$f3,$f3
    ld	$at,0($sp)
    # Line 2090
    b	.L0dab5f00
    # Line 2089
    swc1	$f3,0($at)
.L0dab6010:
    # Line 2063
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab6038:
    # Line 2067
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 2068
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab6060:
    # Line 2078
    li	$a4,4101
    bne	$s0,$a4,.L0dab5fdc
    # Line 2112
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2092
    lw	$at,20($a1)
    mtc1	$at,$f0
    nop
    cvt.s.w	$f0,$f0
    ld	$a5,0($sp)
    # Line 2093
    b	.L0dab5f00
    # Line 2092
    swc1	$f0,0($a5)
.L0dab6088:
    # Line 2075
    mtc1	$zero,$f1
    ld	$gp,24($sp)
    # Line 2076
    ld	$s0,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    # Line 2075
    ld	$v0,0($sp)
    # Line 2076
    addiu	$sp,$sp,80
    jr	$ra
    # Line 2075
    swc1	$f1,0($v0)
.L0dab60ac:
    # Line 2107
    lwc1	$f2,_lit_41400000
    # Line 2108
    b	.L0dab5f00
    # Line 2107
    swc1	$f2,0($v1)
.L0dab60b8:
    # Line 2101
    ld	$a4,0($sp)
    lwc1	$f3,_lit_40800000
    # Line 2102
    b	.L0dab5f00
    # Line 2101
    swc1	$f3,0($a4)
.L0dab60c8:
    # Line 2104
    lwc1	$f0,_lit_41000000
    # Line 2105
    b	.L0dab5f00
    # Line 2104
    swc1	$f0,0($a5)
.end __glMgrim_GetTexLevelParameterfv

# Function: __glMgrim_GetTexLevelParameteriv
# Declared: Line 2117 (Source lines: 2118-2173)
# Address: 0x0dab60d4 - 0x0dab6388 (Size: 692 bytes, Frame: 208)
.globl __glMgrim_GetTexLevelParameteriv
.ent __glMgrim_GetTexLevelParameteriv
__glMgrim_GetTexLevelParameteriv:
    # Line 2122
    li	$v1,1
    # Line 2118
    addiu	$sp,$sp,-80
    sd	$ra,40($sp)
    sd	$s2,16($sp)
    # Line 2122
    lw	$s2,__glCurrentContext
    sd	$a3,0($sp)
    sd	$s0,32($sp)
    # Line 2118
    move	$s0,$a2
    sd	$s1,8($sp)
    move	$s1,$a1
    sd	$gp,24($sp)
    move	$v0,$a0
    # Line 2122
    lw	$at,__glBeginMode
    # Line 2118
    lui	$a0,0x15
    addiu	$a0,$a0,-31292
    # Line 2122
    beq	$at,$v1,.L0dab62d4
    # Line 2118
    addu	$gp,$t9,$a0
    # Line 2125
    # lw $t9, -31440($gp) # &__glMgrLookUpTexture
    move	$a0,$s2
    jal	__glMgrLookUpTexture
    move	$a1,$v0
    move	$a0,$v0
    beqz	$v0,.L0dab62fc
    ld	$ra,40($sp)
    # Line 2129
    bltz	$s1,.L0dab6238
    # Line 2130
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2129
    lw	$a4,3436($s2)
    slt	$a4,$s1,$a4
    beqz	$a4,.L0dab6234
    # Line 2133
    sll	$a1,$s1,0x2
    addu	$a1,$a1,$v0
    lw	$a1,20($a1)
    # Line 2135
    li	$v0,0x805d
    # Line 2137
    sltu	$a5,$v0,$s0
    # Line 2133
    beqz	$a1,.L0dab633c
    # Line 2135
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab61a8
    # Line 2137
    li	$v0,0x8060
    beqz	$a5,.L0dab61d0
    sltu	$at,$s0,$v0
    bnez	$at,.L0dab6284
    sltu	$v1,$v0,$s0
    beqz	$v1,.L0dab61d0
    li	$a4,0x8071
    bne	$s0,$a4,.L0dab62b4
    # Line 2171
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2145
    lw	$at,20($a1)
    lw	$a5,12($a1)
    addu	$at,$at,$at
    addu	$a5,$a5,$at
    ld	$at,0($sp)
    # Line 2146
    b	.L0dab61ec
    # Line 2145
    sw	$a5,0($at)
.L0dab61a8:
    # Line 2137
    sltiu	$v1,$s0,4099
    bnez	$v1,.L0dab6204
    sltiu	$a4,$s0,4100
    bnez	$a4,.L0dab62c4
    li	$v0,0x805c
    sltu	$a5,$s0,$v0
    bnez	$a5,.L0dab6324
    sltu	$at,$v0,$s0
    bnez	$at,.L0dab62b4
    # Line 2171
    nop	# was lw $t9, -27320($gp) # &__glSetError
.L0dab61d0:
    # Line 2158
    lbu	$v0,167($a0)
.L0dab61d4:
    li	$a4,2
    beqz	$v0,.L0dab636c
    li	$v1,1
    beq	$v0,$v1,.L0dab637c
    # Line 2163
    ld	$at,0($sp)
    # Line 2158
    beq	$v0,$a4,.L0dab635c
.L0dab61ec:
    ld	$gp,24($sp)
    # Line 2173
    ld	$s0,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab6204:
    # Line 2137
    sltiu	$a5,$s0,4097
    bnez	$a5,.L0dab625c
    sltiu	$at,$s0,4098
    beqz	$at,.L0dab62b4
    # Line 2171
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2142
    lw	$a4,20($a1)
    lw	$v1,8($a1)
    addu	$a4,$a4,$a4
    addu	$v1,$v1,$a4
    ld	$a4,0($sp)
    # Line 2143
    b	.L0dab61ec
    # Line 2142
    sw	$v1,0($a4)
.L0dab6234:
    # Line 2130
    # lw $t9, -27320($gp) # &__glSetError
.L0dab6238:
    jal	__glSetError
    li	$a0,1281
    ld	$gp,24($sp)
    # Line 2131
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab625c:
    # Line 2137
    li	$a5,4096
    bne	$s0,$a5,.L0dab62b4
    # Line 2171
    nop	# was lw $t9, -27320($gp) # &__glSetError
    # Line 2139
    lw	$v1,20($a1)
    lw	$at,4($a1)
    addu	$v1,$v1,$v1
    addu	$at,$at,$v1
    ld	$v1,0($sp)
    # Line 2140
    b	.L0dab61ec
    # Line 2139
    sw	$at,0($v1)
.L0dab6284:
    # Line 2137
    li	$v0,0x805f
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0dab62a4
    sltu	$a5,$v0,$s0
    bnez	$a5,.L0dab62b4
    # Line 2171
    nop	# was lw $t9, -27320($gp) # &__glSetError
    b	.L0dab61d4
    # Line 2158
    lbu	$v0,167($a0)
.L0dab62a4:
    # Line 2137
    li	$at,0x805e
    beql	$s0,$at,.L0dab61d4
    # Line 2158
    lbu	$v0,167($a0)
.L0dab62b0:
    # Line 2171
    # lw $t9, -27320($gp) # &__glSetError
.L0dab62b4:
    jal	__glSetError
    li	$a0,1281
    b	.L0dab61ec
    ld	$ra,40($sp)
.L0dab62c4:
    # Line 2148
    ld	$a4,0($sp)
    lw	$v1,24($a1)
    # Line 2149
    b	.L0dab61ec
    # Line 2148
    sw	$v1,0($a4)
.L0dab62d4:
    # Line 2122
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab62fc:
    # Line 2126
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$gp,24($sp)
    # Line 2127
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0dab6324:
    # Line 2137
    li	$a5,4101
    bne	$s0,$a5,.L0dab62b0
    # Line 2151
    ld	$v1,0($sp)
    lw	$at,20($a1)
    # Line 2152
    b	.L0dab61ec
    # Line 2151
    sw	$at,0($v1)
.L0dab633c:
    ld	$gp,24($sp)
    # Line 2135
    ld	$s0,32($sp)
    ld	$s1,8($sp)
    ld	$s2,16($sp)
    ld	$a4,0($sp)
    addiu	$sp,$sp,80
    jr	$ra
    # Line 2134
    sw	$zero,0($a4)
.L0dab635c:
    # Line 2166
    ld	$at,0($sp)
    li	$a5,12
    # Line 2167
    b	.L0dab61ec
    # Line 2166
    sw	$a5,0($at)
.L0dab636c:
    # Line 2160
    ld	$a4,0($sp)
    li	$v1,4
    # Line 2161
    b	.L0dab61ec
    # Line 2160
    sw	$v1,0($a4)
.L0dab637c:
    # Line 2163
    li	$a5,8
    # Line 2164
    b	.L0dab61ec
    # Line 2163
    sw	$a5,0($at)
.end __glMgrim_GetTexLevelParameteriv

# Function: __glMgrim_GetDetailTexFuncSGIS
# Declared: Line 2176 (Source lines: 2176-2188)
# Address: 0x0dab6388 - 0x0dab6428 (Size: 160 bytes, Frame: 32)
.globl __glMgrim_GetDetailTexFuncSGIS
.ent __glMgrim_GetDetailTexFuncSGIS
__glMgrim_GetDetailTexFuncSGIS:
    # Line 2179
    lw	$a4,__glCurrentContext
    # Line 2176
    move	$a5,$a1
    # Line 2179
    li	$v0,1
    # Line 2176
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # Line 2179
    lw	$at,__glBeginMode
    # Line 2176
    lui	$v1,0x15
    addiu	$v1,$v1,-31984
    # Line 2179
    beq	$at,$v0,.L0dab6408
    # Line 2176
    addu	$gp,$t9,$v1
    # Line 2179
    li	$a2,3553
    beq	$a0,$a2,.L0dab63d8
    sd	$ra,8($sp)
    # Line 2183
    # lw $t9, -27320($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    # Line 2184
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab63d8:
    # Line 2187
    move	$a0,$a5
    # lw $t9, -17848($gp) # &memcpy
    lui	$a1,0x1
    addu	$a1,$a4,$a1
    lw	$a2,-28312($a1)
    lw	$a1,-28308($a1)
    jal	memcpy
    sll	$a2,$a2,0x2
    # Line 2188
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0dab6408:
    # Line 2179
    # lw $t9, -27320($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glMgrim_GetDetailTexFuncSGIS

.late_rodata
jtbl_0dbee200:
    .word .L0dab3b0c
    .word .L0dab3b0c
    .word .L0dab3b0c
    .word .L0dab3b0c
    .word .L0dab3b48
    .word .L0dab3b34
    .word .L0dab3b68
    .word .L0dab3b78
    .word .L0dab3b84
    .word .L0dab3b8c
jtbl_0dbee228:
    .word .L0dab3d50
    .word .L0dab3d50
    .word .L0dab3d50
    .word .L0dab3e1c
    .word .L0dab3e44
    .word .L0dab3e6c
    .word .L0dab3e94
    .word .L0dab3ebc
    .word .L0dab3ee4
    .word .L0dab3f0c
jtbl_0dbee250:
    .word .L0dab45a8
    .word .L0dab45a8
    .word .L0dab45a8
    .word .L0dab45a8
    .word .L0dab45a8
    .word .L0dab45a8
    .word .L0dab45a8
    .word .L0dab45a8
    .word .L0dab45a8
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab4588
    .word .L0dab45e4
    .word .L0dab45e4
    .word .L0dab45e4
    .word .L0dab45e4
    .word .L0dab45e4
    .word .L0dab45e4
    .word .L0dab45e4
    .word .L0dab45e4
    .word .L0dab45e4
jtbl_0dbee2f8:
    .word .L0dab4868
    .word .L0dab4868
    .word .L0dab4868
    .word .L0dab4868
    .word .L0dab4868
    .word .L0dab4868
    .word .L0dab4868
    .word .L0dab4868
    .word .L0dab4868
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab4848
    .word .L0dab48a4
    .word .L0dab48a4
    .word .L0dab48a4
    .word .L0dab48a4
    .word .L0dab48a4
    .word .L0dab48a4
    .word .L0dab48a4
    .word .L0dab48a4
    .word .L0dab48a4
jtbl_0dbee3a0:
    .word .L0dab4b4c
    .word .L0dab4b4c
    .word .L0dab4b4c
    .word .L0dab4b4c
    .word .L0dab4b4c
    .word .L0dab4b4c
    .word .L0dab4b4c
    .word .L0dab4b4c
    .word .L0dab4b4c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b2c
    .word .L0dab4b84
    .word .L0dab4b84
    .word .L0dab4b84
    .word .L0dab4b84
    .word .L0dab4b84
    .word .L0dab4b84
    .word .L0dab4b84
    .word .L0dab4b84
    .word .L0dab4b84

.rdata
_lit8_40affe0000000000:
    .word 0x40affe00, 0x00000000
_lit8_c0e7fff000000000:
    .word 0xc0e7fff0, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_40800000:
    .word 0x40800000
_lit_41000000:
    .word 0x41000000
_lit_41400000:
    .word 0x41400000
_lit_457ff000:
    .word 0x457ff000
_lit_46180000:
    .word 0x46180000
_lit_46180400:
    .word 0x46180400
_lit_46240000:
    .word 0x46240000
_lit_46240400:
    .word 0x46240400
_lit_47009700:
    .word 0x47009700
_lit_47012d00:
    .word 0x47012d00
_lit_4b7fffff:
    .word 0x4b7fffff

