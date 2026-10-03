# Source: ../dgl/dglopen.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/dglopen.c -o dglopen.T
# Total Functions: 9

.text

# Function: gl_shlib_version
# Declared: Line 82 (Source lines: 84-84)
# Address: 0x0f0bb5c8 - 0x0f0bb5d0 (Size: 8 bytes, Frame: 0)
.globl gl_shlib_version
.ent gl_shlib_version
gl_shlib_version:
    # Line 84
    jr	$ra
    li	$v0,4
.end gl_shlib_version

# Function: __GLdglopen
# Declared: Line 96 (Source lines: 99-434)
# Address: 0x0f0bb5d0 - 0x0f0bc004 (Size: 2612 bytes, Frame: 144)
.globl __GLdglopen
.ent __GLdglopen
__GLdglopen:
    # Line 110
    move	$v0,$a1
    # Line 108
    li	$at,-1
    # Line 99
    addiu	$sp,$sp,-1296
    sd	$s1,1208($sp)
    sd	$s5,1224($sp)
    # Line 117
    move	$s5,$zero
    # Line 116
    sb	$zero,520($sp)
    # Line 115
    sb	$zero,264($sp)
    # Line 114
    sb	$zero,8($sp)
    # Line 107
    sw	$zero,0($sp)
    sd	$s4,1216($sp)
    # Line 99
    move	$s4,$a0
    sd	$s0,1232($sp)
    move	$s0,$a1
    sd	$gp,1248($sp)
    # lui	v1,0xfff7 (gp disp hi)
    # addiu	v1,v1,31864 (gp disp lo)
    # addu	gp,t9,v1 (gp setup)
    # Line 122
    la	$t9,gl_comm_new_gfile
    sd	$a1,1200($sp)
    sd	$ra,1240($sp)
    jalr	$t9
    # Line 108
    sw	$at,4($sp)
    # Line 122
    beqz	$v0,.L0f0bb988
    move	$s1,$v0
    # Line 125
    la	$t9,gl_util_init
    jalr	$t9
    nop
    # Line 126
    move	$a0,$s4
    addiu	$a6,$sp,1044
    addiu	$a5,$sp,1040
    addiu	$a4,$sp,4
    la	$t9,sub_0f0c0000
    move	$a3,$zero
    addiu	$a2,$sp,264
    addiu	$t9,$t9,-15524
    bal gl_dgl_default_display
    addiu	$a1,$sp,784
    lbu	$at,264($sp)
    beqz	$at,.L0f0bbac0
    sd	$s2,1256($sp)
    # Line 129
    la	$s2,sub_0f020000
    addiu	$s2,$s2,31232
    li	$at,4
.L0f0bb680:
    beq	$s0,$at,.L0f0bbae0
    # Line 135
    addiu	$a0,$gp,-15168
.L0f0bb688:
    # Line 170
    li	$v1,2
    beq	$s0,$v1,.L0f0bb6ac
    li	$a4,3
    beq	$s0,$a4,.L0f0bb6b0
    # Line 172
    la	$t9,gethostname
.L0f0bb69c:
    # Line 187
    beqz	$s5,.L0f0bb738
    # Line 190
    addiu	$a6,$a0,32
.L0f0bb6a4:
    b	.L0f0bb738
    move	$a6,$s5
.L0f0bb6ac:
    # Line 172
    la	$t9,gethostname
.L0f0bb6b0:
    li	$a1,256
    jalr	$t9
    addiu	$a0,$sp,8
    # Line 174
    la	$t9,gethostbyname
    sd	$s6,1264($sp)
    jalr	$t9
    addiu	$a0,$sp,8
    move	$s6,$v0
    bnez	$v0,.L0f0bbe08
    sw	$v0,-20820($gp)
    # Line 178
    la	$t9,cuserid
.L0f0bb6dc:
    jalr	$t9
    move	$a0,$zero
    beqz	$v0,.L0f0bbe84
    move	$s5,$v0
.L0f0bb6ec:
    # Line 184
    la	$t9,gl_util_lowcase
    jalr	$t9
    move	$a0,$s5
    lbu	$a7,784($sp)
    beqz	$a7,.L0f0bbee8
    # Line 187
    la	$t9,strchr
.L0f0bb704:
    li	$a1,32
    jalr	$t9
    addiu	$a0,$sp,784
    addiu	$a0,$gp,-15168
    move	$s6,$v0
    beqz	$v0,.L0f0bbd10
    move	$a1,$v0
    # Line 188
    sb	$zero,0($s6)
    addiu	$s6,$s6,1
    sw	$s6,1048($sp)
    # Line 187
    bnez	$s5,.L0f0bb6a4
    ld	$s6,1264($sp)
    # Line 190
    addiu	$a6,$a0,32
.L0f0bb738:
    addiu	$a7,$sp,8
    move	$a5,$s0
    lw	$a4,4($sp)
    addiu	$a3,$sp,264
    la	$t9,gl_dgl_info
    addiu	$a2,$sp,784
    addiu	$a1,$s2,424
    jalr	$t9
    li	$a0,1
    # Line 194
    la	$t9,strcpy
    addiu	$a1,$sp,264
    jalr	$t9
    addiu	$a0,$s1,200
    # Line 196
    beqz	$s0,.L0f0bb8bc
    li	$at,1
    beq	$s0,$at,.L0f0bb8bc
    # Line 208
    la	$t9,strchr
    move	$a0,$s4
    jalr	$t9
    li	$a1,58
    beqzl	$v0,.L0f0bba9c
    sd	$s3,1272($sp)
    sd	$s3,1272($sp)
    # Line 211
    move	$s3,$s4
