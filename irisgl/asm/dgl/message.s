# Source: ../dgl/message.c
# Category: dgl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -D_GL_PROTOTYPES -DGLBUILD -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -I. -I../dgl -I../xext.shlib/include -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../dgl/message.c -o message.T
# Total Functions: 12

.text

# Function: gl_dgl_max
# Declared: Line 44 (Source lines: 46-47)
# Address: 0x0f0e2df8 - 0x0f0e2e10 (Size: 24 bytes, Frame: 0)
.globl gl_dgl_max
.ent gl_dgl_max
gl_dgl_max:
    # Line 46
    slt	$at,$a1,$a0
    bnez	$at,.L0f0e2e08
    # Line 47
    move	$v0,$a0
    move	$v0,$a1
.L0f0e2e08:
    jr	$ra
    nop
.end gl_dgl_max

# Function: dgl_init_msgfile
# Declared: Line 54 (Source lines: 55-60)
# Address: 0x0f0e2e10 - 0x0f0e2e4c (Size: 60 bytes, Frame: 16)
.ent dgl_init_msgfile
dgl_init_msgfile:
    # Line 55
    lw	$at,-20732($gp)
    beqz	$at,.L0f0e2e24
    addiu	$sp,$sp,-16
.L0f0e2e1c:
    # Line 60
    jr	$ra
    addiu	$sp,$sp,16
.L0f0e2e24:
    # Line 57
    la	$t9,sub_0f0e0000
    sd	$ra,0($sp)
    la	$a0,__iob
    addiu	$t9,$t9,11852
    bal gl_dgl_max
    addiu	$a0,$a0,32
    # Line 58
    li	$ra,1
    sw	$ra,-20732($gp)
    b	.L0f0e2e1c
    ld	$ra,0($sp)
.end dgl_init_msgfile

# Function: dgl_force_msgfile
# Declared: Line 62 (Source lines: 64-67)
# Address: 0x0f0e2e4c - 0x0f0e2e84 (Size: 56 bytes, Frame: 32)
.ent dgl_force_msgfile
dgl_force_msgfile:
    # Line 64
    lw	$at,-20728($gp)
    beqz	$at,.L0f0e2e74
    addiu	$sp,$sp,-32
    # Line 65
    la	$t9,gl_dgl_internal_error
    la	$a0,sub_0f030000
    sd	$ra,0($sp)
    bal gl_dgl_internal_error
    addiu	$a0,$a0,-28768
    b	.L0f0e2e78
    ld	$ra,0($sp)
.L0f0e2e74:
    # Line 66
    sw	$a0,-20728($gp)
.L0f0e2e78:
    # Line 67
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end dgl_force_msgfile

# Function: dgl_log_printf
# Declared: Line 109 (Source lines: 113-129)
# Address: 0x0f0e2e84 - 0x0f0e2ec8 (Size: 68 bytes, Frame: 192)
.ent dgl_log_printf
dgl_log_printf:
    # Line 113
    addiu	$sp,$sp,-64
    # Line 116
    la	$t9,sub_0f0e0000
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    addiu	$t9,$t9,11792
    bal gl_dgl_max
    sd	$a1,16($sp)
    lw	$a2,-20728($gp)
    beqz	$a2,.L0f0e2ec0
    ld	$ra,0($sp)
    # Line 118
    la	$t9,gl_dgl_doprnt
    ld	$a0,8($sp)
    bal gl_dgl_doprnt
    ld	$a1,16($sp)
    ld	$ra,0($sp)
.L0f0e2ec0:
    # Line 129
    jr	$ra
    addiu	$sp,$sp,64
.end dgl_log_printf

