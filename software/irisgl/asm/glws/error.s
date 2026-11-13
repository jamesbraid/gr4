# Source: ../igloo/glws/error.c
# Category: glws
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -DUSE_UNDOC_ARGC_NAME -DIGLOODIR -DSW_AUTO_NORMALIZE -DSW_LOAD_RASTERPOS -DNO_LMCOLOR_HWSUPPORT -DIMPACT_COPY_CONTEXT_BUG -DIMPACT_POPATTRIB_BUG -DIMPACT_PER_FACET_CI_FOG -DIGLOO_NO_UNDERLAYS -DSW_PUPPLANES -DGLX_OVERLAY_HACK -DRESET_LOGICOP_BUG -DCONSTRAIN_PTR_WITH_EXT -DSHADOW_ENABLES -DIMPACT_POLYSMOOTH_BUG -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I/xlv55/kudzu-apr12/root/usr/include/X11 -I/xlv55/kudzu-apr12/root/usr/include/X11/extensions -xansi -fullwarn -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1233,1355,1171,1506,1164 -c ../igloo/glws/error.c -o error.T
# Total Functions: 3

.text

# Function: message
# Declared: Line 2 (Source lines: 3-117)
# Address: 0x0f0bca40 - 0x0f0bcf70 (Size: 1328 bytes, Frame: 0)
.ent message
message:
    # Line 3
    # la	v1,sub_0f020000
    sll	$v0,$a0,0x2
    sltiu	$at,$a0,116
    la	$v1,jtbl_0f022478
    beqz	$at,.L0f0bca64
    addu	$v0,$v0,$v1
    lw	$a0,0($v0)
    jr	$a0
    # Line 113
    la	$v0,sub_0f020000
.L0f0bca64:
    # Line 115
    la	$v0,sub_0f020000
    addiu	$v0,$v0,11776
    # Line 117
    jr	$ra
    nop
.L0f0bca74:
    # Line 7
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 7
    addiu	$v0,$v0,9800
.L0f0bca80:
    # Line 8
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 8
    addiu	$v0,$v0,9816
.L0f0bca8c:
    # Line 9
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 9
    addiu	$v0,$v0,9832
.L0f0bca98:
    # Line 10
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 10
    addiu	$v0,$v0,9848
.L0f0bcaa4:
    # Line 11
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 11
    addiu	$v0,$v0,9864
.L0f0bcab0:
    # Line 12
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 12
    addiu	$v0,$v0,9880
.L0f0bcabc:
    # Line 117
    jr	$ra
    # Line 13
    addiu	$v0,$gp,-19104
.L0f0bcac4:
    # Line 14
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 14
    addiu	$v0,$v0,9896
.L0f0bcad0:
    # Line 15
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 15
    addiu	$v0,$v0,9912
.L0f0bcadc:
    # Line 16
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 16
    addiu	$v0,$v0,9928
.L0f0bcae8:
    # Line 17
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 17
    addiu	$v0,$v0,9944
.L0f0bcaf4:
    # Line 18
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 18
    addiu	$v0,$v0,9960
.L0f0bcb00:
    # Line 19
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 19
    addiu	$v0,$v0,9976
.L0f0bcb0c:
    # Line 20
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 20
    addiu	$v0,$v0,9992
.L0f0bcb18:
    # Line 21
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 21
    addiu	$v0,$v0,10008
.L0f0bcb24:
    # Line 22
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 22
    addiu	$v0,$v0,10024
.L0f0bcb30:
    # Line 23
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 23
    addiu	$v0,$v0,10040
.L0f0bcb3c:
    # Line 24
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 24
    addiu	$v0,$v0,10056
.L0f0bcb48:
    # Line 25
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 25
    addiu	$v0,$v0,10072
.L0f0bcb54:
    # Line 26
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 26
    addiu	$v0,$v0,10088
.L0f0bcb60:
    # Line 27
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 27
    addiu	$v0,$v0,10104
.L0f0bcb6c:
    # Line 28
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 28
    addiu	$v0,$v0,10128
.L0f0bcb78:
    # Line 29
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 29
    addiu	$v0,$v0,10144
.L0f0bcb84:
    # Line 30
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 30
    addiu	$v0,$v0,10160
.L0f0bcb90:
    # Line 31
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 31
    addiu	$v0,$v0,10176
.L0f0bcb9c:
    # Line 32
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 32
    addiu	$v0,$v0,10192
.L0f0bcba8:
    # Line 33
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 33
    addiu	$v0,$v0,10208
.L0f0bcbb4:
    # Line 34
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 34
    addiu	$v0,$v0,10232
.L0f0bcbc0:
    # Line 35
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 35
    addiu	$v0,$v0,10248
.L0f0bcbcc:
    # Line 36
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 36
    addiu	$v0,$v0,10264