.L0f0bb798:
    # Line 214
    la	$t9,strchr
    sd	$s6,1264($sp)
    move	$a0,$s3
    jalr	$t9
    li	$a1,64
    beqz	$v0,.L0f0bb7b8
    move	$s6,$v0
    # Line 215
    addiu	$s3,$s6,1
.L0f0bb7b8:
    # Line 217
    la	$t9,strchr
    move	$a0,$s3
    jalr	$t9
    li	$a1,35
    beqz	$v0,.L0f0bb7d4
    move	$s6,$v0
    # Line 218
    sb	$zero,0($s6)
.L0f0bb7d4:
    # Line 222
    la	$t9,gl_dgl_info
    move	$a2,$s3
    addiu	$a1,$s2,488
    jalr	$t9
    li	$a0,1
    # Line 224
    la	$t9,_XSGISaveAuthInfo
    jalr	$t9
    nop
    # Line 226
    la	$t9,XOpenDisplay
    jalr	$t9
    move	$a0,$s3
    move	$s6,$v0
    bnez	$v0,.L0f0bb84c
    move	$s4,$v0
    # Line 227
    move	$a2,$s3
    la	$t9,gl_dgl_info
    addiu	$a1,$s2,528
    li	$a0,1
    jalr	$t9
    ld	$s6,1264($sp)
    # Line 228
    move	$a2,$s3
    la	$t9,gl_dgl_error
    addiu	$a1,$s2,560
    addiu	$a0,$gp,-15168
    jalr	$t9
    addiu	$a0,$a0,40
    ld	$s3,1272($sp)
    # Line 229
    li	$a4,13
    # Line 230
    b	.L0f0bb924
    # Line 229
    sw	$a4,0($sp)
.L0f0bb84c:
    # Line 230
    la	$a0,authname
    # Line 233
    la	$t9,_XSGIRetreiveAuthInfo
    # Line 230
    la	$a2,authdata
    la	$a1,authnamelen
    # Line 233
    jalr	$t9
    # Line 230
    la	$a3,authdatalen
    # Line 235
    move	$a3,$s6
    la	$t9,gl_dgl_info
    move	$a2,$s3
    addiu	$a1,$s2,592
    jalr	$t9
    li	$a0,1
    # Line 259
    la	$t9,XSGIMiscQueryExtension
    move	$a0,$s6
    addiu	$a2,$sp,1052
    jalr	$t9
    addiu	$a1,$sp,1052
    beqz	$v0,.L0f0bbb98
    ld	$s6,1264($sp)
    # Line 267
    la	$t9,XCloseDisplay
    move	$a0,$s4
    jalr	$t9
    ld	$s3,1272($sp)
    # Line 268
    la	$t9,gl_dgl_info
    move	$a2,$s4
    addiu	$a1,$s2,744
    jalr	$t9
    li	$a0,1
.L0f0bb8bc:
    la	$v0,authname
    la	$a0,authdata
    la	$a1,authnamelen
    # Line 275
    beqz	$s0,.L0f0bbd30
    # Line 268
    la	$a2,authdatalen
    # Line 275
    li	$a7,5
    beq	$s0,$a7,.L0f0bbde8
    li	$s4,1
    beq	$s0,$s4,.L0f0bbe20
    li	$at,2
    beq	$s0,$at,.L0f0bbe3c
    li	$v1,3
    beq	$s0,$v1,.L0f0bb9ac
    # Line 303
    move	$a2,$s0
    la	$t9,gl_dgl_error
    addiu	$a1,$s2,888
    addiu	$a0,$gp,-15168
    jalr	$t9
    addiu	$a0,$a0,56
    # Line 304
    li	$a4,19
    sw	$a4,0($sp)
.L0f0bb910:
    # Line 305
    lw	$a7,-20816($gp)
.L0f0bb914:
    beqz	$a7,.L0f0bbd68
.L0f0bb918:
    # Line 310
    lw	$at,0($sp)
    beqz	$at,.L0f0bb9cc
    la	$s4,comm_curgfile
.L0f0bb924:
    # Line 430
    lw	$a0,12($s1)
.L0f0bb928:
    bltz	$a0,.L0f0bb93c
    ld	$s2,1256($sp)
    # Line 431
    lw	$t9,32($s1)
    jalr	$t9
    nop
.L0f0bb93c:
    lw	$a0,16($s1)
    bltz	$a0,.L0f0bb958
    # Line 433
    la	$t9,gl_comm_free_gfile
    # Line 432
    lw	$t9,32($s1)
    jalr	$t9
    nop
    # Line 433
    la	$t9,gl_comm_free_gfile
.L0f0bb958:
    jalr	$t9
    move	$a0,$s1
    ld	$s1,1208($sp)
    ld	$gp,1248($sp)
    # Line 434
    ld	$s0,1232($sp)
    ld	$s4,1216($sp)
    ld	$s5,1224($sp)
    ld	$ra,1240($sp)
    lw	$v0,0($sp)
    addiu	$sp,$sp,1296
    jr	$ra
    negu	$v0,$v0
.L0f0bb988:
    # Line 124
    li	$v0,-24
    ld	$gp,1248($sp)
    ld	$s0,1232($sp)
    ld	$s1,1208($sp)
    ld	$ra,1240($sp)
    ld	$s4,1216($sp)
    ld	$s5,1224($sp)
    jr	$ra
    addiu	$sp,$sp,1296
.L0f0bb9ac:
    # Line 293
    move	$a0,$s1
    la	$t9,gl_decnet_init
    lw	$a3,1048($sp)
    addiu	$a2,$sp,784
    jalr	$t9
    addiu	$a1,$sp,264
    # Line 294
    b	.L0f0bb910
    # Line 293
    sw	$v0,0($sp)