# Function: gl_dgl_doprnt
# Declared: Line 132 (Source lines: 136-139)
# Address: 0x0f0e2ec8 - 0x0f0e2f0c (Size: 68 bytes, Frame: 48)
.globl gl_dgl_doprnt
.ent gl_dgl_doprnt
gl_dgl_doprnt:
    # Line 136
    move	$at,$a0
    move	$a0,$a2
    addiu	$sp,$sp,-48
    sd	$gp,8($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,896 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    # Line 137
    la	$t9,vfprintf
    # Line 136
    move	$a2,$a1
    sd	$ra,0($sp)
    # Line 137
    jalr	$t9
    move	$a1,$at
    # Line 139
    ld	$ra,0($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end gl_dgl_doprnt

# Function: __GLgl_dgl_printf
# Declared: Line 151 (Source lines: 153-158)
# Address: 0x0f0e2f0c - 0x0f0e2f68 (Size: 92 bytes, Frame: 208)
.globl __GLgl_dgl_printf
.ent __GLgl_dgl_printf
__GLgl_dgl_printf:
    # Line 153
    addiu	$sp,$sp,-80
    sd	$a2,32($sp)
    # Line 157
    li	$a2,6
    # Line 153
    sd	$a1,24($sp)
    # Line 157
    addiu	$a1,$sp,24
    # Line 153
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,828
    addu	$gp,$t9,$ra
    # Line 157
    la	$t9,sub_0f0e0000
    # Line 153
    sd	$a4,48($sp)
    sd	$a3,40($sp)
    # Line 157
    addiu	$t9,$t9,11908
    bal gl_dgl_max
    # Line 153
    sw	$a0,20($sp)
    # Line 158
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __GLgl_dgl_printf

# Function: gl_dgl_info
# Declared: Line 164 (Source lines: 167-176)
# Address: 0x0f0e2f68 - 0x0f0e3020 (Size: 184 bytes, Frame: 224)
.globl gl_dgl_info
.ent gl_dgl_info
gl_dgl_info:
    # Line 167
    move	$t1,$a0
    addiu	$sp,$sp,-4192
    sd	$a7,4184($sp)
    sd	$a6,4176($sp)
    sd	$a5,4168($sp)
    sd	$a4,4160($sp)
    sd	$gp,4104($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,736 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,dgl_debug
    sd	$a3,4152($sp)
    sd	$a2,4144($sp)
    lw	$at,0($at)
    sd	$a1,4096($sp)
    sw	$a1,4140($sp)
    slt	$at,$at,$a0
    beqz	$at,.L0f0e2fc4
    sw	$a0,4132($sp)
    # Line 171
    move	$v0,$zero
    ld	$gp,4104($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.L0f0e2fc4:
    # Line 173
    move	$a3,$t1
    lw	$a2,-14736($gp)
    addiu	$a0,$sp,0
    la	$t9,sprintf
    la	$a1,sub_0f030000
    sd	$ra,4112($sp)
    jalr	$t9
    addiu	$a1,$a1,-28728
    # Line 174
    la	$t9,strcat
    ld	$a1,4096($sp)
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 175
    la	$t9,sub_0f0e0000
    li	$a2,6
    addiu	$a1,$sp,4144
    addiu	$t9,$t9,11908
    bal gl_dgl_max
    addiu	$a0,$sp,0
    # Line 176
    ld	$ra,4112($sp)
    li	$v0,1
    ld	$gp,4104($sp)
    jr	$ra
    addiu	$sp,$sp,4192
.end gl_dgl_info

# Function: gl_dgl_info_more
# Declared: Line 182 (Source lines: 185-191)
# Address: 0x0f0e3020 - 0x0f0e30a8 (Size: 136 bytes, Frame: 208)
.globl gl_dgl_info_more
.ent gl_dgl_info_more
gl_dgl_info_more:
    # Line 185
    move	$t1,$a1
    addiu	$sp,$sp,-80
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    sd	$gp,0($sp)
    # lui	v0,0xfff5 (gp disp hi)
    # addiu	v0,v0,552 (gp disp lo)
    # addu	gp,t9,v0 (gp setup)
    la	$at,dgl_debug
    sd	$a4,48($sp)
    sd	$a3,40($sp)
    lw	$at,0($at)
    sd	$a2,32($sp)
    sw	$a0,20($sp)
    slt	$at,$at,$a0
    beqz	$at,.L0f0e3078
    sw	$a1,28($sp)
    # Line 188
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0f0e3078:
    # Line 190
    move	$a0,$t1
    la	$t9,sub_0f0e0000
    li	$a2,6
    sd	$ra,8($sp)
    addiu	$t9,$t9,11908
    bal gl_dgl_max
    addiu	$a1,$sp,32
    # Line 191
    ld	$ra,8($sp)
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_dgl_info_more

# Function: dgl_do_error
# Declared: Line 198 (Source lines: 201-208)
# Address: 0x0f0e30a8 - 0x0f0e3120 (Size: 120 bytes, Frame: 192)
.ent dgl_do_error
dgl_do_error:
    # Line 201
    move	$a3,$a0
    addiu	$sp,$sp,-4160
    sd	$a2,4112($sp)
    # Line 204
    lw	$a2,-14736($gp)
    addiu	$a0,$sp,0
    la	$t9,sprintf
    sd	$s8,4104($sp)
    # Line 201
    move	$s8,$a1
    # Line 204
    la	$a1,sub_0f030000
    sd	$ra,4096($sp)
    jalr	$t9
    addiu	$a1,$a1,-28712
    # Line 205
    la	$t9,strcat
    move	$a1,$s8
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 206
    li	$a2,3
    la	$t9,sub_0f0e0000
    ld	$a1,4112($sp)
    addiu	$a0,$sp,0
    addiu	$t9,$t9,11908
    bal gl_dgl_max
    ld	$s8,4104($sp)
    # Line 207
    la	$at,dgl_errors
    lw	$ra,0($at)
    addiu	$ra,$ra,1
    sw	$ra,0($at)
    # Line 208
    ld	$ra,4096($sp)
    jr	$ra
    addiu	$sp,$sp,4160
.end dgl_do_error

# Function: gl_dgl_error
# Declared: Line 214 (Source lines: 216-221)
# Address: 0x0f0e3120 - 0x0f0e3178 (Size: 88 bytes, Frame: 208)
.globl gl_dgl_error
.ent gl_dgl_error
gl_dgl_error:
    # Line 216
    addiu	$sp,$sp,-80
    sd	$a2,32($sp)
    # Line 220
    addiu	$a2,$sp,32
    # Line 216
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    sd	$a4,48($sp)
    sd	$gp,8($sp)
    sd	$ra,0($sp)
    lui	$ra,0xfff5
    addiu	$ra,$ra,296
    addu	$gp,$t9,$ra
    # Line 220
    la	$t9,sub_0f0e0000
    # Line 216
    sd	$a3,40($sp)
    sw	$a1,28($sp)
    # Line 220
    addiu	$t9,$t9,12456
    bal gl_dgl_info_more
    # Line 216
    sw	$a0,20($sp)
    # Line 221
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_dgl_error

# Function: gl_dgl_internal_error
# Declared: Line 226 (Source lines: 228-233)
# Address: 0x0f0e3178 - 0x0f0e31e4 (Size: 108 bytes, Frame: 208)
.globl gl_dgl_internal_error
.ent gl_dgl_internal_error
gl_dgl_internal_error:
    # Line 228
    addiu	$sp,$sp,-80
    sd	$a2,32($sp)
    # Line 232
    addiu	$a2,$sp,24
    # Line 228
    sd	$a7,72($sp)
    sd	$a6,64($sp)
    sd	$a5,56($sp)
    sd	$a4,48($sp)
    sd	$a3,40($sp)
    sd	$ra,0($sp)
    move	$ra,$a0
    sd	$a1,24($sp)
    # Line 232
    move	$a1,$a0
    sd	$gp,8($sp)
    # Line 228
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,208 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    # Line 232
    la	$t9,sub_0f0e0000
    # Line 228
    sw	$a0,20($sp)
    # Line 232
    la	$a0,sub_0f030000
    addiu	$t9,$t9,12456
    bal gl_dgl_info_more
    addiu	$a0,$a0,-28696
    # Line 233
    ld	$ra,0($sp)
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end gl_dgl_internal_error

# Function: gl_dgl_perror
# Declared: Line 239 (Source lines: 241-260)
# Address: 0x0f0e31e4 - 0x0f0e3268 (Size: 132 bytes, Frame: 32)
.globl gl_dgl_perror
.ent gl_dgl_perror
gl_dgl_perror:
    # Line 241
    addiu	$sp,$sp,-32
    sd	$gp,0($sp)
    # lui	at,0xfff5 (gp disp hi)
    # addiu	at,at,100 (gp disp lo)
    # addu	gp,t9,at (gp setup)
    la	$a4,errno
    lw	$a4,0($a4)
    la	$v0,sys_nerr
    blez	$a4,.L0f0e323c
    lw	$v0,0($v0)
    slt	$v0,$a4,$v0
    beqz	$v0,.L0f0e323c
    sd	$ra,8($sp)
    # Line 257
    addiu	$a1,$gp,-14728
    la	$a3,sys_errlist
    la	$t9,gl_dgl_error
    sll	$a2,$a4,0x2
    addu	$a2,$a2,$a3
    bal gl_dgl_error
    lw	$a2,0($a2)
    b	.L0f0e3258
    ld	$ra,8($sp)
.L0f0e323c:
    # Line 258
    move	$a2,$a4
    la	$t9,gl_dgl_error
    la	$a1,sub_0f030000
    sd	$ra,8($sp)
    bal gl_dgl_error
    addiu	$a1,$a1,-28680
    ld	$ra,8($sp)
.L0f0e3258:
    # Line 260
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end gl_dgl_perror