.L0f0bcbd8:
    # Line 37
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 37
    addiu	$v0,$v0,10280
.L0f0bcbe4:
    # Line 38
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 38
    addiu	$v0,$v0,10296
.L0f0bcbf0:
    # Line 39
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 39
    addiu	$v0,$v0,10312
.L0f0bcbfc:
    # Line 40
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 40
    addiu	$v0,$v0,10328
.L0f0bcc08:
    # Line 41
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 41
    addiu	$v0,$v0,10344
.L0f0bcc14:
    # Line 42
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 42
    addiu	$v0,$v0,10360
.L0f0bcc20:
    # Line 43
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 43
    addiu	$v0,$v0,10376
.L0f0bcc2c:
    # Line 44
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 44
    addiu	$v0,$v0,10392
.L0f0bcc38:
    # Line 45
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 45
    addiu	$v0,$v0,10408
.L0f0bcc44:
    # Line 46
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 46
    addiu	$v0,$v0,10424
.L0f0bcc50:
    # Line 47
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 47
    addiu	$v0,$v0,10440
.L0f0bcc5c:
    # Line 48
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 48
    addiu	$v0,$v0,10456
.L0f0bcc68:
    # Line 49
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 49
    addiu	$v0,$v0,10472
.L0f0bcc74:
    # Line 50
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 50
    addiu	$v0,$v0,10488
.L0f0bcc80:
    # Line 51
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 51
    addiu	$v0,$v0,10504
.L0f0bcc8c:
    # Line 52
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 52
    addiu	$v0,$v0,10520
.L0f0bcc98:
    # Line 53
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 53
    addiu	$v0,$v0,10536
.L0f0bcca4:
    # Line 54
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 54
    addiu	$v0,$v0,10552
.L0f0bccb0:
    # Line 55
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 55
    addiu	$v0,$v0,10568
.L0f0bccbc:
    # Line 56
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 56
    addiu	$v0,$v0,10592
.L0f0bccc8:
    # Line 57
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 57
    addiu	$v0,$v0,10608
.L0f0bccd4:
    # Line 58
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 58
    addiu	$v0,$v0,10624
.L0f0bcce0:
    # Line 59
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 59
    addiu	$v0,$v0,10640
.L0f0bccec:
    # Line 60
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 60
    addiu	$v0,$v0,10664
.L0f0bccf8:
    # Line 61
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 61
    addiu	$v0,$v0,10680
.L0f0bcd04:
    # Line 62
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 62
    addiu	$v0,$v0,10704
.L0f0bcd10:
    # Line 63
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 63
    addiu	$v0,$v0,10720
.L0f0bcd1c:
    # Line 64
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 64
    addiu	$v0,$v0,10736
.L0f0bcd28:
    # Line 65
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 65
    addiu	$v0,$v0,10752
.L0f0bcd34:
    # Line 66
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 66
    addiu	$v0,$v0,10768
.L0f0bcd40:
    # Line 67
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 67
    addiu	$v0,$v0,10792
.L0f0bcd4c:
    # Line 68
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 68
    addiu	$v0,$v0,10808
.L0f0bcd58:
    # Line 69
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 69
    addiu	$v0,$v0,10832
.L0f0bcd64:
    # Line 70
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 70
    addiu	$v0,$v0,10848
.L0f0bcd70:
    # Line 71
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 71
    addiu	$v0,$v0,10872
.L0f0bcd7c:
    # Line 72
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 72
    addiu	$v0,$v0,10896
.L0f0bcd88:
    # Line 73
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 73
    addiu	$v0,$v0,10912
.L0f0bcd94:
    # Line 74
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 74
    addiu	$v0,$v0,10936
.L0f0bcda0:
    # Line 75
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 75
    addiu	$v0,$v0,10960
.L0f0bcdac:
    # Line 76
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 76
    addiu	$v0,$v0,10976
.L0f0bcdb8:
    # Line 77
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 77
    addiu	$v0,$v0,10992
.L0f0bcdc4:
    # Line 78
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 78
    addiu	$v0,$v0,11008
.L0f0bcdd0:
    # Line 79
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 79
    addiu	$v0,$v0,11040
.L0f0bcddc:
    # Line 80
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 80
    addiu	$v0,$v0,11064
.L0f0bcde8:
    # Line 81
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 81
    addiu	$v0,$v0,11088
.L0f0bcdf4:
    # Line 82
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 82
    addiu	$v0,$v0,11112
.L0f0bce00:
    # Line 83
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 83
    addiu	$v0,$v0,11136
.L0f0bce0c:
    # Line 84
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 84
    addiu	$v0,$v0,11160
.L0f0bce18:
    # Line 85
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 85
    addiu	$v0,$v0,11176
.L0f0bce24:
    # Line 86
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 86
    addiu	$v0,$v0,11192