.L0f0bb9cc:
    # Line 310
    lw	$v1,0($s4)
    bnez	$v1,.L0f0bbd1c
    # Line 318
    la	$t9,gl_load_dgl_table
.L0f0bb9d8:
    move	$a0,$s0
    jalr	$t9
    # Line 316
    sw	$s1,0($s4)
    # Line 319
    la	$a4,gl_connection_inited
    li	$s4,1
    beq	$s0,$s4,.L0f0bba00
    sw	$s4,0($a4)
    # Line 322
    la	$t9,gl_comm_get_bufsize
    jalr	$t9
    nop
.L0f0bba00:
    # Line 325
    beqzl	$s0,.L0f0bbdc4
    ld	$gp,1248($sp)
    beq	$s0,$s4,.L0f0bbc50
    # Line 326
    la	$t9,gl_comm_pushbuffer
    jalr	$t9
    nop
    # Line 327
    la	$t9,gl_data_check_xdr
    jalr	$t9
    nop
    # Line 328
    la	$t9,gl_comm_popbuffer
    jalr	$t9
    # Line 327
    sw	$v0,0($sp)
    # Line 329
    lw	$a7,0($sp)
    bnezl	$a7,.L0f0bb928
    # Line 430
    lw	$a0,12($s1)
    # Line 337
    la	$t9,gl_comm_pushbuffer
    jalr	$t9
    nop
    # Line 338
    addiu	$a5,$sp,0
    addiu	$a4,$sp,1056
    li	$a3,128
    la	$t9,gl_d_dglloginX
    addiu	$a2,$sp,784
    move	$a1,$s5
    bal gl_d_dglloginX
    addiu	$a0,$sp,8
    # Line 340
    la	$t9,gl_comm_popbuffer
    jalr	$t9
    nop
    # Line 341
    lw	$at,0($sp)
    beqz	$at,.L0f0bbf9c
    # Line 342
    addiu	$a2,$sp,1056
    la	$t9,gl_dgl_error
    addiu	$a1,$s2,904
    addiu	$a0,$gp,-15168
    jalr	$t9
    addiu	$a0,$a0,64
    b	.L0f0bb928
    # Line 430
    lw	$a0,12($s1)
.L0f0bba9c:
    # Line 209
    lw	$a4,1044($sp)
    lw	$a3,1040($sp)
    la	$t9,sprintf
    move	$a2,$s4
    addiu	$a1,$s2,472
    jalr	$t9
    addiu	$a0,$sp,520
    # Line 210
    b	.L0f0bb798
    addiu	$s3,$sp,520
.L0f0bbac0:
    # Line 129
    la	$s2,sub_0f020000
    la	$t9,strcpy
    addiu	$a0,$sp,264
    addiu	$s2,$s2,31232
    jalr	$t9
    addiu	$a1,$s2,256
    b	.L0f0bb680
    li	$at,4
.L0f0bbae0:
    # Line 135
    la	$t9,strcmp
    addiu	$a1,$s2,272
    jalr	$t9
    addiu	$a0,$sp,264
    beqz	$v0,.L0f0bbe60
    la	$t9,strcmp
    addiu	$a1,$gp,-15168
    jalr	$t9
    addiu	$a0,$sp,264
    beqz	$v0,.L0f0bbe60
    la	$t9,strcmp
    addiu	$a0,$sp,264
    addiu	$a1,$gp,-15168
    jalr	$t9
    addiu	$a1,$a1,8
    beqz	$v0,.L0f0bbe60
    # Line 142
    la	$t9,gethostname
    li	$a1,256
    jalr	$t9
    addiu	$a0,$sp,8
    # Line 144
    la	$t9,gethostbyname
    sd	$s6,1264($sp)
    jalr	$t9
    addiu	$a0,$sp,8
    move	$s6,$v0
    bnez	$v0,.L0f0bbea4
    sw	$v0,-20820($gp)
    # Line 146
    la	$t9,gethostbyname
.L0f0bbb50:
    jalr	$t9
    addiu	$a0,$sp,264
    move	$s6,$v0
    bnez	$v0,.L0f0bbebc
    sw	$v0,-20820($gp)
    # Line 149
    la	$t9,strcmp
.L0f0bbb68:
    addiu	$a1,$sp,264
    addiu	$a0,$sp,8
    jalr	$t9
    ld	$s6,1264($sp)
    beqz	$v0,.L0f0bbf1c
    # Line 151
    la	$t9,gl_dgl_info
    addiu	$a1,$s2,320
    li	$a0,1
    jalr	$t9
    # Line 150
    li	$s0,2
    b	.L0f0bb688
    addiu	$a0,$gp,-15168
.L0f0bbb98:
    # Line 260
    la	$t9,XCloseDisplay
    jalr	$t9
    move	$a0,$s4
    # Line 261
    la	$t9,gl_dgl_info
    addiu	$a1,$s2,648
    jalr	$t9
    li	$a0,1
    # Line 262
    la	$t9,gl_dgl_error
    move	$a2,$s3
    addiu	$a1,$s2,704
    jalr	$t9
    addiu	$a0,$s2,688
    ld	$s3,1272($sp)
    # Line 263
    li	$a4,13
    # Line 264
    b	.L0f0bb924
    # Line 263
    sw	$a4,0($sp)
.L0f0bbbd8:
    la	$a0,authnamelen
    # Line 371
    la	$t9,gl_d_dglxauthority
    la	$a3,authdata
    la	$a2,authdatalen
    la	$a1,authname
    lw	$a3,0($a3)
    lw	$a2,0($a2)
    lw	$a1,0($a1)
    bal gl_d_dglxauthority
    lw	$a0,0($a0)
    la	$a0,authname
    lw	$a0,0($a0)
    beqz	$a0,.L0f0bbc18
    # Line 372
    la	$t9,XFree
    jalr	$t9
    nop
.L0f0bbc18:
    la	$a0,authdata
    lw	$a0,0($a0)
    beqz	$a0,.L0f0bbc30
    # Line 373
    la	$t9,XFree
    jalr	$t9
    nop
.L0f0bbc30:
    lw	$a4,0($sp)
    # Line 378
    bnez	$a4,.L0f0bbfd4
    # Line 379
    la	$t9,gl_dgl_error
.L0f0bbc3c:
    # Line 382
    la	$t9,gl_dgl_info
    move	$a2,$zero
    addiu	$a1,$s2,976
    jalr	$t9
    li	$a0,1
.L0f0bbc50:
    beqz	$s0,.L0f0bbdc0
    # Line 390
    lw	$a3,1044($sp)
    lw	$a2,1040($sp)
    addiu	$a1,$gp,-15168
    la	$t9,sprintf
    # Line 382
    la	$s5,gl_dname
    # Line 390
    addiu	$a1,$a1,72
    jalr	$t9
    move	$a0,$s5
    # Line 391
    la	$t9,gl_dgl_info
    move	$a2,$s5
    addiu	$a1,$s2,1000
    jalr	$t9
    li	$a0,1
    beq	$s0,$s4,.L0f0bbed4
    # Line 395
    la	$t9,gl_d_gl_setdisplay
    jalr	$t9
    move	$a0,$s5
    sw	$v0,0($sp)
.L0f0bbc9c:
    bltz	$v0,.L0f0bbf40
    # Line 397
    la	$t9,exit
.L0f0bbca4:
    # Line 405
    beqzl	$s0,.L0f0bbdc4
    ld	$gp,1248($sp)
    beq	$s0,$s4,.L0f0bbdc0
    lw	$a4,0($sp)
    beqz	$a4,.L0f0bbf50
.L0f0bbcb8:
    # Line 417
    la	$t9,gl_d_gversion
    addiu	$a0,$sp,1184
    jalr	$t9
    ld	$s2,1256($sp)
    # Line 419
    li	$a2,1
    addiu	$s0,$sp,1188
    la	$t9,strncmp
    addiu	$a1,$gp,-15168
    addiu	$a1,$a1,96
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0f0bbd80
    move	$a0,$s0
    la	$t9,strncmp
    li	$a2,2
    addiu	$a1,$gp,-15168
    jalr	$t9
    addiu	$a1,$a1,104
    beqz	$v0,.L0f0bbd84
    move	$v0,$zero
    b	.L0f0bbd84
    li	$v0,1
.L0f0bbd10:
    # Line 188
    sw	$a1,1048($sp)
    b	.L0f0bb69c
    ld	$s6,1264($sp)
.L0f0bbd1c:
    # Line 315
    la	$t9,gl_comm_flush
    jalr	$t9
    nop
    b	.L0f0bb9d8
    # Line 318
    la	$t9,gl_load_dgl_table
.L0f0bbd30:
    # Line 276
    la	$t9,open
    li	$a2,420
    li	$a1,2
    jalr	$t9
    addiu	$a0,$s2,776
    bltz	$v0,.L0f0bbf00
    sw	$v0,12($s1)
    # Line 281
    la	$t9,gl_dgl_info
    addiu	$a1,$s2,816
    jalr	$t9
    li	$a0,1
    # Line 282
    lw	$a4,12($s1)
    b	.L0f0bb910
    sw	$a4,16($s1)
.L0f0bbd68:
    # Line 309
    la	$t9,gl_util_timer
    jalr	$t9
    move	$a0,$zero
    # Line 310
    li	$a7,1
    b	.L0f0bb918
    sw	$a7,-20816($gp)
.L0f0bbd80:
    # Line 419
    move	$v0,$zero
.L0f0bbd84:
    # Line 422
    addiu	$a0,$sp,1184
    la	$t9,gl_strstr
    # Line 419
    sw	$v0,400($s1)
    addiu	$a1,$gp,-15168
    # Line 422
    bal gl_strstr
    addiu	$a1,$a1,112
    bnez	$v0,.L0f0bbda8
    li	$v0,1
    move	$v0,$zero
.L0f0bbda8:
    # Line 424
    la	$t9,gl_comm_popbuffer
    jalr	$t9
    # Line 422
    sw	$v0,408($s1)
    # Line 425
    lw	$a4,0($sp)
    bnezl	$a4,.L0f0bb928
    # Line 430
    lw	$a0,12($s1)
.L0f0bbdc0:
    ld	$gp,1248($sp)
.L0f0bbdc4:
    # Line 428
    ld	$s0,1232($sp)
    lw	$v0,0($s1)
    ld	$s1,1208($sp)
    ld	$s2,1256($sp)
    ld	$ra,1240($sp)
    ld	$s4,1216($sp)
    ld	$s5,1224($sp)
    jr	$ra
    addiu	$sp,$sp,1296
.L0f0bbde8:
    # Line 286
    addiu	$a1,$s2,840
    la	$t9,gl_dgl_info
    li	$a0,1
    # Line 285
    sw	$s4,4($s1)
    # Line 286
    jalr	$t9
    # Line 285
    li	$s0,1
    b	.L0f0bb914
    # Line 305
    lw	$a7,-20816($gp)