.L0f0bce30:
    # Line 87
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 87
    addiu	$v0,$v0,11208
.L0f0bce3c:
    # Line 88
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 88
    addiu	$v0,$v0,11232
.L0f0bce48:
    # Line 89
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 89
    addiu	$v0,$v0,11248
.L0f0bce54:
    # Line 90
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 90
    addiu	$v0,$v0,11264
.L0f0bce60:
    # Line 91
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 91
    addiu	$v0,$v0,11288
.L0f0bce6c:
    # Line 92
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 92
    addiu	$v0,$v0,11312
.L0f0bce78:
    # Line 93
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 93
    addiu	$v0,$v0,11336
.L0f0bce84:
    # Line 94
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 94
    addiu	$v0,$v0,11360
.L0f0bce90:
    # Line 95
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 95
    addiu	$v0,$v0,11384
.L0f0bce9c:
    # Line 96
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 96
    addiu	$v0,$v0,11400
.L0f0bcea8:
    # Line 97
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 97
    addiu	$v0,$v0,11416
.L0f0bceb4:
    # Line 98
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 98
    addiu	$v0,$v0,11432
.L0f0bcec0:
    # Line 99
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 99
    addiu	$v0,$v0,11448
.L0f0bcecc:
    # Line 100
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 100
    addiu	$v0,$v0,11464
.L0f0bced8:
    # Line 101
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 101
    addiu	$v0,$v0,11480
.L0f0bcee4:
    # Line 102
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 102
    addiu	$v0,$v0,11504
.L0f0bcef0:
    # Line 103
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 103
    addiu	$v0,$v0,11520
.L0f0bcefc:
    # Line 104
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 104
    addiu	$v0,$v0,11544
.L0f0bcf08:
    # Line 105
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 105
    addiu	$v0,$v0,11568
.L0f0bcf14:
    # Line 106
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 106
    addiu	$v0,$v0,11592
.L0f0bcf20:
    # Line 107
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 107
    addiu	$v0,$v0,11616
.L0f0bcf2c:
    # Line 108
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 108
    addiu	$v0,$v0,11640
.L0f0bcf38:
    # Line 109
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 109
    addiu	$v0,$v0,11664
.L0f0bcf44:
    # Line 110
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 110
    addiu	$v0,$v0,11688
.L0f0bcf50:
    # Line 111
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 111
    addiu	$v0,$v0,11712
.L0f0bcf5c:
    # Line 112
    la	$v0,sub_0f020000
    # Line 117
    jr	$ra
    # Line 112
    addiu	$v0,$v0,11736
.L0f0bcf68:
    # Line 117
    jr	$ra
    # Line 113
    addiu	$v0,$v0,11752
.end message

# Function: gl_ErrorHandler
# Declared: Line 29 (Source lines: 30-49)
# Address: 0x0f0bcf70 - 0x0f0bd080 (Size: 272 bytes, Frame: 208)
.globl gl_ErrorHandler
.ent gl_ErrorHandler
gl_ErrorHandler:
    # Line 30
    addiu	$sp,$sp,-80
    sd	$s1,24($sp)
    sd	$gp,32($sp)
    # lui	at,0xfff7 (gp disp hi)
    # addiu	at,at,25304 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    lw	$a3,-20812($gp)
    move	$s1,$a1
    sd	$s0,8($sp)
    beqz	$a3,.L0f0bcfc0
    move	$s0,$a0
    # Line 32
    move	$a0,$s0
    move	$a1,$s1
    sd	$ra,40($sp)
    jalr	$a3
    move	$t9,$a3
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    b	.L0f0bd048
    ld	$s0,8($sp)
.L0f0bcfc0:
    beqz	$a2,.L0f0bcfd4
    # Line 34
    move	$v0,$a2
    sd	$ra,40($sp)
    b	.L0f0bcfe0
    sd	$a2,0($sp)
.L0f0bcfd4:
    addiu	$v1,$gp,-19096
    sd	$ra,40($sp)
    sd	$v1,0($sp)
.L0f0bcfe0:
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,-13760
    bal __iglooCloneEnables
    move	$a0,$s0
    move	$a5,$v0
    ld	$a4,0($sp)
    move	$a3,$s0
    lw	$a2,-15016($gp)
    la	$a1,sub_0f020000
    la	$a0,__iob
    la	$t9,fprintf
    addiu	$a1,$a1,11808
    addiu	$a0,$a0,32
    jalr	$t9
    sd	$a0,16($sp)
    # Line 39
    la	$t9,fflush
    ld	$a0,16($sp)
    jalr	$t9
    ld	$s0,8($sp)
    move	$at,$s1
    li	$a5,1
    beq	$s1,$a5,.L0f0bd068
    ld	$ra,40($sp)
    # Line 41
    li	$v0,5
    beq	$at,$v0,.L0f0bd054
    ld	$s1,24($sp)