.L0f0bbe08:
    # Line 175
    la	$t9,strcpy
    lw	$a1,0($s6)
    jalr	$t9
    addiu	$a0,$sp,8
    b	.L0f0bb6dc
    # Line 178
    la	$t9,cuserid
.L0f0bbe20:
    # Line 289
    la	$t9,gl_dgl_info
    addiu	$a1,$s2,872
    li	$a0,1
    jalr	$t9
    # Line 288
    sw	$s4,4($s1)
    b	.L0f0bb914
    # Line 305
    lw	$a7,-20816($gp)
.L0f0bbe3c:
    # Line 291
    move	$a0,$s1
    lw	$a2,4($sp)
    la	$t9,gl_socket_init
    addiu	$a1,$sp,264
    addiu	$a3,$gp,-15168
    jalr	$t9
    addiu	$a3,$a3,48
    # Line 292
    b	.L0f0bb910
    # Line 291
    sw	$v0,0($sp)
.L0f0bbe60:
    # Line 139
    addiu	$a1,$s2,288
    li	$a0,1
    la	$t9,gl_dgl_info
    # Line 138
    li	$s0,1
    li	$a4,1
    # Line 139
    jalr	$t9
    # Line 138
    sw	$a4,4($s1)
    b	.L0f0bb688
    addiu	$a0,$gp,-15168
.L0f0bbe84:
    # Line 180
    la	$t9,gl_dgl_error
    addiu	$a1,$s2,376
    addiu	$a0,$gp,-15168
    jalr	$t9
    addiu	$a0,$a0,16
    addiu	$s5,$gp,-15168
    b	.L0f0bb6ec
    # Line 182
    addiu	$s5,$s5,24
.L0f0bbea4:
    # Line 145
    la	$t9,strcpy
    lw	$a1,0($s6)
    jalr	$t9
    addiu	$a0,$sp,8
    b	.L0f0bbb50
    # Line 146
    la	$t9,gethostbyname
.L0f0bbebc:
    # Line 147
    la	$t9,strcpy
    lw	$a1,0($s6)
    jalr	$t9
    addiu	$a0,$sp,264
    b	.L0f0bbb68
    # Line 149
    la	$t9,strcmp
.L0f0bbed4:
    # Line 393
    la	$t9,__GLgl_setdisplay
    jalr	$t9
    move	$a0,$s5
    b	.L0f0bbc9c
    sw	$v0,0($sp)
.L0f0bbee8:
    # Line 186
    la	$t9,strcpy
    move	$a1,$s5
    jalr	$t9
    addiu	$a0,$sp,784
    b	.L0f0bb704
    # Line 187
    la	$t9,strchr
.L0f0bbf00:
    # Line 278
    la	$t9,gl_dgl_perror
    jalr	$t9
    addiu	$a0,$s2,792
    # Line 279
    la	$at,errno
    lw	$at,0($at)
    b	.L0f0bb910
    sw	$at,0($sp)
.L0f0bbf1c:
    # Line 154
    addiu	$a1,$s2,344
    li	$a0,1
    la	$t9,gl_dgl_info
    # Line 153
    li	$s0,1
    li	$v0,1
    # Line 154
    jalr	$t9
    # Line 153
    sw	$v0,4($s1)
    b	.L0f0bb688
    addiu	$a0,$gp,-15168
.L0f0bbf40:
    # Line 397
    jalr	$t9
    li	$a0,1
    b	.L0f0bbca4
    nop
.L0f0bbf50:
    # Line 407
    la	$t9,sub_0f0c0000
    addiu	$t9,$t9,-14792
    bal gl_dgl_default_display
    nop
    sltiu	$at,$v0,1
    bnez	$v0,.L0f0bbcb8
    sw	$at,0($sp)
    ld	$v1,1200($sp)
    li	$a4,5
    beq	$v1,$a4,.L0f0bbfe8
    # Line 412
    la	$t9,gl_dgl_error
    addiu	$a1,$s2,1048
    addiu	$a0,$gp,-15168
    jalr	$t9
    addiu	$a0,$a0,88
    ld	$s2,1256($sp)
.L0f0bbf90:
    # Line 413
    li	$a4,3
    b	.L0f0bbcb8
    sw	$a4,0($sp)
.L0f0bbf9c:
    # Line 362
    la	$t9,gl_comm_pushbuffer
    jalr	$t9
    nop
    # Line 364
    la	$t9,gl_d_dglversion
    bal gl_d_dglversion
    li	$a0,2
    beqz	$v0,.L0f0bbbd8
    sw	$v0,0($sp)
    # Line 368
    la	$t9,gl_d_dglversion
    bal gl_d_dglversion
    li	$a0,1
    # Line 378
    beqz	$v0,.L0f0bbc3c
    # Line 368
    sw	$v0,0($sp)
    # Line 379
    la	$t9,gl_dgl_error
.L0f0bbfd4:
    addiu	$a1,$s2,952
    jalr	$t9
    addiu	$a0,$s2,936
    b	.L0f0bb928
    # Line 430
    lw	$a0,12($s1)
.L0f0bbfe8:
    # Line 410
    la	$t9,gl_dgl_error
    addiu	$a1,$s2,1024
    addiu	$a0,$gp,-15168
    jalr	$t9
    addiu	$a0,$a0,80
    b	.L0f0bbf90
    ld	$s2,1256($sp)
.end __GLdglopen

# Function: gl_strstr
# Declared: Line 437 (Source lines: 442-463)
# Address: 0x0f0bc004 - 0x0f0bc0bc (Size: 184 bytes, Frame: 0)
.globl gl_strstr
.ent gl_strstr
gl_strstr:
    # Line 442
    beqz	$a0,.L0f0bc09c
    nop
    beqz	$a1,.L0f0bc09c
    nop
    # Line 443
    lbu	$v0,0($a0)
    beqz	$v0,.L0f0bc094
    nop
    b	.L0f0bc034
    lbu	$a7,0($a1)
.L0f0bc028:
    # Line 461
    lbu	$v0,0($a0)
    beqz	$v0,.L0f0bc094
    nop
.L0f0bc034:
    # Line 443
    bnel	$v0,$a7,.L0f0bc028
    # Line 461
    addiu	$a0,$a0,1
    # Line 448
    lbu	$at,1($a1)
    addiu	$a5,$a1,1
    beqz	$at,.L0f0bc0a4
    # Line 447
    addiu	$v0,$a0,1
    # Line 448
    lbu	$v1,1($a0)
    beqz	$v1,.L0f0bc0b4
    nop
    # Line 449
    lbu	$a4,0($a5)
    lbu	$a6,0($v0)
.L0f0bc060:
    bne	$a6,$a4,.L0f0bc084
    nop
    # Line 450
    lbu	$a4,1($a5)
    # Line 451
    addiu	$v0,$v0,1
    # Line 450
    beqz	$a4,.L0f0bc0ac
    # Line 452
    addiu	$a5,$a5,1
    # Line 454
    lbu	$a6,0($v0)
    bnez	$a6,.L0f0bc060
    nop
.L0f0bc084:
    # Line 456
    beqz	$a4,.L0f0bc0ac
    nop
    # Line 459
    b	.L0f0bc028
    addiu	$a0,$a0,1
.L0f0bc094:
    # Line 463
    jr	$ra
    move	$v0,$zero
.L0f0bc09c:
    # Line 443
    jr	$ra
    move	$v0,$zero
.L0f0bc0a4:
    b	.L0f0bc084
    # Line 450
    lbu	$a4,0($a5)
.L0f0bc0ac:
    # Line 457
    jr	$ra
    move	$v0,$a0
.L0f0bc0b4:
    b	.L0f0bc084
    # Line 450
    lbu	$a4,0($a5)
.end gl_strstr