.L0f0bd048:
    ld	$gp,32($sp)
    # Line 49
    jr	$ra
    addiu	$sp,$sp,80
.L0f0bd054:
    # Line 45
    la	$t9,abort
    jalr	$t9
    ld	$s1,24($sp)
    b	.L0f0bd048
    ld	$ra,40($sp)
.L0f0bd068:
    # Line 41
    la	$t9,exit
    li	$a0,1
    jalr	$t9
    ld	$s1,24($sp)
    b	.L0f0bd048
    ld	$ra,40($sp)
.end gl_ErrorHandler

# Function: gl_dummy_function
# Declared: Line 55 (Source lines: 60-60)
# Address: 0x0f0bd080 - 0x0f0bd088 (Size: 8 bytes, Frame: 0)
.globl gl_dummy_function
.ent gl_dummy_function
gl_dummy_function:
    # Line 60
    jr	$ra
    nop
.end gl_dummy_function

.late_rodata
jtbl_0f022478:
    .word .L0f0bca64
    .word .L0f0bca74
    .word .L0f0bca80
    .word .L0f0bca8c
    .word .L0f0bca98
    .word .L0f0bcaa4
    .word .L0f0bcab0
    .word .L0f0bcabc
    .word .L0f0bcac4
    .word .L0f0bcad0
    .word .L0f0bcadc
    .word .L0f0bcae8
    .word .L0f0bcaf4
    .word .L0f0bcb00
    .word .L0f0bcb0c
    .word .L0f0bcb18
    .word .L0f0bcb24
    .word .L0f0bcb30
    .word .L0f0bcb3c
    .word .L0f0bcb48
    .word .L0f0bcb54
    .word .L0f0bcb60
    .word .L0f0bcb6c
    .word .L0f0bcb78
    .word .L0f0bcb84
    .word .L0f0bcb90
    .word .L0f0bcb9c
    .word .L0f0bcba8
    .word .L0f0bcbb4
    .word .L0f0bcbc0
    .word .L0f0bcbcc
    .word .L0f0bcbd8
    .word .L0f0bcbe4
    .word .L0f0bcbf0
    .word .L0f0bcbfc
    .word .L0f0bcc08
    .word .L0f0bcc14
    .word .L0f0bcc20
    .word .L0f0bcc2c
    .word .L0f0bcc38
    .word .L0f0bcc44
    .word .L0f0bca64
    .word .L0f0bcc50
    .word .L0f0bca64
    .word .L0f0bcc5c
    .word .L0f0bcc68
    .word .L0f0bcc74
    .word .L0f0bcc80
    .word .L0f0bcc8c
    .word .L0f0bcc98
    .word .L0f0bcca4
    .word .L0f0bccb0
    .word .L0f0bccbc
    .word .L0f0bccc8
    .word .L0f0bccd4
    .word .L0f0bcce0
    .word .L0f0bccec
    .word .L0f0bccf8
    .word .L0f0bcd04
    .word .L0f0bcd10
    .word .L0f0bcd1c
    .word .L0f0bcd28
    .word .L0f0bcd34
    .word .L0f0bcd40
    .word .L0f0bcd4c
    .word .L0f0bcd58
    .word .L0f0bcd64
    .word .L0f0bcd70
    .word .L0f0bcd7c
    .word .L0f0bcd88
    .word .L0f0bcd94
    .word .L0f0bcda0
    .word .L0f0bcdac
    .word .L0f0bcdb8
    .word .L0f0bcdc4
    .word .L0f0bcdd0
    .word .L0f0bcddc
    .word .L0f0bcde8
    .word .L0f0bcdf4
    .word .L0f0bce00
    .word .L0f0bce0c
    .word .L0f0bce18
    .word .L0f0bce24
    .word .L0f0bce30
    .word .L0f0bce3c
    .word .L0f0bce48
    .word .L0f0bce54
    .word .L0f0bce60
    .word .L0f0bce6c
    .word .L0f0bce78
    .word .L0f0bce84
    .word .L0f0bce90
    .word .L0f0bce9c
    .word .L0f0bcea8
    .word .L0f0bceb4
    .word .L0f0bcec0
    .word .L0f0bcecc
    .word .L0f0bced8
    .word .L0f0bcee4
    .word .L0f0bcef0
    .word .L0f0bca64
    .word .L0f0bca64
    .word .L0f0bca64
    .word .L0f0bcefc
    .word .L0f0bcf08
    .word .L0f0bcf14
    .word .L0f0bcf20
    .word .L0f0bcf2c
    .word .L0f0bcf38
    .word .L0f0bca64
    .word .L0f0bcf44
    .word .L0f0bcf50
    .word .L0f0bca64
    .word .L0f0bca64
    .word .L0f0bcf5c
    .word .L0f0bcf68