# Function: __GLdglope
# Declared: Line 470 (Source lines: 473-478)
# Address: 0x0f0bc0bc - 0x0f0bc128 (Size: 108 bytes, Frame: 192)
.globl __GLdglope
.ent __GLdglope
__GLdglope:
    # Line 473
    move	$at,$a0
    addiu	$sp,$sp,-576
    # Line 476
    addiu	$a0,$sp,0
    sd	$s8,520($sp)
    # Line 473
    move	$s8,$a1
    sd	$a2,536($sp)
    sd	$gp,528($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,29068 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 476
    la	$t9,strncpy
    move	$a2,$a1
    sd	$ra,512($sp)
    jalr	$t9
    move	$a1,$at
    ld	$a1,536($sp)
    # Line 478
    addiu	$a0,$sp,0
    la	$t9,__GLdglopen
    # Line 477
    addiu	$v1,$sp,0
    addu	$v1,$s8,$v1
    # Line 478
    jalr	$t9
    # Line 477
    sb	$zero,0($v1)
    # Line 478
    ld	$ra,512($sp)
    ld	$gp,528($sp)
    ld	$s8,520($sp)
    jr	$ra
    addiu	$sp,$sp,576
.end __GLdglope

# Function: __GLdglclose
# Declared: Line 485 (Source lines: 487-500)
# Address: 0x0f0bc128 - 0x0f0bc1d0 (Size: 168 bytes, Frame: 32)
.globl __GLdglclose
.ent __GLdglclose
__GLdglclose:
    # Line 487
    move	$a2,$a0
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    lui	$at,0xfff7
    addiu	$at,$at,28960
    bltz	$a0,.L0f0bc1ac
    nop	# was addu	$gp,$t9,$at ($gp setup in delay)
    # Line 492
    slti	$v0,$a2,257
    beqz	$v0,.L0f0bc184
    # Line 495
    sll	$a0,$a2,0x2
    la	$a1,comm_gfiles
    addu	$a0,$a0,$a1
    lw	$a0,0($a0)
    bnez	$a0,.L0f0bc190
    sd	$ra,8($sp)
.L0f0bc164:
    # Line 497
    la	$a0,sub_0f020000
    la	$t9,gl_dgl_error
    addiu	$a0,$a0,31232
    addiu	$a1,$a0,1096
    jalr	$t9
    addiu	$a0,$a0,1080
    b	.L0f0bc1a0
    ld	$ra,8($sp)
.L0f0bc184:
    # Line 495
    move	$a0,$zero
    b	.L0f0bc164
    sd	$ra,8($sp)
.L0f0bc190:
    # Line 498
    la	$t9,gl_comm_close_gfile
    jalr	$t9
    li	$a1,1
    ld	$ra,8($sp)
.L0f0bc1a0:
    ld	$gp,0($sp)
    # Line 500
    jr	$ra
    addiu	$sp,$sp,32
.L0f0bc1ac:
    # Line 491
    la	$t9,gl_comm_flush
    sd	$ra,8($sp)
    jalr	$t9
    nop
    # Line 492
    la	$t9,gl_comm_close
    jalr	$t9
    li	$a0,1
    b	.L0f0bc1a0
    ld	$ra,8($sp)
.end __GLdglclose

# Function: gl_g_gl_setdisplay
# Declared: Line 508 (Source lines: 513-532)
# Address: 0x0f0bc1d0 - 0x0f0bc224 (Size: 84 bytes, Frame: 48)
.globl gl_g_gl_setdisplay
.ent gl_g_gl_setdisplay
gl_g_gl_setdisplay:
    # Line 513
    move	$a1,$a0
    addiu	$sp,$sp,-48
    sd	$gp,16($sp)
    # lui	v0,0xfff7 (gp disp hi)
    # addiu	v0,v0,28792 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 517
    la	$t9,strcpy
    # Line 513
    la	$at,gl_curdname
    sd	$ra,8($sp)
    # Line 517
    jalr	$t9
    move	$a0,$at
    # Line 531
    la	$t9,gl_parse_hostname
    la	$a0,gl_curdname
    la	$a2,gl_selected_scrn
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 532
    ld	$ra,8($sp)
    move	$v0,$zero
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_g_gl_setdisplay

# Function: gl_dgl_default_display
# Declared: Line 540 (Source lines: 542-569)
# Address: 0x0f0bc224 - 0x0f0bc35c (Size: 312 bytes, Frame: 48)
.globl gl_dgl_default_display
.ent gl_dgl_default_display
gl_dgl_default_display:
    # Line 545
    sb	$zero,0($a0)
    # Line 542
    addiu	$sp,$sp,-48
    sd	$s0,16($sp)
    sd	$ra,8($sp)
    sd	$s1,0($sp)
    sd	$gp,24($sp)
    lui	$a1,0xfff7
    addiu	$a1,$a1,28708
    addu	$gp,$t9,$a1
    # Line 547
    la	$t9,getenv
    # Line 542
    move	$s1,$a0
    addiu	$a0,$gp,-15168
    # Line 547
    jalr	$t9
    addiu	$a0,$a0,120
    bnez	$v0,.L0f0bc2e0
    move	$s0,$v0
    # Line 549
    la	$a0,sub_0f020000
    la	$t9,getenv
    addiu	$a0,$a0,31232
    jalr	$t9
    addiu	$a0,$a0,1128
    bnez	$v0,.L0f0bc31c
    move	$s0,$v0
    la	$a0,sub_0f020000
    # Line 551
    la	$t9,getenv
    addiu	$a0,$a0,31232
    jalr	$t9
    addiu	$a0,$a0,1144
    beqz	$v0,.L0f0bc304
    move	$s0,$v0
    la	$a0,sub_0f020000
    # Line 553
    la	$t9,getenv
    addiu	$a0,$a0,31232
    jalr	$t9
    addiu	$a0,$a0,1160
    beqz	$v0,.L0f0bc300
    # Line 555
    la	$t9,strcat
    move	$a0,$s1
    jalr	$t9
    move	$a1,$v0
    # Line 556
    la	$t9,strcat
    move	$a0,$s1
    addiu	$a1,$gp,-15168
    jalr	$t9
    addiu	$a1,$a1,128
    b	.L0f0bc300
    nop
.L0f0bc2e0:
    # Line 561
    move	$a0,$v0
    la	$t9,strncmp
    li	$a2,4
    addiu	$a1,$gp,-15168
    jalr	$t9
    addiu	$a1,$a1,136
    beqz	$v0,.L0f0bc354
    nop
.L0f0bc300:
    # Line 562
    bnez	$s0,.L0f0bc31c
.L0f0bc304:
    # Line 565
    la	$t9,gethostname
    move	$a0,$s1
    jalr	$t9
    li	$a1,256
    b	.L0f0bc32c
    nop
.L0f0bc31c:
    # Line 567
    la	$t9,strcat
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
.L0f0bc32c:
    # Line 568
    la	$t9,gl_util_lowcase
    jalr	$t9
    move	$a0,$s1
    ld	$ra,8($sp)
    ld	$s1,0($sp)
    # Line 569
    move	$v0,$s0
    ld	$s0,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0f0bc354:
    b	.L0f0bc300
    # Line 562
    addiu	$s0,$s0,3
.end gl_dgl_default_display

# Function: parse_display
# Declared: Line 584 (Source lines: 588-665)
# Address: 0x0f0bc35c - 0x0f0bc638 (Size: 732 bytes, Frame: 160)
.ent parse_display
parse_display:
    # Line 594
    sb	$zero,0($a2)
    # Line 588
    addiu	$sp,$sp,-160
    sd	$s0,48($sp)
    move	$s0,$a0
    sd	$a1,32($sp)
    sd	$s1,40($sp)
    move	$s1,$a2
    sd	$s4,56($sp)
    move	$s4,$a3
    sd	$a4,24($sp)
    sd	$a5,16($sp)
    sd	$s3,64($sp)
    move	$s3,$a6
    # Line 595
    beqz	$a5,.L0f0bc3a0
    sb	$zero,0($a1)
    ld	$at,16($sp)
    # Line 596
    sw	$zero,0($at)
.L0f0bc3a0:
    beqzl	$s3,.L0f0bc3b4
    sd	$s2,80($sp)
    sd	$ra,72($sp)
    # Line 597
    sw	$zero,0($s3)
    sd	$s2,80($sp)
.L0f0bc3b4:
    # Line 602
    la	$t9,strchr
    move	$a0,$s0
    sd	$ra,72($sp)
    jalr	$t9
    li	$a1,64
    bnez	$v0,.L0f0bc574
    move	$s2,$v0
.L0f0bc3d0:
    # Line 611
    la	$t9,strcmp
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$gp,-15024
    beqz	$v0,.L0f0bc5a4
    # Line 617
    li	$a1,58
.L0f0bc3e8:
    lbu	$v0,0($s0)
    move	$a0,$s1
    beqz	$v0,.L0f0bc458
    # Line 618
    li	$a2,59
    # Line 617
    beql	$a1,$v0,.L0f0bc45c
    # Line 620
    sb	$zero,0($a0)
    # Line 618
    beql	$a2,$v0,.L0f0bc45c
    # Line 620
    sb	$zero,0($a0)
    # Line 619
    lbu	$v0,0($s0)
.L0f0bc40c:
    sb	$v0,0($a0)
    lbu	$v0,1($s0)
    addiu	$a0,$a0,1
    beqz	$v0,.L0f0bc458
    addiu	$s0,$s0,1
    beq	$a1,$v0,.L0f0bc458
    nop
    beq	$a2,$v0,.L0f0bc458
    nop
    lbu	$v1,0($s0)
    sb	$v1,0($a0)
    lbu	$v0,1($s0)
    addiu	$a0,$a0,1
    beqz	$v0,.L0f0bc458
    addiu	$s0,$s0,1
    beq	$a1,$v0,.L0f0bc458
    nop
    bnel	$a2,$v0,.L0f0bc40c
    lbu	$v0,0($s0)
.L0f0bc458:
    # Line 620
    sb	$zero,0($a0)
.L0f0bc45c:
    lbu	$a7,0($s0)
    beq	$a7,$a1,.L0f0bc5ac
.L0f0bc464:
    # Line 636
    la	$t9,strchr
.L0f0bc468:
    move	$a0,$s0
    jalr	$t9
    li	$a1,35
    move	$s2,$v0
    beqz	$v0,.L0f0bc48c
    ld	$ra,72($sp)
    # Line 637
    ld	$t0,24($sp)
    bnez	$t0,.L0f0bc5ec
    sb	$zero,0($s2)
.L0f0bc48c:
    # Line 638
    lbu	$v0,0($s1)
    sltiu	$at,$v0,48
    bnez	$at,.L0f0bc500
    ld	$s2,80($sp)
    sltiu	$v1,$v0,58
    beqz	$v1,.L0f0bc500
    nop
    # Line 647
    bnez	$s4,.L0f0bc4b8
    # Line 651
    la	$t9,gl_inet_addr
    # Line 650
    addiu	$s4,$sp,0
    # Line 651
    la	$t9,gl_inet_addr
.L0f0bc4b8:
    jalr	$t9
    move	$a0,$s1
    # Line 652
    li	$a2,2
    la	$t9,gethostbyaddr
    li	$a1,4
    move	$a0,$s4
    jalr	$t9
    # Line 651
    sw	$v0,0($s4)
    # Line 652
    sw	$v0,-20820($gp)
    bnez	$v0,.L0f0bc608
    ld	$ra,72($sp)
    # Line 654
    li	$v0,1
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0bc500:
    # Line 653
    beqz	$s4,.L0f0bc55c
    # Line 665
    move	$v0,$zero
    # Line 658
    la	$t9,gethostbyname
    jalr	$t9
    move	$a0,$s1
    sw	$v0,-20820($gp)
    bnez	$v0,.L0f0bc53c
    ld	$ra,72($sp)
    # Line 660
    li	$v0,2
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0bc53c:
    # Line 662
    lw	$a2,12($v0)
    la	$t9,bcopy
    lw	$a0,16($v0)
    move	$a1,$s4
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,72($sp)
.L0f0bc558:
    # Line 665
    move	$v0,$zero
.L0f0bc55c:
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    ld	$s3,64($sp)
    ld	$s4,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0f0bc574:
    # Line 603
    ld	$a0,32($sp)
    la	$t9,strncpy
    move	$a1,$s0
    subu	$a2,$s2,$s0
    jalr	$t9
    sd	$a2,8($sp)
    # Line 605
    addiu	$s0,$s2,1
    # Line 604
    ld	$t0,32($sp)
    ld	$a7,8($sp)
    addu	$a7,$a7,$t0
    b	.L0f0bc3d0
    sb	$zero,0($a7)
.L0f0bc5a4:
    b	.L0f0bc3e8
    # Line 612
    addiu	$s0,$s0,3
.L0f0bc5ac:
    # Line 620
    ld	$at,16($sp)
    bnez	$at,.L0f0bc620
    addiu	$s2,$s0,1
.L0f0bc5b8:
    # Line 628
    la	$t9,strchr
    move	$a0,$s2
    jalr	$t9
    li	$a1,46
    beqz	$v0,.L0f0bc464
    move	$s2,$v0
    beqz	$s3,.L0f0bc468
    # Line 636
    la	$t9,strchr
    # Line 630
    la	$t9,atoi
    jalr	$t9
    addiu	$a0,$s2,1
    b	.L0f0bc464
    sw	$v0,0($s3)
.L0f0bc5ec:
    # Line 638
    la	$t9,atoi
    jalr	$t9
    addiu	$a0,$s2,1
    ld	$v1,24($sp)
    ld	$ra,72($sp)
    b	.L0f0bc48c
    sw	$v0,0($v1)
.L0f0bc608:
    # Line 655
    la	$t9,strcpy
    move	$a0,$s1
    jalr	$t9
    lw	$a1,0($v0)
    b	.L0f0bc558
    ld	$ra,72($sp)
.L0f0bc620:
    # Line 627
    la	$t9,atoi
    jalr	$t9
    move	$a0,$s2
    ld	$a7,16($sp)
    b	.L0f0bc5b8
    sw	$v0,0($a7)
.end parse_display

# Function: win_sys_running
# Declared: Line 672 (Source lines: 673-674)
# Address: 0x0f0bc638 - 0x0f0bc658 (Size: 32 bytes, Frame: 16)
.ent win_sys_running
win_sys_running:
    # Line 674
    la	$t9,gl_d_ismex
    # Line 673
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 674
    jalr	$t9
    nop
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end win_sys_running

