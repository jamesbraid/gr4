# Source: g_lcompex.c
# Category: gl
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_lcompex.c
# Total Functions: 505

.text

# Function: __glce_NewList
# Declared: Line 34 (Source lines: 35-43)
# Address: 0x0dbc3060 - 0x0dbc30ac (Size: 76 bytes, Frame: 48)
.globl __glce_NewList
.ent __glce_NewList
__glce_NewList:
    # Line 35
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 39
    lw	$s8,4168($zero)
    sd	$gp,16($sp)
    # Line 40
    lw	$at,__glCurrentContext
    # Line 35
    lui	$v0,0x4
    addiu	$v0,$v0,-18888
    addu	$gp,$t9,$v0
    # Line 41
    # lw $t9, -17704($gp) # &glNewList
    # Line 40
    lw	$at,9768($at)
    sd	$ra,0($sp)
    # Line 41
    jal	glNewList
    # Line 40
    sw	$at,4168($zero)
    ld	$gp,16($sp)
    # Line 43
    ld	$ra,0($sp)
    # Line 42
    sw	$s8,4168($zero)
    # Line 43
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_NewList

# Function: __glce_DeleteLists
# Declared: Line 51 (Source lines: 52-60)
# Address: 0x0dbc30ac - 0x0dbc30f8 (Size: 76 bytes, Frame: 48)
.globl __glce_DeleteLists
.ent __glce_DeleteLists
__glce_DeleteLists:
    # Line 52
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 56
    lw	$s8,4184($zero)
    sd	$gp,16($sp)
    # Line 57
    lw	$at,__glCurrentContext
    # Line 52
    lui	$v0,0x4
    addiu	$v0,$v0,-18964
    addu	$gp,$t9,$v0
    # Line 58
    # lw $t9, -17688($gp) # &glDeleteLists
    # Line 57
    lw	$at,9784($at)
    sd	$ra,0($sp)
    # Line 58
    jal	glDeleteLists
    # Line 57
    sw	$at,4184($zero)
    ld	$gp,16($sp)
    # Line 60
    ld	$ra,0($sp)
    # Line 59
    sw	$s8,4184($zero)
    # Line 60
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_DeleteLists

# Function: __glce_GenLists
# Declared: Line 65 (Source lines: 66-75)
# Address: 0x0dbc30f8 - 0x0dbc3144 (Size: 76 bytes, Frame: 48)
.globl __glce_GenLists
.ent __glce_GenLists
__glce_GenLists:
    # Line 66
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 71
    lw	$s8,4188($zero)
    sd	$gp,16($sp)
    # Line 72
    lw	$at,__glCurrentContext
    # Line 66
    lui	$v0,0x4
    addiu	$v0,$v0,-19040
    addu	$gp,$t9,$v0
    # Line 73
    # lw $t9, -17684($gp) # &glGenLists
    # Line 72
    lw	$at,9788($at)
    sd	$ra,0($sp)
    # Line 73
    jal	glGenLists
    # Line 72
    sw	$at,4188($zero)
    ld	$gp,16($sp)
    # Line 75
    ld	$ra,0($sp)
    # Line 74
    sw	$s8,4188($zero)
    # Line 75
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GenLists

# Function: __glce_ListBase
# Declared: Line 81 (Source lines: 82-92)
# Address: 0x0dbc3144 - 0x0dbc31b8 (Size: 116 bytes, Frame: 192)
.globl __glce_ListBase
.ent __glce_ListBase
__glce_ListBase:
    # Line 82
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 84
    lw	$at,__glCurrentContext
    # Line 82
    lui	$v0,0x4
    addiu	$v0,$v0,-19116
    addu	$gp,$t9,$v0
    # Line 86
    lw	$v0,4192($zero)
    # Line 88
    # lw $t9, -17680($gp) # &glListBase
    sd	$at,32($sp)
    # Line 87
    lw	$at,5672($at)
    sd	$v0,24($sp)
    # Line 88
    jal	glListBase
    # Line 87
    sw	$at,4192($zero)
    # Line 89
    ld	$v1,32($sp)
    # Line 90
    # lw $t9, -17680($gp) # &glListBase
    # Line 89
    lw	$v1,9792($v1)
    # Line 90
    move	$a0,$s8
    jal	glListBase
    # Line 89
    sw	$v1,4192($zero)
    ld	$gp,16($sp)
    # Line 92
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 91
    sw	$a0,4192($zero)
.end __glce_ListBase

# Function: __glce_Begin
# Declared: Line 97 (Source lines: 98-108)
# Address: 0x0dbc31b8 - 0x0dbc322c (Size: 116 bytes, Frame: 192)
.globl __glce_Begin
.ent __glce_Begin
__glce_Begin:
    # Line 98
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 100
    lw	$at,__glCurrentContext
    # Line 98
    lui	$v0,0x4
    addiu	$v0,$v0,-19232
    addu	$gp,$t9,$v0
    # Line 102
    lw	$v0,4196($zero)
    # Line 104
    # lw $t9, -17676($gp) # &glBegin
    sd	$at,32($sp)
    # Line 103
    lw	$at,5676($at)
    sd	$v0,24($sp)
    # Line 104
    jal	glBegin
    # Line 103
    sw	$at,4196($zero)
    # Line 105
    ld	$v1,32($sp)
    # Line 106
    # lw $t9, -17676($gp) # &glBegin
    # Line 105
    lw	$v1,9796($v1)
    # Line 106
    move	$a0,$s8
    jal	glBegin
    # Line 105
    sw	$v1,4196($zero)
    ld	$gp,16($sp)
    # Line 108
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 107
    sw	$a0,4196($zero)
.end __glce_Begin

# Function: __glce_Bitmap
# Declared: Line 113 (Source lines: 114-124)
# Address: 0x0dbc322c - 0x0dbc32d8 (Size: 172 bytes, Frame: 160)
.globl __glce_Bitmap
.ent __glce_Bitmap
__glce_Bitmap:
    # Line 114
    addiu	$sp,$sp,-160
    sd	$a6,72($sp)
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$a1,80($sp)
    sd	$s8,40($sp)
    move	$s8,$a0
    sd	$ra,32($sp)
    sd	$gp,48($sp)
    # Line 116
    lw	$at,__glCurrentContext
    # Line 114
    lui	$v0,0x4
    addiu	$v0,$v0,-19348
    addu	$gp,$t9,$v0
    # Line 118
    lw	$v0,4200($zero)
    # Line 120
    # lw $t9, -17672($gp) # &glBitmap
    sd	$at,64($sp)
    # Line 119
    lw	$at,5680($at)
    sd	$v0,56($sp)
    # Line 120
    jal	glBitmap
    # Line 119
    sw	$at,4200($zero)
    ld	$a6,72($sp)
    # Line 122
    ldc1	$f17,8($sp)
    ldc1	$f16,16($sp)
    ldc1	$f15,24($sp)
    mov.s	$f14,$f30
    # Line 121
    ld	$v1,64($sp)
    # Line 122
    ld	$a1,80($sp)
    # lw $t9, -17672($gp) # &glBitmap
    # Line 121
    lw	$v1,9800($v1)
    # Line 122
    move	$a0,$s8
    jal	glBitmap
    # Line 121
    sw	$v1,4200($zero)
    ld	$gp,48($sp)
    # Line 124
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a0,56($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 123
    sw	$a0,4200($zero)
.end __glce_Bitmap

# Function: __glce_Color3b
# Declared: Line 129 (Source lines: 130-140)
# Address: 0x0dbc32d8 - 0x0dbc335c (Size: 132 bytes, Frame: 224)
.globl __glce_Color3b
.ent __glce_Color3b
__glce_Color3b:
    # Line 130
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 132
    lw	$at,__glCurrentContext
    # Line 130
    lui	$v0,0x4
    addiu	$v0,$v0,-19520
    addu	$gp,$t9,$v0
    # Line 134
    lw	$v0,5748($zero)
    # Line 136
    # lw $t9, -17668($gp) # &glColor3b
    sd	$at,32($sp)
    # Line 135
    lw	$at,7228($at)
    sd	$v0,24($sp)
    # Line 136
    jal	glColor3b
    # Line 135
    sw	$at,5748($zero)
    ld	$a2,40($sp)
    # Line 137
    ld	$v1,32($sp)
    # Line 138
    ld	$a1,48($sp)
    # lw $t9, -17668($gp) # &glColor3b
    # Line 137
    lw	$v1,11348($v1)
    # Line 138
    move	$a0,$s8
    jal	glColor3b
    # Line 137
    sw	$v1,5748($zero)
    ld	$gp,16($sp)
    # Line 140
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 139
    sw	$a0,5748($zero)
.end __glce_Color3b

# Function: __glce_Color3bv
# Declared: Line 145 (Source lines: 146-156)
# Address: 0x0dbc335c - 0x0dbc33d0 (Size: 116 bytes, Frame: 192)
.globl __glce_Color3bv
.ent __glce_Color3bv
__glce_Color3bv:
    # Line 146
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 148
    lw	$at,__glCurrentContext
    # Line 146
    lui	$v0,0x4
    addiu	$v0,$v0,-19652
    addu	$gp,$t9,$v0
    # Line 150
    lw	$v0,5752($zero)
    # Line 152
    # lw $t9, -17664($gp) # &glColor3bv
    sd	$at,32($sp)
    # Line 151
    lw	$at,7232($at)
    sd	$v0,24($sp)
    # Line 152
    jal	glColor3bv
    # Line 151
    sw	$at,5752($zero)
    # Line 153
    ld	$v1,32($sp)
    # Line 154
    # lw $t9, -17664($gp) # &glColor3bv
    # Line 153
    lw	$v1,11352($v1)
    # Line 154
    move	$a0,$s8
    jal	glColor3bv
    # Line 153
    sw	$v1,5752($zero)
    ld	$gp,16($sp)
    # Line 156
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 155
    sw	$a0,5752($zero)
.end __glce_Color3bv

# Function: __glce_Color3d
# Declared: Line 161 (Source lines: 162-172)
# Address: 0x0dbc33d0 - 0x0dbc3454 (Size: 132 bytes, Frame: 224)
.globl __glce_Color3d
.ent __glce_Color3d
__glce_Color3d:
    # Line 162
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,24($sp)
    # Line 166
    lw	$v0,5756($zero)
    sd	$gp,40($sp)
    # Line 162
    lui	$v1,0x4
    addiu	$v1,$v1,-19768
    sd	$s8,32($sp)
    # Line 164
    lw	$s8,__glCurrentContext
    # Line 162
    addu	$gp,$t9,$v1
    # Line 168
    # lw $t9, -17660($gp) # &glColor3d
    # Line 167
    lw	$at,7236($s8)
    sd	$v0,48($sp)
    # Line 168
    jal	glColor3d
    # Line 167
    sw	$at,5756($zero)
    ldc1	$f14,8($sp)
    # Line 170
    ldc1	$f13,16($sp)
    # lw $t9, -17660($gp) # &glColor3d
    # Line 169
    lw	$a0,11356($s8)
    # Line 170
    mov.d	$f12,$f30
    jal	glColor3d
    # Line 169
    sw	$a0,5756($zero)
    ld	$gp,40($sp)
    # Line 172
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 171
    sw	$a1,5756($zero)
.end __glce_Color3d

# Function: __glce_Color3dv
# Declared: Line 177 (Source lines: 178-188)
# Address: 0x0dbc3454 - 0x0dbc34c8 (Size: 116 bytes, Frame: 192)
.globl __glce_Color3dv
.ent __glce_Color3dv
__glce_Color3dv:
    # Line 178
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 180
    lw	$at,__glCurrentContext
    # Line 178
    lui	$v0,0x4
    addiu	$v0,$v0,-19900
    addu	$gp,$t9,$v0
    # Line 182
    lw	$v0,5760($zero)
    # Line 184
    # lw $t9, -17656($gp) # &glColor3dv
    sd	$at,32($sp)
    # Line 183
    lw	$at,7240($at)
    sd	$v0,24($sp)
    # Line 184
    jal	glColor3dv
    # Line 183
    sw	$at,5760($zero)
    # Line 185
    ld	$v1,32($sp)
    # Line 186
    # lw $t9, -17656($gp) # &glColor3dv
    # Line 185
    lw	$v1,11360($v1)
    # Line 186
    move	$a0,$s8
    jal	glColor3dv
    # Line 185
    sw	$v1,5760($zero)
    ld	$gp,16($sp)
    # Line 188
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 187
    sw	$a0,5760($zero)
.end __glce_Color3dv

# Function: __glce_Color3f
# Declared: Line 193 (Source lines: 194-204)
# Address: 0x0dbc34c8 - 0x0dbc354c (Size: 132 bytes, Frame: 224)
.globl __glce_Color3f
.ent __glce_Color3f
__glce_Color3f:
    # Line 194
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,24($sp)
    # Line 198
    lw	$v0,5764($zero)
    sd	$gp,40($sp)
    # Line 194
    lui	$v1,0x4
    addiu	$v1,$v1,-20016
    sd	$s8,32($sp)
    # Line 196
    lw	$s8,__glCurrentContext
    # Line 194
    addu	$gp,$t9,$v1
    # Line 200
    # lw $t9, -17652($gp) # &glColor3f
    # Line 199
    lw	$at,7244($s8)
    sd	$v0,48($sp)
    # Line 200
    jal	glColor3f
    # Line 199
    sw	$at,5764($zero)
    ldc1	$f14,8($sp)
    # Line 202
    ldc1	$f13,16($sp)
    # lw $t9, -17652($gp) # &glColor3f
    # Line 201
    lw	$a0,11364($s8)
    # Line 202
    mov.s	$f12,$f30
    jal	glColor3f
    # Line 201
    sw	$a0,5764($zero)
    ld	$gp,40($sp)
    # Line 204
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 203
    sw	$a1,5764($zero)
.end __glce_Color3f

# Function: __glce_Color3fv
# Declared: Line 209 (Source lines: 210-220)
# Address: 0x0dbc354c - 0x0dbc35c0 (Size: 116 bytes, Frame: 192)
.globl __glce_Color3fv
.ent __glce_Color3fv
__glce_Color3fv:
    # Line 210
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 212
    lw	$at,__glCurrentContext
    # Line 210
    lui	$v0,0x4
    addiu	$v0,$v0,-20148
    addu	$gp,$t9,$v0
    # Line 214
    lw	$v0,5768($zero)
    # Line 216
    # lw $t9, -17648($gp) # &glColor3fv
    sd	$at,32($sp)
    # Line 215
    lw	$at,7248($at)
    sd	$v0,24($sp)
    # Line 216
    jal	glColor3fv
    # Line 215
    sw	$at,5768($zero)
    # Line 217
    ld	$v1,32($sp)
    # Line 218
    # lw $t9, -17648($gp) # &glColor3fv
    # Line 217
    lw	$v1,11368($v1)
    # Line 218
    move	$a0,$s8
    jal	glColor3fv
    # Line 217
    sw	$v1,5768($zero)
    ld	$gp,16($sp)
    # Line 220
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 219
    sw	$a0,5768($zero)
.end __glce_Color3fv

# Function: __glce_Color3i
# Declared: Line 225 (Source lines: 226-236)
# Address: 0x0dbc35c0 - 0x0dbc3644 (Size: 132 bytes, Frame: 224)
.globl __glce_Color3i
.ent __glce_Color3i
__glce_Color3i:
    # Line 226
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 228
    lw	$at,__glCurrentContext
    # Line 226
    lui	$v0,0x4
    addiu	$v0,$v0,-20264
    addu	$gp,$t9,$v0
    # Line 230
    lw	$v0,5772($zero)
    # Line 232
    # lw $t9, -17644($gp) # &glColor3i
    sd	$at,32($sp)
    # Line 231
    lw	$at,7252($at)
    sd	$v0,24($sp)
    # Line 232
    jal	glColor3i
    # Line 231
    sw	$at,5772($zero)
    ld	$a2,40($sp)
    # Line 233
    ld	$v1,32($sp)
    # Line 234
    ld	$a1,48($sp)
    # lw $t9, -17644($gp) # &glColor3i
    # Line 233
    lw	$v1,11372($v1)
    # Line 234
    move	$a0,$s8
    jal	glColor3i
    # Line 233
    sw	$v1,5772($zero)
    ld	$gp,16($sp)
    # Line 236
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 235
    sw	$a0,5772($zero)
.end __glce_Color3i

# Function: __glce_Color3iv
# Declared: Line 241 (Source lines: 242-252)
# Address: 0x0dbc3644 - 0x0dbc36b8 (Size: 116 bytes, Frame: 192)
.globl __glce_Color3iv
.ent __glce_Color3iv
__glce_Color3iv:
    # Line 242
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 244
    lw	$at,__glCurrentContext
    # Line 242
    lui	$v0,0x4
    addiu	$v0,$v0,-20396
    addu	$gp,$t9,$v0
    # Line 246
    lw	$v0,5776($zero)
    # Line 248
    # lw $t9, -17640($gp) # &glColor3iv
    sd	$at,32($sp)
    # Line 247
    lw	$at,7256($at)
    sd	$v0,24($sp)
    # Line 248
    jal	glColor3iv
    # Line 247
    sw	$at,5776($zero)
    # Line 249
    ld	$v1,32($sp)
    # Line 250
    # lw $t9, -17640($gp) # &glColor3iv
    # Line 249
    lw	$v1,11376($v1)
    # Line 250
    move	$a0,$s8
    jal	glColor3iv
    # Line 249
    sw	$v1,5776($zero)
    ld	$gp,16($sp)
    # Line 252
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 251
    sw	$a0,5776($zero)
.end __glce_Color3iv

# Function: __glce_Color3s
# Declared: Line 257 (Source lines: 258-268)
# Address: 0x0dbc36b8 - 0x0dbc373c (Size: 132 bytes, Frame: 224)
.globl __glce_Color3s
.ent __glce_Color3s
__glce_Color3s:
    # Line 258
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 260
    lw	$at,__glCurrentContext
    # Line 258
    lui	$v0,0x4
    addiu	$v0,$v0,-20512
    addu	$gp,$t9,$v0
    # Line 262
    lw	$v0,5780($zero)
    # Line 264
    # lw $t9, -17636($gp) # &glColor3s
    sd	$at,32($sp)
    # Line 263
    lw	$at,7260($at)
    sd	$v0,24($sp)
    # Line 264
    jal	glColor3s
    # Line 263
    sw	$at,5780($zero)
    ld	$a2,40($sp)
    # Line 265
    ld	$v1,32($sp)
    # Line 266
    ld	$a1,48($sp)
    # lw $t9, -17636($gp) # &glColor3s
    # Line 265
    lw	$v1,11380($v1)
    # Line 266
    move	$a0,$s8
    jal	glColor3s
    # Line 265
    sw	$v1,5780($zero)
    ld	$gp,16($sp)
    # Line 268
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 267
    sw	$a0,5780($zero)
.end __glce_Color3s

# Function: __glce_Color3sv
# Declared: Line 273 (Source lines: 274-284)
# Address: 0x0dbc373c - 0x0dbc37b0 (Size: 116 bytes, Frame: 192)
.globl __glce_Color3sv
.ent __glce_Color3sv
__glce_Color3sv:
    # Line 274
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 276
    lw	$at,__glCurrentContext
    # Line 274
    lui	$v0,0x4
    addiu	$v0,$v0,-20644
    addu	$gp,$t9,$v0
    # Line 278
    lw	$v0,5784($zero)
    # Line 280
    # lw $t9, -17632($gp) # &glColor3sv
    sd	$at,32($sp)
    # Line 279
    lw	$at,7264($at)
    sd	$v0,24($sp)
    # Line 280
    jal	glColor3sv
    # Line 279
    sw	$at,5784($zero)
    # Line 281
    ld	$v1,32($sp)
    # Line 282
    # lw $t9, -17632($gp) # &glColor3sv
    # Line 281
    lw	$v1,11384($v1)
    # Line 282
    move	$a0,$s8
    jal	glColor3sv
    # Line 281
    sw	$v1,5784($zero)
    ld	$gp,16($sp)
    # Line 284
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 283
    sw	$a0,5784($zero)
.end __glce_Color3sv

# Function: __glce_Color3ub
# Declared: Line 289 (Source lines: 290-300)
# Address: 0x0dbc37b0 - 0x0dbc3834 (Size: 132 bytes, Frame: 224)
.globl __glce_Color3ub
.ent __glce_Color3ub
__glce_Color3ub:
    # Line 290
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 292
    lw	$at,__glCurrentContext
    # Line 290
    lui	$v0,0x4
    addiu	$v0,$v0,-20760
    addu	$gp,$t9,$v0
    # Line 294
    lw	$v0,5788($zero)
    # Line 296
    # lw $t9, -17628($gp) # &glColor3ub
    sd	$at,32($sp)
    # Line 295
    lw	$at,7268($at)
    sd	$v0,24($sp)
    # Line 296
    jal	glColor3ub
    # Line 295
    sw	$at,5788($zero)
    ld	$a2,40($sp)
    # Line 297
    ld	$v1,32($sp)
    # Line 298
    ld	$a1,48($sp)
    # lw $t9, -17628($gp) # &glColor3ub
    # Line 297
    lw	$v1,11388($v1)
    # Line 298
    move	$a0,$s8
    jal	glColor3ub
    # Line 297
    sw	$v1,5788($zero)
    ld	$gp,16($sp)
    # Line 300
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 299
    sw	$a0,5788($zero)
.end __glce_Color3ub

# Function: __glce_Color3ubv
# Declared: Line 305 (Source lines: 306-316)
# Address: 0x0dbc3834 - 0x0dbc38a8 (Size: 116 bytes, Frame: 192)
.globl __glce_Color3ubv
.ent __glce_Color3ubv
__glce_Color3ubv:
    # Line 306
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 308
    lw	$at,__glCurrentContext
    # Line 306
    lui	$v0,0x4
    addiu	$v0,$v0,-20892
    addu	$gp,$t9,$v0
    # Line 310
    lw	$v0,5792($zero)
    # Line 312
    # lw $t9, -17624($gp) # &glColor3ubv
    sd	$at,32($sp)
    # Line 311
    lw	$at,7272($at)
    sd	$v0,24($sp)
    # Line 312
    jal	glColor3ubv
    # Line 311
    sw	$at,5792($zero)
    # Line 313
    ld	$v1,32($sp)
    # Line 314
    # lw $t9, -17624($gp) # &glColor3ubv
    # Line 313
    lw	$v1,11392($v1)
    # Line 314
    move	$a0,$s8
    jal	glColor3ubv
    # Line 313
    sw	$v1,5792($zero)
    ld	$gp,16($sp)
    # Line 316
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 315
    sw	$a0,5792($zero)
.end __glce_Color3ubv

# Function: __glce_Color3ui
# Declared: Line 321 (Source lines: 322-332)
# Address: 0x0dbc38a8 - 0x0dbc392c (Size: 132 bytes, Frame: 224)
.globl __glce_Color3ui
.ent __glce_Color3ui
__glce_Color3ui:
    # Line 322
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 324
    lw	$at,__glCurrentContext
    # Line 322
    lui	$v0,0x4
    addiu	$v0,$v0,-21008
    addu	$gp,$t9,$v0
    # Line 326
    lw	$v0,5796($zero)
    # Line 328
    # lw $t9, -17620($gp) # &glColor3ui
    sd	$at,32($sp)
    # Line 327
    lw	$at,7276($at)
    sd	$v0,24($sp)
    # Line 328
    jal	glColor3ui
    # Line 327
    sw	$at,5796($zero)
    ld	$a2,40($sp)
    # Line 329
    ld	$v1,32($sp)
    # Line 330
    ld	$a1,48($sp)
    # lw $t9, -17620($gp) # &glColor3ui
    # Line 329
    lw	$v1,11396($v1)
    # Line 330
    move	$a0,$s8
    jal	glColor3ui
    # Line 329
    sw	$v1,5796($zero)
    ld	$gp,16($sp)
    # Line 332
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 331
    sw	$a0,5796($zero)
.end __glce_Color3ui

# Function: __glce_Color3uiv
# Declared: Line 337 (Source lines: 338-348)
# Address: 0x0dbc392c - 0x0dbc39a0 (Size: 116 bytes, Frame: 192)
.globl __glce_Color3uiv
.ent __glce_Color3uiv
__glce_Color3uiv:
    # Line 338
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 340
    lw	$at,__glCurrentContext
    # Line 338
    lui	$v0,0x4
    addiu	$v0,$v0,-21140
    addu	$gp,$t9,$v0
    # Line 342
    lw	$v0,5800($zero)
    # Line 344
    # lw $t9, -17616($gp) # &glColor3uiv
    sd	$at,32($sp)
    # Line 343
    lw	$at,7280($at)
    sd	$v0,24($sp)
    # Line 344
    jal	glColor3uiv
    # Line 343
    sw	$at,5800($zero)
    # Line 345
    ld	$v1,32($sp)
    # Line 346
    # lw $t9, -17616($gp) # &glColor3uiv
    # Line 345
    lw	$v1,11400($v1)
    # Line 346
    move	$a0,$s8
    jal	glColor3uiv
    # Line 345
    sw	$v1,5800($zero)
    ld	$gp,16($sp)
    # Line 348
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 347
    sw	$a0,5800($zero)
.end __glce_Color3uiv

# Function: __glce_Color3us
# Declared: Line 353 (Source lines: 354-364)
# Address: 0x0dbc39a0 - 0x0dbc3a24 (Size: 132 bytes, Frame: 224)
.globl __glce_Color3us
.ent __glce_Color3us
__glce_Color3us:
    # Line 354
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 356
    lw	$at,__glCurrentContext
    # Line 354
    lui	$v0,0x4
    addiu	$v0,$v0,-21256
    addu	$gp,$t9,$v0
    # Line 358
    lw	$v0,5804($zero)
    # Line 360
    # lw $t9, -17612($gp) # &glColor3us
    sd	$at,32($sp)
    # Line 359
    lw	$at,7284($at)
    sd	$v0,24($sp)
    # Line 360
    jal	glColor3us
    # Line 359
    sw	$at,5804($zero)
    ld	$a2,40($sp)
    # Line 361
    ld	$v1,32($sp)
    # Line 362
    ld	$a1,48($sp)
    # lw $t9, -17612($gp) # &glColor3us
    # Line 361
    lw	$v1,11404($v1)
    # Line 362
    move	$a0,$s8
    jal	glColor3us
    # Line 361
    sw	$v1,5804($zero)
    ld	$gp,16($sp)
    # Line 364
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 363
    sw	$a0,5804($zero)
.end __glce_Color3us

# Function: __glce_Color3usv
# Declared: Line 369 (Source lines: 370-380)
# Address: 0x0dbc3a24 - 0x0dbc3a98 (Size: 116 bytes, Frame: 192)
.globl __glce_Color3usv
.ent __glce_Color3usv
__glce_Color3usv:
    # Line 370
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 372
    lw	$at,__glCurrentContext
    # Line 370
    lui	$v0,0x4
    addiu	$v0,$v0,-21388
    addu	$gp,$t9,$v0
    # Line 374
    lw	$v0,5808($zero)
    # Line 376
    # lw $t9, -17608($gp) # &glColor3usv
    sd	$at,32($sp)
    # Line 375
    lw	$at,7288($at)
    sd	$v0,24($sp)
    # Line 376
    jal	glColor3usv
    # Line 375
    sw	$at,5808($zero)
    # Line 377
    ld	$v1,32($sp)
    # Line 378
    # lw $t9, -17608($gp) # &glColor3usv
    # Line 377
    lw	$v1,11408($v1)
    # Line 378
    move	$a0,$s8
    jal	glColor3usv
    # Line 377
    sw	$v1,5808($zero)
    ld	$gp,16($sp)
    # Line 380
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 379
    sw	$a0,5808($zero)
.end __glce_Color3usv

# Function: __glce_Color4b
# Declared: Line 385 (Source lines: 386-396)
# Address: 0x0dbc3a98 - 0x0dbc3b24 (Size: 140 bytes, Frame: 224)
.globl __glce_Color4b
.ent __glce_Color4b
__glce_Color4b:
    # Line 386
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 388
    lw	$at,__glCurrentContext
    # Line 386
    lui	$v0,0x4
    addiu	$v0,$v0,-21504
    addu	$gp,$t9,$v0
    # Line 390
    lw	$v0,5812($zero)
    # Line 392
    # lw $t9, -17604($gp) # &glColor4b
    sd	$at,32($sp)
    # Line 391
    lw	$at,7292($at)
    sd	$v0,24($sp)
    # Line 392
    jal	glColor4b
    # Line 391
    sw	$at,5812($zero)
    ld	$a3,40($sp)
    # Line 394
    ld	$a2,48($sp)
    # Line 393
    ld	$v1,32($sp)
    # Line 394
    ld	$a1,56($sp)
    # lw $t9, -17604($gp) # &glColor4b
    # Line 393
    lw	$v1,11412($v1)
    # Line 394
    move	$a0,$s8
    jal	glColor4b
    # Line 393
    sw	$v1,5812($zero)
    ld	$gp,16($sp)
    # Line 396
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 395
    sw	$a0,5812($zero)
.end __glce_Color4b

# Function: __glce_Color4bv
# Declared: Line 401 (Source lines: 402-412)
# Address: 0x0dbc3b24 - 0x0dbc3b98 (Size: 116 bytes, Frame: 192)
.globl __glce_Color4bv
.ent __glce_Color4bv
__glce_Color4bv:
    # Line 402
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 404
    lw	$at,__glCurrentContext
    # Line 402
    lui	$v0,0x4
    addiu	$v0,$v0,-21644
    addu	$gp,$t9,$v0
    # Line 406
    lw	$v0,5816($zero)
    # Line 408
    # lw $t9, -17600($gp) # &glColor4bv
    sd	$at,32($sp)
    # Line 407
    lw	$at,7296($at)
    sd	$v0,24($sp)
    # Line 408
    jal	glColor4bv
    # Line 407
    sw	$at,5816($zero)
    # Line 409
    ld	$v1,32($sp)
    # Line 410
    # lw $t9, -17600($gp) # &glColor4bv
    # Line 409
    lw	$v1,11416($v1)
    # Line 410
    move	$a0,$s8
    jal	glColor4bv
    # Line 409
    sw	$v1,5816($zero)
    ld	$gp,16($sp)
    # Line 412
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 411
    sw	$a0,5816($zero)
.end __glce_Color4bv

# Function: __glce_Color4d
# Declared: Line 417 (Source lines: 418-428)
# Address: 0x0dbc3b98 - 0x0dbc3c24 (Size: 140 bytes, Frame: 224)
.globl __glce_Color4d
.ent __glce_Color4d
__glce_Color4d:
    # Line 418
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,32($sp)
    # Line 422
    lw	$v0,5820($zero)
    sd	$gp,48($sp)
    # Line 418
    lui	$v1,0x4
    addiu	$v1,$v1,-21760
    sd	$s8,40($sp)
    # Line 420
    lw	$s8,__glCurrentContext
    # Line 418
    addu	$gp,$t9,$v1
    # Line 424
    # lw $t9, -17596($gp) # &glColor4d
    # Line 423
    lw	$at,7300($s8)
    sd	$v0,56($sp)
    # Line 424
    jal	glColor4d
    # Line 423
    sw	$at,5820($zero)
    ldc1	$f15,8($sp)
    # Line 426
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17596($gp) # &glColor4d
    # Line 425
    lw	$a0,11420($s8)
    # Line 426
    mov.d	$f12,$f30
    jal	glColor4d
    # Line 425
    sw	$a0,5820($zero)
    ld	$gp,48($sp)
    # Line 428
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 427
    sw	$a1,5820($zero)
.end __glce_Color4d

# Function: __glce_Color4dv
# Declared: Line 433 (Source lines: 434-444)
# Address: 0x0dbc3c24 - 0x0dbc3c98 (Size: 116 bytes, Frame: 192)
.globl __glce_Color4dv
.ent __glce_Color4dv
__glce_Color4dv:
    # Line 434
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 436
    lw	$at,__glCurrentContext
    # Line 434
    lui	$v0,0x4
    addiu	$v0,$v0,-21900
    addu	$gp,$t9,$v0
    # Line 438
    lw	$v0,5824($zero)
    # Line 440
    # lw $t9, -17592($gp) # &glColor4dv
    sd	$at,32($sp)
    # Line 439
    lw	$at,7304($at)
    sd	$v0,24($sp)
    # Line 440
    jal	glColor4dv
    # Line 439
    sw	$at,5824($zero)
    # Line 441
    ld	$v1,32($sp)
    # Line 442
    # lw $t9, -17592($gp) # &glColor4dv
    # Line 441
    lw	$v1,11424($v1)
    # Line 442
    move	$a0,$s8
    jal	glColor4dv
    # Line 441
    sw	$v1,5824($zero)
    ld	$gp,16($sp)
    # Line 444
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 443
    sw	$a0,5824($zero)
.end __glce_Color4dv

# Function: __glce_Color4f
# Declared: Line 449 (Source lines: 450-460)
# Address: 0x0dbc3c98 - 0x0dbc3d24 (Size: 140 bytes, Frame: 224)
.globl __glce_Color4f
.ent __glce_Color4f
__glce_Color4f:
    # Line 450
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 454
    lw	$v0,5828($zero)
    sd	$gp,48($sp)
    # Line 450
    lui	$v1,0x4
    addiu	$v1,$v1,-22016
    sd	$s8,40($sp)
    # Line 452
    lw	$s8,__glCurrentContext
    # Line 450
    addu	$gp,$t9,$v1
    # Line 456
    # lw $t9, -17588($gp) # &glColor4f
    # Line 455
    lw	$at,7308($s8)
    sd	$v0,56($sp)
    # Line 456
    jal	glColor4f
    # Line 455
    sw	$at,5828($zero)
    ldc1	$f15,8($sp)
    # Line 458
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17588($gp) # &glColor4f
    # Line 457
    lw	$a0,11428($s8)
    # Line 458
    mov.s	$f12,$f30
    jal	glColor4f
    # Line 457
    sw	$a0,5828($zero)
    ld	$gp,48($sp)
    # Line 460
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 459
    sw	$a1,5828($zero)
.end __glce_Color4f

# Function: __glce_Color4fv
# Declared: Line 465 (Source lines: 466-476)
# Address: 0x0dbc3d24 - 0x0dbc3d98 (Size: 116 bytes, Frame: 192)
.globl __glce_Color4fv
.ent __glce_Color4fv
__glce_Color4fv:
    # Line 466
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 468
    lw	$at,__glCurrentContext
    # Line 466
    lui	$v0,0x4
    addiu	$v0,$v0,-22156
    addu	$gp,$t9,$v0
    # Line 470
    lw	$v0,5832($zero)
    # Line 472
    # lw $t9, -17584($gp) # &glColor4fv
    sd	$at,32($sp)
    # Line 471
    lw	$at,7312($at)
    sd	$v0,24($sp)
    # Line 472
    jal	glColor4fv
    # Line 471
    sw	$at,5832($zero)
    # Line 473
    ld	$v1,32($sp)
    # Line 474
    # lw $t9, -17584($gp) # &glColor4fv
    # Line 473
    lw	$v1,11432($v1)
    # Line 474
    move	$a0,$s8
    jal	glColor4fv
    # Line 473
    sw	$v1,5832($zero)
    ld	$gp,16($sp)
    # Line 476
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 475
    sw	$a0,5832($zero)
.end __glce_Color4fv

# Function: __glce_Color4i
# Declared: Line 481 (Source lines: 482-492)
# Address: 0x0dbc3d98 - 0x0dbc3e24 (Size: 140 bytes, Frame: 224)
.globl __glce_Color4i
.ent __glce_Color4i
__glce_Color4i:
    # Line 482
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 484
    lw	$at,__glCurrentContext
    # Line 482
    lui	$v0,0x4
    addiu	$v0,$v0,-22272
    addu	$gp,$t9,$v0
    # Line 486
    lw	$v0,5836($zero)
    # Line 488
    # lw $t9, -17580($gp) # &glColor4i
    sd	$at,32($sp)
    # Line 487
    lw	$at,7316($at)
    sd	$v0,24($sp)
    # Line 488
    jal	glColor4i
    # Line 487
    sw	$at,5836($zero)
    ld	$a3,40($sp)
    # Line 490
    ld	$a2,48($sp)
    # Line 489
    ld	$v1,32($sp)
    # Line 490
    ld	$a1,56($sp)
    # lw $t9, -17580($gp) # &glColor4i
    # Line 489
    lw	$v1,11436($v1)
    # Line 490
    move	$a0,$s8
    jal	glColor4i
    # Line 489
    sw	$v1,5836($zero)
    ld	$gp,16($sp)
    # Line 492
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 491
    sw	$a0,5836($zero)
.end __glce_Color4i

# Function: __glce_Color4iv
# Declared: Line 497 (Source lines: 498-508)
# Address: 0x0dbc3e24 - 0x0dbc3e98 (Size: 116 bytes, Frame: 192)
.globl __glce_Color4iv
.ent __glce_Color4iv
__glce_Color4iv:
    # Line 498
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 500
    lw	$at,__glCurrentContext
    # Line 498
    lui	$v0,0x4
    addiu	$v0,$v0,-22412
    addu	$gp,$t9,$v0
    # Line 502
    lw	$v0,5840($zero)
    # Line 504
    # lw $t9, -17576($gp) # &glColor4iv
    sd	$at,32($sp)
    # Line 503
    lw	$at,7320($at)
    sd	$v0,24($sp)
    # Line 504
    jal	glColor4iv
    # Line 503
    sw	$at,5840($zero)
    # Line 505
    ld	$v1,32($sp)
    # Line 506
    # lw $t9, -17576($gp) # &glColor4iv
    # Line 505
    lw	$v1,11440($v1)
    # Line 506
    move	$a0,$s8
    jal	glColor4iv
    # Line 505
    sw	$v1,5840($zero)
    ld	$gp,16($sp)
    # Line 508
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 507
    sw	$a0,5840($zero)
.end __glce_Color4iv

# Function: __glce_Color4s
# Declared: Line 513 (Source lines: 514-524)
# Address: 0x0dbc3e98 - 0x0dbc3f24 (Size: 140 bytes, Frame: 224)
.globl __glce_Color4s
.ent __glce_Color4s
__glce_Color4s:
    # Line 514
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 516
    lw	$at,__glCurrentContext
    # Line 514
    lui	$v0,0x4
    addiu	$v0,$v0,-22528
    addu	$gp,$t9,$v0
    # Line 518
    lw	$v0,5844($zero)
    # Line 520
    # lw $t9, -17572($gp) # &glColor4s
    sd	$at,32($sp)
    # Line 519
    lw	$at,7324($at)
    sd	$v0,24($sp)
    # Line 520
    jal	glColor4s
    # Line 519
    sw	$at,5844($zero)
    ld	$a3,40($sp)
    # Line 522
    ld	$a2,48($sp)
    # Line 521
    ld	$v1,32($sp)
    # Line 522
    ld	$a1,56($sp)
    # lw $t9, -17572($gp) # &glColor4s
    # Line 521
    lw	$v1,11444($v1)
    # Line 522
    move	$a0,$s8
    jal	glColor4s
    # Line 521
    sw	$v1,5844($zero)
    ld	$gp,16($sp)
    # Line 524
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 523
    sw	$a0,5844($zero)
.end __glce_Color4s

# Function: __glce_Color4sv
# Declared: Line 529 (Source lines: 530-540)
# Address: 0x0dbc3f24 - 0x0dbc3f98 (Size: 116 bytes, Frame: 192)
.globl __glce_Color4sv
.ent __glce_Color4sv
__glce_Color4sv:
    # Line 530
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 532
    lw	$at,__glCurrentContext
    # Line 530
    lui	$v0,0x4
    addiu	$v0,$v0,-22668
    addu	$gp,$t9,$v0
    # Line 534
    lw	$v0,5848($zero)
    # Line 536
    # lw $t9, -17568($gp) # &glColor4sv
    sd	$at,32($sp)
    # Line 535
    lw	$at,7328($at)
    sd	$v0,24($sp)
    # Line 536
    jal	glColor4sv
    # Line 535
    sw	$at,5848($zero)
    # Line 537
    ld	$v1,32($sp)
    # Line 538
    # lw $t9, -17568($gp) # &glColor4sv
    # Line 537
    lw	$v1,11448($v1)
    # Line 538
    move	$a0,$s8
    jal	glColor4sv
    # Line 537
    sw	$v1,5848($zero)
    ld	$gp,16($sp)
    # Line 540
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 539
    sw	$a0,5848($zero)
.end __glce_Color4sv

# Function: __glce_Color4ub
# Declared: Line 545 (Source lines: 546-556)
# Address: 0x0dbc3f98 - 0x0dbc4024 (Size: 140 bytes, Frame: 224)
.globl __glce_Color4ub
.ent __glce_Color4ub
__glce_Color4ub:
    # Line 546
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 548
    lw	$at,__glCurrentContext
    # Line 546
    lui	$v0,0x4
    addiu	$v0,$v0,-22784
    addu	$gp,$t9,$v0
    # Line 550
    lw	$v0,5852($zero)
    # Line 552
    # lw $t9, -17564($gp) # &glColor4ub
    sd	$at,32($sp)
    # Line 551
    lw	$at,7332($at)
    sd	$v0,24($sp)
    # Line 552
    jal	glColor4ub
    # Line 551
    sw	$at,5852($zero)
    ld	$a3,40($sp)
    # Line 554
    ld	$a2,48($sp)
    # Line 553
    ld	$v1,32($sp)
    # Line 554
    ld	$a1,56($sp)
    # lw $t9, -17564($gp) # &glColor4ub
    # Line 553
    lw	$v1,11452($v1)
    # Line 554
    move	$a0,$s8
    jal	glColor4ub
    # Line 553
    sw	$v1,5852($zero)
    ld	$gp,16($sp)
    # Line 556
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 555
    sw	$a0,5852($zero)
.end __glce_Color4ub

# Function: __glce_Color4ubv
# Declared: Line 561 (Source lines: 562-572)
# Address: 0x0dbc4024 - 0x0dbc4098 (Size: 116 bytes, Frame: 192)
.globl __glce_Color4ubv
.ent __glce_Color4ubv
__glce_Color4ubv:
    # Line 562
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 564
    lw	$at,__glCurrentContext
    # Line 562
    lui	$v0,0x4
    addiu	$v0,$v0,-22924
    addu	$gp,$t9,$v0
    # Line 566
    lw	$v0,5856($zero)
    # Line 568
    # lw $t9, -17560($gp) # &glColor4ubv
    sd	$at,32($sp)
    # Line 567
    lw	$at,7336($at)
    sd	$v0,24($sp)
    # Line 568
    jal	glColor4ubv
    # Line 567
    sw	$at,5856($zero)
    # Line 569
    ld	$v1,32($sp)
    # Line 570
    # lw $t9, -17560($gp) # &glColor4ubv
    # Line 569
    lw	$v1,11456($v1)
    # Line 570
    move	$a0,$s8
    jal	glColor4ubv
    # Line 569
    sw	$v1,5856($zero)
    ld	$gp,16($sp)
    # Line 572
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 571
    sw	$a0,5856($zero)
.end __glce_Color4ubv

# Function: __glce_Color4ui
# Declared: Line 577 (Source lines: 578-588)
# Address: 0x0dbc4098 - 0x0dbc4124 (Size: 140 bytes, Frame: 224)
.globl __glce_Color4ui
.ent __glce_Color4ui
__glce_Color4ui:
    # Line 578
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 580
    lw	$at,__glCurrentContext
    # Line 578
    lui	$v0,0x4
    addiu	$v0,$v0,-23040
    addu	$gp,$t9,$v0
    # Line 582
    lw	$v0,5860($zero)
    # Line 584
    # lw $t9, -17556($gp) # &glColor4ui
    sd	$at,32($sp)
    # Line 583
    lw	$at,7340($at)
    sd	$v0,24($sp)
    # Line 584
    jal	glColor4ui
    # Line 583
    sw	$at,5860($zero)
    ld	$a3,40($sp)
    # Line 586
    ld	$a2,48($sp)
    # Line 585
    ld	$v1,32($sp)
    # Line 586
    ld	$a1,56($sp)
    # lw $t9, -17556($gp) # &glColor4ui
    # Line 585
    lw	$v1,11460($v1)
    # Line 586
    move	$a0,$s8
    jal	glColor4ui
    # Line 585
    sw	$v1,5860($zero)
    ld	$gp,16($sp)
    # Line 588
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 587
    sw	$a0,5860($zero)
.end __glce_Color4ui

# Function: __glce_Color4uiv
# Declared: Line 593 (Source lines: 594-604)
# Address: 0x0dbc4124 - 0x0dbc4198 (Size: 116 bytes, Frame: 192)
.globl __glce_Color4uiv
.ent __glce_Color4uiv
__glce_Color4uiv:
    # Line 594
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 596
    lw	$at,__glCurrentContext
    # Line 594
    lui	$v0,0x4
    addiu	$v0,$v0,-23180
    addu	$gp,$t9,$v0
    # Line 598
    lw	$v0,5864($zero)
    # Line 600
    # lw $t9, -17552($gp) # &glColor4uiv
    sd	$at,32($sp)
    # Line 599
    lw	$at,7344($at)
    sd	$v0,24($sp)
    # Line 600
    jal	glColor4uiv
    # Line 599
    sw	$at,5864($zero)
    # Line 601
    ld	$v1,32($sp)
    # Line 602
    # lw $t9, -17552($gp) # &glColor4uiv
    # Line 601
    lw	$v1,11464($v1)
    # Line 602
    move	$a0,$s8
    jal	glColor4uiv
    # Line 601
    sw	$v1,5864($zero)
    ld	$gp,16($sp)
    # Line 604
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 603
    sw	$a0,5864($zero)
.end __glce_Color4uiv

# Function: __glce_Color4us
# Declared: Line 609 (Source lines: 610-620)
# Address: 0x0dbc4198 - 0x0dbc4224 (Size: 140 bytes, Frame: 224)
.globl __glce_Color4us
.ent __glce_Color4us
__glce_Color4us:
    # Line 610
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 612
    lw	$at,__glCurrentContext
    # Line 610
    lui	$v0,0x4
    addiu	$v0,$v0,-23296
    addu	$gp,$t9,$v0
    # Line 614
    lw	$v0,5868($zero)
    # Line 616
    # lw $t9, -17548($gp) # &glColor4us
    sd	$at,32($sp)
    # Line 615
    lw	$at,7348($at)
    sd	$v0,24($sp)
    # Line 616
    jal	glColor4us
    # Line 615
    sw	$at,5868($zero)
    ld	$a3,40($sp)
    # Line 618
    ld	$a2,48($sp)
    # Line 617
    ld	$v1,32($sp)
    # Line 618
    ld	$a1,56($sp)
    # lw $t9, -17548($gp) # &glColor4us
    # Line 617
    lw	$v1,11468($v1)
    # Line 618
    move	$a0,$s8
    jal	glColor4us
    # Line 617
    sw	$v1,5868($zero)
    ld	$gp,16($sp)
    # Line 620
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 619
    sw	$a0,5868($zero)
.end __glce_Color4us

# Function: __glce_Color4usv
# Declared: Line 625 (Source lines: 626-636)
# Address: 0x0dbc4224 - 0x0dbc4298 (Size: 116 bytes, Frame: 192)
.globl __glce_Color4usv
.ent __glce_Color4usv
__glce_Color4usv:
    # Line 626
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 628
    lw	$at,__glCurrentContext
    # Line 626
    lui	$v0,0x4
    addiu	$v0,$v0,-23436
    addu	$gp,$t9,$v0
    # Line 630
    lw	$v0,5872($zero)
    # Line 632
    # lw $t9, -17544($gp) # &glColor4usv
    sd	$at,32($sp)
    # Line 631
    lw	$at,7352($at)
    sd	$v0,24($sp)
    # Line 632
    jal	glColor4usv
    # Line 631
    sw	$at,5872($zero)
    # Line 633
    ld	$v1,32($sp)
    # Line 634
    # lw $t9, -17544($gp) # &glColor4usv
    # Line 633
    lw	$v1,11472($v1)
    # Line 634
    move	$a0,$s8
    jal	glColor4usv
    # Line 633
    sw	$v1,5872($zero)
    ld	$gp,16($sp)
    # Line 636
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 635
    sw	$a0,5872($zero)
.end __glce_Color4usv

# Function: __glce_EdgeFlag
# Declared: Line 641 (Source lines: 642-652)
# Address: 0x0dbc4298 - 0x0dbc430c (Size: 116 bytes, Frame: 192)
.globl __glce_EdgeFlag
.ent __glce_EdgeFlag
__glce_EdgeFlag:
    # Line 642
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 644
    lw	$at,__glCurrentContext
    # Line 642
    lui	$v0,0x4
    addiu	$v0,$v0,-23552
    addu	$gp,$t9,$v0
    # Line 646
    lw	$v0,4204($zero)
    # Line 648
    # lw $t9, -17540($gp) # &glEdgeFlag
    sd	$at,32($sp)
    # Line 647
    lw	$at,5684($at)
    sd	$v0,24($sp)
    # Line 648
    jal	glEdgeFlag
    # Line 647
    sw	$at,4204($zero)
    # Line 649
    ld	$v1,32($sp)
    # Line 650
    # lw $t9, -17540($gp) # &glEdgeFlag
    # Line 649
    lw	$v1,9804($v1)
    # Line 650
    move	$a0,$s8
    jal	glEdgeFlag
    # Line 649
    sw	$v1,4204($zero)
    ld	$gp,16($sp)
    # Line 652
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 651
    sw	$a0,4204($zero)
.end __glce_EdgeFlag

# Function: __glce_EdgeFlagv
# Declared: Line 657 (Source lines: 658-668)
# Address: 0x0dbc430c - 0x0dbc4380 (Size: 116 bytes, Frame: 192)
.globl __glce_EdgeFlagv
.ent __glce_EdgeFlagv
__glce_EdgeFlagv:
    # Line 658
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 660
    lw	$at,__glCurrentContext
    # Line 658
    lui	$v0,0x4
    addiu	$v0,$v0,-23668
    addu	$gp,$t9,$v0
    # Line 662
    lw	$v0,4208($zero)
    # Line 664
    # lw $t9, -17536($gp) # &glEdgeFlagv
    sd	$at,32($sp)
    # Line 663
    lw	$at,5688($at)
    sd	$v0,24($sp)
    # Line 664
    jal	glEdgeFlagv
    # Line 663
    sw	$at,4208($zero)
    # Line 665
    ld	$v1,32($sp)
    # Line 666
    # lw $t9, -17536($gp) # &glEdgeFlagv
    # Line 665
    lw	$v1,9808($v1)
    # Line 666
    move	$a0,$s8
    jal	glEdgeFlagv
    # Line 665
    sw	$v1,4208($zero)
    ld	$gp,16($sp)
    # Line 668
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 667
    sw	$a0,4208($zero)
.end __glce_EdgeFlagv

# Function: __glce_End
# Declared: Line 673 (Source lines: 674-684)
# Address: 0x0dbc4380 - 0x0dbc43e4 (Size: 100 bytes, Frame: 32)
.globl __glce_End
.ent __glce_End
__glce_End:
    # Line 674
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 678
    lw	$v0,4212($zero)
    sd	$gp,16($sp)
    # Line 674
    lui	$v1,0x4
    addiu	$v1,$v1,-23784
    sd	$s8,8($sp)
    # Line 676
    lw	$s8,__glCurrentContext
    # Line 674
    addu	$gp,$t9,$v1
    # Line 680
    # lw $t9, -17532($gp) # &glEnd
    # Line 679
    lw	$at,5692($s8)
    sd	$v0,24($sp)
    # Line 680
    jal	glEnd
    # Line 679
    sw	$at,4212($zero)
    # Line 682
    # lw $t9, -17532($gp) # &glEnd
    # Line 681
    lw	$a0,9812($s8)
    # Line 682
    jal	glEnd
    # Line 681
    sw	$a0,4212($zero)
    ld	$gp,16($sp)
    # Line 684
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 683
    sw	$a1,4212($zero)
.end __glce_End

# Function: __glce_Indexd
# Declared: Line 689 (Source lines: 690-700)
# Address: 0x0dbc43e4 - 0x0dbc4458 (Size: 116 bytes, Frame: 192)
.globl __glce_Indexd
.ent __glce_Indexd
__glce_Indexd:
    # Line 690
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,8($sp)
    # Line 694
    lw	$v0,5876($zero)
    sd	$gp,24($sp)
    # Line 690
    lui	$v1,0x4
    addiu	$v1,$v1,-23884
    sd	$s8,16($sp)
    # Line 692
    lw	$s8,__glCurrentContext
    # Line 690
    addu	$gp,$t9,$v1
    # Line 696
    # lw $t9, -17528($gp) # &glIndexd
    # Line 695
    lw	$at,7356($s8)
    sd	$v0,32($sp)
    # Line 696
    jal	glIndexd
    # Line 695
    sw	$at,5876($zero)
    # Line 698
    # lw $t9, -17528($gp) # &glIndexd
    # Line 697
    lw	$a0,11476($s8)
    # Line 698
    mov.d	$f12,$f30
    jal	glIndexd
    # Line 697
    sw	$a0,5876($zero)
    ld	$gp,24($sp)
    # Line 700
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 699
    sw	$a1,5876($zero)
.end __glce_Indexd

# Function: __glce_Indexdv
# Declared: Line 705 (Source lines: 706-716)
# Address: 0x0dbc4458 - 0x0dbc44cc (Size: 116 bytes, Frame: 192)
.globl __glce_Indexdv
.ent __glce_Indexdv
__glce_Indexdv:
    # Line 706
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 708
    lw	$at,__glCurrentContext
    # Line 706
    lui	$v0,0x4
    addiu	$v0,$v0,-24000
    addu	$gp,$t9,$v0
    # Line 710
    lw	$v0,5880($zero)
    # Line 712
    # lw $t9, -17524($gp) # &glIndexdv
    sd	$at,32($sp)
    # Line 711
    lw	$at,7360($at)
    sd	$v0,24($sp)
    # Line 712
    jal	glIndexdv
    # Line 711
    sw	$at,5880($zero)
    # Line 713
    ld	$v1,32($sp)
    # Line 714
    # lw $t9, -17524($gp) # &glIndexdv
    # Line 713
    lw	$v1,11480($v1)
    # Line 714
    move	$a0,$s8
    jal	glIndexdv
    # Line 713
    sw	$v1,5880($zero)
    ld	$gp,16($sp)
    # Line 716
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 715
    sw	$a0,5880($zero)
.end __glce_Indexdv

# Function: __glce_Indexf
# Declared: Line 721 (Source lines: 722-732)
# Address: 0x0dbc44cc - 0x0dbc4540 (Size: 116 bytes, Frame: 192)
.globl __glce_Indexf
.ent __glce_Indexf
__glce_Indexf:
    # Line 722
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,8($sp)
    # Line 726
    lw	$v0,5884($zero)
    sd	$gp,24($sp)
    # Line 722
    lui	$v1,0x4
    addiu	$v1,$v1,-24116
    sd	$s8,16($sp)
    # Line 724
    lw	$s8,__glCurrentContext
    # Line 722
    addu	$gp,$t9,$v1
    # Line 728
    # lw $t9, -17520($gp) # &glIndexf
    # Line 727
    lw	$at,7364($s8)
    sd	$v0,32($sp)
    # Line 728
    jal	glIndexf
    # Line 727
    sw	$at,5884($zero)
    # Line 730
    # lw $t9, -17520($gp) # &glIndexf
    # Line 729
    lw	$a0,11484($s8)
    # Line 730
    mov.s	$f12,$f30
    jal	glIndexf
    # Line 729
    sw	$a0,5884($zero)
    ld	$gp,24($sp)
    # Line 732
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 731
    sw	$a1,5884($zero)
.end __glce_Indexf

# Function: __glce_Indexfv
# Declared: Line 737 (Source lines: 738-748)
# Address: 0x0dbc4540 - 0x0dbc45b4 (Size: 116 bytes, Frame: 192)
.globl __glce_Indexfv
.ent __glce_Indexfv
__glce_Indexfv:
    # Line 738
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 740
    lw	$at,__glCurrentContext
    # Line 738
    lui	$v0,0x4
    addiu	$v0,$v0,-24232
    addu	$gp,$t9,$v0
    # Line 742
    lw	$v0,5888($zero)
    # Line 744
    # lw $t9, -17516($gp) # &glIndexfv
    sd	$at,32($sp)
    # Line 743
    lw	$at,7368($at)
    sd	$v0,24($sp)
    # Line 744
    jal	glIndexfv
    # Line 743
    sw	$at,5888($zero)
    # Line 745
    ld	$v1,32($sp)
    # Line 746
    # lw $t9, -17516($gp) # &glIndexfv
    # Line 745
    lw	$v1,11488($v1)
    # Line 746
    move	$a0,$s8
    jal	glIndexfv
    # Line 745
    sw	$v1,5888($zero)
    ld	$gp,16($sp)
    # Line 748
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 747
    sw	$a0,5888($zero)
.end __glce_Indexfv

# Function: __glce_Indexi
# Declared: Line 753 (Source lines: 754-764)
# Address: 0x0dbc45b4 - 0x0dbc4628 (Size: 116 bytes, Frame: 192)
.globl __glce_Indexi
.ent __glce_Indexi
__glce_Indexi:
    # Line 754
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 756
    lw	$at,__glCurrentContext
    # Line 754
    lui	$v0,0x4
    addiu	$v0,$v0,-24348
    addu	$gp,$t9,$v0
    # Line 758
    lw	$v0,5892($zero)
    # Line 760
    # lw $t9, -17512($gp) # &glIndexi
    sd	$at,32($sp)
    # Line 759
    lw	$at,7372($at)
    sd	$v0,24($sp)
    # Line 760
    jal	glIndexi
    # Line 759
    sw	$at,5892($zero)
    # Line 761
    ld	$v1,32($sp)
    # Line 762
    # lw $t9, -17512($gp) # &glIndexi
    # Line 761
    lw	$v1,11492($v1)
    # Line 762
    move	$a0,$s8
    jal	glIndexi
    # Line 761
    sw	$v1,5892($zero)
    ld	$gp,16($sp)
    # Line 764
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 763
    sw	$a0,5892($zero)
.end __glce_Indexi

# Function: __glce_Indexiv
# Declared: Line 769 (Source lines: 770-780)
# Address: 0x0dbc4628 - 0x0dbc469c (Size: 116 bytes, Frame: 192)
.globl __glce_Indexiv
.ent __glce_Indexiv
__glce_Indexiv:
    # Line 770
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 772
    lw	$at,__glCurrentContext
    # Line 770
    lui	$v0,0x4
    addiu	$v0,$v0,-24464
    addu	$gp,$t9,$v0
    # Line 774
    lw	$v0,5896($zero)
    # Line 776
    # lw $t9, -17508($gp) # &glIndexiv
    sd	$at,32($sp)
    # Line 775
    lw	$at,7376($at)
    sd	$v0,24($sp)
    # Line 776
    jal	glIndexiv
    # Line 775
    sw	$at,5896($zero)
    # Line 777
    ld	$v1,32($sp)
    # Line 778
    # lw $t9, -17508($gp) # &glIndexiv
    # Line 777
    lw	$v1,11496($v1)
    # Line 778
    move	$a0,$s8
    jal	glIndexiv
    # Line 777
    sw	$v1,5896($zero)
    ld	$gp,16($sp)
    # Line 780
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 779
    sw	$a0,5896($zero)
.end __glce_Indexiv

# Function: __glce_Indexs
# Declared: Line 785 (Source lines: 786-796)
# Address: 0x0dbc469c - 0x0dbc4710 (Size: 116 bytes, Frame: 192)
.globl __glce_Indexs
.ent __glce_Indexs
__glce_Indexs:
    # Line 786
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 788
    lw	$at,__glCurrentContext
    # Line 786
    lui	$v0,0x4
    addiu	$v0,$v0,-24580
    addu	$gp,$t9,$v0
    # Line 790
    lw	$v0,5900($zero)
    # Line 792
    # lw $t9, -17504($gp) # &glIndexs
    sd	$at,32($sp)
    # Line 791
    lw	$at,7380($at)
    sd	$v0,24($sp)
    # Line 792
    jal	glIndexs
    # Line 791
    sw	$at,5900($zero)
    # Line 793
    ld	$v1,32($sp)
    # Line 794
    # lw $t9, -17504($gp) # &glIndexs
    # Line 793
    lw	$v1,11500($v1)
    # Line 794
    move	$a0,$s8
    jal	glIndexs
    # Line 793
    sw	$v1,5900($zero)
    ld	$gp,16($sp)
    # Line 796
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 795
    sw	$a0,5900($zero)
.end __glce_Indexs

# Function: __glce_Indexsv
# Declared: Line 801 (Source lines: 802-812)
# Address: 0x0dbc4710 - 0x0dbc4784 (Size: 116 bytes, Frame: 192)
.globl __glce_Indexsv
.ent __glce_Indexsv
__glce_Indexsv:
    # Line 802
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 804
    lw	$at,__glCurrentContext
    # Line 802
    lui	$v0,0x4
    addiu	$v0,$v0,-24696
    addu	$gp,$t9,$v0
    # Line 806
    lw	$v0,5904($zero)
    # Line 808
    # lw $t9, -17500($gp) # &glIndexsv
    sd	$at,32($sp)
    # Line 807
    lw	$at,7384($at)
    sd	$v0,24($sp)
    # Line 808
    jal	glIndexsv
    # Line 807
    sw	$at,5904($zero)
    # Line 809
    ld	$v1,32($sp)
    # Line 810
    # lw $t9, -17500($gp) # &glIndexsv
    # Line 809
    lw	$v1,11504($v1)
    # Line 810
    move	$a0,$s8
    jal	glIndexsv
    # Line 809
    sw	$v1,5904($zero)
    ld	$gp,16($sp)
    # Line 812
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 811
    sw	$a0,5904($zero)
.end __glce_Indexsv

# Function: __glce_Normal3b
# Declared: Line 817 (Source lines: 818-828)
# Address: 0x0dbc4784 - 0x0dbc4808 (Size: 132 bytes, Frame: 224)
.globl __glce_Normal3b
.ent __glce_Normal3b
__glce_Normal3b:
    # Line 818
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 820
    lw	$at,__glCurrentContext
    # Line 818
    lui	$v0,0x4
    addiu	$v0,$v0,-24812
    addu	$gp,$t9,$v0
    # Line 822
    lw	$v0,5916($zero)
    # Line 824
    # lw $t9, -17496($gp) # &glNormal3b
    sd	$at,32($sp)
    # Line 823
    lw	$at,7396($at)
    sd	$v0,24($sp)
    # Line 824
    jal	glNormal3b
    # Line 823
    sw	$at,5916($zero)
    ld	$a2,40($sp)
    # Line 825
    ld	$v1,32($sp)
    # Line 826
    ld	$a1,48($sp)
    # lw $t9, -17496($gp) # &glNormal3b
    # Line 825
    lw	$v1,11516($v1)
    # Line 826
    move	$a0,$s8
    jal	glNormal3b
    # Line 825
    sw	$v1,5916($zero)
    ld	$gp,16($sp)
    # Line 828
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 827
    sw	$a0,5916($zero)
.end __glce_Normal3b

# Function: __glce_Normal3bv
# Declared: Line 833 (Source lines: 834-844)
# Address: 0x0dbc4808 - 0x0dbc487c (Size: 116 bytes, Frame: 192)
.globl __glce_Normal3bv
.ent __glce_Normal3bv
__glce_Normal3bv:
    # Line 834
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 836
    lw	$at,__glCurrentContext
    # Line 834
    lui	$v0,0x4
    addiu	$v0,$v0,-24944
    addu	$gp,$t9,$v0
    # Line 838
    lw	$v0,5920($zero)
    # Line 840
    # lw $t9, -17492($gp) # &glNormal3bv
    sd	$at,32($sp)
    # Line 839
    lw	$at,7400($at)
    sd	$v0,24($sp)
    # Line 840
    jal	glNormal3bv
    # Line 839
    sw	$at,5920($zero)
    # Line 841
    ld	$v1,32($sp)
    # Line 842
    # lw $t9, -17492($gp) # &glNormal3bv
    # Line 841
    lw	$v1,11520($v1)
    # Line 842
    move	$a0,$s8
    jal	glNormal3bv
    # Line 841
    sw	$v1,5920($zero)
    ld	$gp,16($sp)
    # Line 844
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 843
    sw	$a0,5920($zero)
.end __glce_Normal3bv

# Function: __glce_Normal3d
# Declared: Line 849 (Source lines: 850-860)
# Address: 0x0dbc487c - 0x0dbc4900 (Size: 132 bytes, Frame: 224)
.globl __glce_Normal3d
.ent __glce_Normal3d
__glce_Normal3d:
    # Line 850
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,24($sp)
    # Line 854
    lw	$v0,5924($zero)
    sd	$gp,40($sp)
    # Line 850
    lui	$v1,0x4
    addiu	$v1,$v1,-25060
    sd	$s8,32($sp)
    # Line 852
    lw	$s8,__glCurrentContext
    # Line 850
    addu	$gp,$t9,$v1
    # Line 856
    # lw $t9, -17488($gp) # &glNormal3d
    # Line 855
    lw	$at,7404($s8)
    sd	$v0,48($sp)
    # Line 856
    jal	glNormal3d
    # Line 855
    sw	$at,5924($zero)
    ldc1	$f14,8($sp)
    # Line 858
    ldc1	$f13,16($sp)
    # lw $t9, -17488($gp) # &glNormal3d
    # Line 857
    lw	$a0,11524($s8)
    # Line 858
    mov.d	$f12,$f30
    jal	glNormal3d
    # Line 857
    sw	$a0,5924($zero)
    ld	$gp,40($sp)
    # Line 860
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 859
    sw	$a1,5924($zero)
.end __glce_Normal3d

# Function: __glce_Normal3dv
# Declared: Line 865 (Source lines: 866-876)
# Address: 0x0dbc4900 - 0x0dbc4974 (Size: 116 bytes, Frame: 192)
.globl __glce_Normal3dv
.ent __glce_Normal3dv
__glce_Normal3dv:
    # Line 866
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 868
    lw	$at,__glCurrentContext
    # Line 866
    lui	$v0,0x4
    addiu	$v0,$v0,-25192
    addu	$gp,$t9,$v0
    # Line 870
    lw	$v0,5928($zero)
    # Line 872
    # lw $t9, -17484($gp) # &glNormal3dv
    sd	$at,32($sp)
    # Line 871
    lw	$at,7408($at)
    sd	$v0,24($sp)
    # Line 872
    jal	glNormal3dv
    # Line 871
    sw	$at,5928($zero)
    # Line 873
    ld	$v1,32($sp)
    # Line 874
    # lw $t9, -17484($gp) # &glNormal3dv
    # Line 873
    lw	$v1,11528($v1)
    # Line 874
    move	$a0,$s8
    jal	glNormal3dv
    # Line 873
    sw	$v1,5928($zero)
    ld	$gp,16($sp)
    # Line 876
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 875
    sw	$a0,5928($zero)
.end __glce_Normal3dv

# Function: __glce_Normal3f
# Declared: Line 881 (Source lines: 882-892)
# Address: 0x0dbc4974 - 0x0dbc49f8 (Size: 132 bytes, Frame: 224)
.globl __glce_Normal3f
.ent __glce_Normal3f
__glce_Normal3f:
    # Line 882
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,24($sp)
    # Line 886
    lw	$v0,5932($zero)
    sd	$gp,40($sp)
    # Line 882
    lui	$v1,0x4
    addiu	$v1,$v1,-25308
    sd	$s8,32($sp)
    # Line 884
    lw	$s8,__glCurrentContext
    # Line 882
    addu	$gp,$t9,$v1
    # Line 888
    # lw $t9, -17480($gp) # &glNormal3f
    # Line 887
    lw	$at,7412($s8)
    sd	$v0,48($sp)
    # Line 888
    jal	glNormal3f
    # Line 887
    sw	$at,5932($zero)
    ldc1	$f14,8($sp)
    # Line 890
    ldc1	$f13,16($sp)
    # lw $t9, -17480($gp) # &glNormal3f
    # Line 889
    lw	$a0,11532($s8)
    # Line 890
    mov.s	$f12,$f30
    jal	glNormal3f
    # Line 889
    sw	$a0,5932($zero)
    ld	$gp,40($sp)
    # Line 892
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 891
    sw	$a1,5932($zero)
.end __glce_Normal3f

# Function: __glce_Normal3fv
# Declared: Line 897 (Source lines: 898-908)
# Address: 0x0dbc49f8 - 0x0dbc4a6c (Size: 116 bytes, Frame: 192)
.globl __glce_Normal3fv
.ent __glce_Normal3fv
__glce_Normal3fv:
    # Line 898
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 900
    lw	$at,__glCurrentContext
    # Line 898
    lui	$v0,0x4
    addiu	$v0,$v0,-25440
    addu	$gp,$t9,$v0
    # Line 902
    lw	$v0,5936($zero)
    # Line 904
    # lw $t9, -17476($gp) # &glNormal3fv
    sd	$at,32($sp)
    # Line 903
    lw	$at,7416($at)
    sd	$v0,24($sp)
    # Line 904
    jal	glNormal3fv
    # Line 903
    sw	$at,5936($zero)
    # Line 905
    ld	$v1,32($sp)
    # Line 906
    # lw $t9, -17476($gp) # &glNormal3fv
    # Line 905
    lw	$v1,11536($v1)
    # Line 906
    move	$a0,$s8
    jal	glNormal3fv
    # Line 905
    sw	$v1,5936($zero)
    ld	$gp,16($sp)
    # Line 908
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 907
    sw	$a0,5936($zero)
.end __glce_Normal3fv

# Function: __glce_Normal3i
# Declared: Line 913 (Source lines: 914-924)
# Address: 0x0dbc4a6c - 0x0dbc4af0 (Size: 132 bytes, Frame: 224)
.globl __glce_Normal3i
.ent __glce_Normal3i
__glce_Normal3i:
    # Line 914
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 916
    lw	$at,__glCurrentContext
    # Line 914
    lui	$v0,0x4
    addiu	$v0,$v0,-25556
    addu	$gp,$t9,$v0
    # Line 918
    lw	$v0,5940($zero)
    # Line 920
    # lw $t9, -17472($gp) # &glNormal3i
    sd	$at,32($sp)
    # Line 919
    lw	$at,7420($at)
    sd	$v0,24($sp)
    # Line 920
    jal	glNormal3i
    # Line 919
    sw	$at,5940($zero)
    ld	$a2,40($sp)
    # Line 921
    ld	$v1,32($sp)
    # Line 922
    ld	$a1,48($sp)
    # lw $t9, -17472($gp) # &glNormal3i
    # Line 921
    lw	$v1,11540($v1)
    # Line 922
    move	$a0,$s8
    jal	glNormal3i
    # Line 921
    sw	$v1,5940($zero)
    ld	$gp,16($sp)
    # Line 924
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 923
    sw	$a0,5940($zero)
.end __glce_Normal3i

# Function: __glce_Normal3iv
# Declared: Line 929 (Source lines: 930-940)
# Address: 0x0dbc4af0 - 0x0dbc4b64 (Size: 116 bytes, Frame: 192)
.globl __glce_Normal3iv
.ent __glce_Normal3iv
__glce_Normal3iv:
    # Line 930
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 932
    lw	$at,__glCurrentContext
    # Line 930
    lui	$v0,0x4
    addiu	$v0,$v0,-25688
    addu	$gp,$t9,$v0
    # Line 934
    lw	$v0,5944($zero)
    # Line 936
    # lw $t9, -17468($gp) # &glNormal3iv
    sd	$at,32($sp)
    # Line 935
    lw	$at,7424($at)
    sd	$v0,24($sp)
    # Line 936
    jal	glNormal3iv
    # Line 935
    sw	$at,5944($zero)
    # Line 937
    ld	$v1,32($sp)
    # Line 938
    # lw $t9, -17468($gp) # &glNormal3iv
    # Line 937
    lw	$v1,11544($v1)
    # Line 938
    move	$a0,$s8
    jal	glNormal3iv
    # Line 937
    sw	$v1,5944($zero)
    ld	$gp,16($sp)
    # Line 940
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 939
    sw	$a0,5944($zero)
.end __glce_Normal3iv

# Function: __glce_Normal3s
# Declared: Line 945 (Source lines: 946-956)
# Address: 0x0dbc4b64 - 0x0dbc4be8 (Size: 132 bytes, Frame: 224)
.globl __glce_Normal3s
.ent __glce_Normal3s
__glce_Normal3s:
    # Line 946
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 948
    lw	$at,__glCurrentContext
    # Line 946
    lui	$v0,0x4
    addiu	$v0,$v0,-25804
    addu	$gp,$t9,$v0
    # Line 950
    lw	$v0,5948($zero)
    # Line 952
    # lw $t9, -17464($gp) # &glNormal3s
    sd	$at,32($sp)
    # Line 951
    lw	$at,7428($at)
    sd	$v0,24($sp)
    # Line 952
    jal	glNormal3s
    # Line 951
    sw	$at,5948($zero)
    ld	$a2,40($sp)
    # Line 953
    ld	$v1,32($sp)
    # Line 954
    ld	$a1,48($sp)
    # lw $t9, -17464($gp) # &glNormal3s
    # Line 953
    lw	$v1,11548($v1)
    # Line 954
    move	$a0,$s8
    jal	glNormal3s
    # Line 953
    sw	$v1,5948($zero)
    ld	$gp,16($sp)
    # Line 956
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 955
    sw	$a0,5948($zero)
.end __glce_Normal3s

# Function: __glce_Normal3sv
# Declared: Line 961 (Source lines: 962-972)
# Address: 0x0dbc4be8 - 0x0dbc4c5c (Size: 116 bytes, Frame: 192)
.globl __glce_Normal3sv
.ent __glce_Normal3sv
__glce_Normal3sv:
    # Line 962
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 964
    lw	$at,__glCurrentContext
    # Line 962
    lui	$v0,0x4
    addiu	$v0,$v0,-25936
    addu	$gp,$t9,$v0
    # Line 966
    lw	$v0,5952($zero)
    # Line 968
    # lw $t9, -17460($gp) # &glNormal3sv
    sd	$at,32($sp)
    # Line 967
    lw	$at,7432($at)
    sd	$v0,24($sp)
    # Line 968
    jal	glNormal3sv
    # Line 967
    sw	$at,5952($zero)
    # Line 969
    ld	$v1,32($sp)
    # Line 970
    # lw $t9, -17460($gp) # &glNormal3sv
    # Line 969
    lw	$v1,11552($v1)
    # Line 970
    move	$a0,$s8
    jal	glNormal3sv
    # Line 969
    sw	$v1,5952($zero)
    ld	$gp,16($sp)
    # Line 972
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 971
    sw	$a0,5952($zero)
.end __glce_Normal3sv

# Function: __glce_RasterPos2d
# Declared: Line 977 (Source lines: 978-988)
# Address: 0x0dbc4c5c - 0x0dbc4cd8 (Size: 124 bytes, Frame: 192)
.globl __glce_RasterPos2d
.ent __glce_RasterPos2d
__glce_RasterPos2d:
    # Line 978
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,16($sp)
    # Line 982
    lw	$v0,6084($zero)
    sd	$gp,32($sp)
    # Line 978
    lui	$v1,0x4
    addiu	$v1,$v1,-26052
    sd	$s8,24($sp)
    # Line 980
    lw	$s8,__glCurrentContext
    # Line 978
    addu	$gp,$t9,$v1
    # Line 984
    # lw $t9, -17456($gp) # &glRasterPos2d
    # Line 983
    lw	$at,7564($s8)
    sd	$v0,40($sp)
    # Line 984
    jal	glRasterPos2d
    # Line 983
    sw	$at,6084($zero)
    ldc1	$f13,8($sp)
    # Line 986
    # lw $t9, -17456($gp) # &glRasterPos2d
    # Line 985
    lw	$a0,11684($s8)
    # Line 986
    mov.d	$f12,$f30
    jal	glRasterPos2d
    # Line 985
    sw	$a0,6084($zero)
    ld	$gp,32($sp)
    # Line 988
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 987
    sw	$a1,6084($zero)
.end __glce_RasterPos2d

# Function: __glce_RasterPos2dv
# Declared: Line 993 (Source lines: 994-1004)
# Address: 0x0dbc4cd8 - 0x0dbc4d4c (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos2dv
.ent __glce_RasterPos2dv
__glce_RasterPos2dv:
    # Line 994
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 996
    lw	$at,__glCurrentContext
    # Line 994
    lui	$v0,0x4
    addiu	$v0,$v0,-26176
    addu	$gp,$t9,$v0
    # Line 998
    lw	$v0,6088($zero)
    # Line 1000
    # lw $t9, -17452($gp) # &glRasterPos2dv
    sd	$at,32($sp)
    # Line 999
    lw	$at,7568($at)
    sd	$v0,24($sp)
    # Line 1000
    jal	glRasterPos2dv
    # Line 999
    sw	$at,6088($zero)
    # Line 1001
    ld	$v1,32($sp)
    # Line 1002
    # lw $t9, -17452($gp) # &glRasterPos2dv
    # Line 1001
    lw	$v1,11688($v1)
    # Line 1002
    move	$a0,$s8
    jal	glRasterPos2dv
    # Line 1001
    sw	$v1,6088($zero)
    ld	$gp,16($sp)
    # Line 1004
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1003
    sw	$a0,6088($zero)
.end __glce_RasterPos2dv

# Function: __glce_RasterPos2f
# Declared: Line 1009 (Source lines: 1010-1020)
# Address: 0x0dbc4d4c - 0x0dbc4dc8 (Size: 124 bytes, Frame: 192)
.globl __glce_RasterPos2f
.ent __glce_RasterPos2f
__glce_RasterPos2f:
    # Line 1010
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,16($sp)
    # Line 1014
    lw	$v0,6092($zero)
    sd	$gp,32($sp)
    # Line 1010
    lui	$v1,0x4
    addiu	$v1,$v1,-26292
    sd	$s8,24($sp)
    # Line 1012
    lw	$s8,__glCurrentContext
    # Line 1010
    addu	$gp,$t9,$v1
    # Line 1016
    # lw $t9, -17448($gp) # &glRasterPos2f
    # Line 1015
    lw	$at,7572($s8)
    sd	$v0,40($sp)
    # Line 1016
    jal	glRasterPos2f
    # Line 1015
    sw	$at,6092($zero)
    ldc1	$f13,8($sp)
    # Line 1018
    # lw $t9, -17448($gp) # &glRasterPos2f
    # Line 1017
    lw	$a0,11692($s8)
    # Line 1018
    mov.s	$f12,$f30
    jal	glRasterPos2f
    # Line 1017
    sw	$a0,6092($zero)
    ld	$gp,32($sp)
    # Line 1020
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1019
    sw	$a1,6092($zero)
.end __glce_RasterPos2f

# Function: __glce_RasterPos2fv
# Declared: Line 1025 (Source lines: 1026-1036)
# Address: 0x0dbc4dc8 - 0x0dbc4e3c (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos2fv
.ent __glce_RasterPos2fv
__glce_RasterPos2fv:
    # Line 1026
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1028
    lw	$at,__glCurrentContext
    # Line 1026
    lui	$v0,0x4
    addiu	$v0,$v0,-26416
    addu	$gp,$t9,$v0
    # Line 1030
    lw	$v0,6096($zero)
    # Line 1032
    # lw $t9, -17444($gp) # &glRasterPos2fv
    sd	$at,32($sp)
    # Line 1031
    lw	$at,7576($at)
    sd	$v0,24($sp)
    # Line 1032
    jal	glRasterPos2fv
    # Line 1031
    sw	$at,6096($zero)
    # Line 1033
    ld	$v1,32($sp)
    # Line 1034
    # lw $t9, -17444($gp) # &glRasterPos2fv
    # Line 1033
    lw	$v1,11696($v1)
    # Line 1034
    move	$a0,$s8
    jal	glRasterPos2fv
    # Line 1033
    sw	$v1,6096($zero)
    ld	$gp,16($sp)
    # Line 1036
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1035
    sw	$a0,6096($zero)
.end __glce_RasterPos2fv

# Function: __glce_RasterPos2i
# Declared: Line 1041 (Source lines: 1042-1052)
# Address: 0x0dbc4e3c - 0x0dbc4eb8 (Size: 124 bytes, Frame: 192)
.globl __glce_RasterPos2i
.ent __glce_RasterPos2i
__glce_RasterPos2i:
    # Line 1042
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1044
    lw	$at,__glCurrentContext
    # Line 1042
    lui	$v0,0x4
    addiu	$v0,$v0,-26532
    addu	$gp,$t9,$v0
    # Line 1046
    lw	$v0,6100($zero)
    # Line 1048
    # lw $t9, -17440($gp) # &glRasterPos2i
    sd	$at,32($sp)
    # Line 1047
    lw	$at,7580($at)
    sd	$v0,24($sp)
    # Line 1048
    jal	glRasterPos2i
    # Line 1047
    sw	$at,6100($zero)
    # Line 1049
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 1050
    # lw $t9, -17440($gp) # &glRasterPos2i
    # Line 1049
    lw	$v1,11700($v1)
    # Line 1050
    move	$a0,$s8
    jal	glRasterPos2i
    # Line 1049
    sw	$v1,6100($zero)
    ld	$gp,16($sp)
    # Line 1052
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1051
    sw	$a0,6100($zero)
.end __glce_RasterPos2i

# Function: __glce_RasterPos2iv
# Declared: Line 1057 (Source lines: 1058-1068)
# Address: 0x0dbc4eb8 - 0x0dbc4f2c (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos2iv
.ent __glce_RasterPos2iv
__glce_RasterPos2iv:
    # Line 1058
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1060
    lw	$at,__glCurrentContext
    # Line 1058
    lui	$v0,0x4
    addiu	$v0,$v0,-26656
    addu	$gp,$t9,$v0
    # Line 1062
    lw	$v0,6104($zero)
    # Line 1064
    # lw $t9, -17436($gp) # &glRasterPos2iv
    sd	$at,32($sp)
    # Line 1063
    lw	$at,7584($at)
    sd	$v0,24($sp)
    # Line 1064
    jal	glRasterPos2iv
    # Line 1063
    sw	$at,6104($zero)
    # Line 1065
    ld	$v1,32($sp)
    # Line 1066
    # lw $t9, -17436($gp) # &glRasterPos2iv
    # Line 1065
    lw	$v1,11704($v1)
    # Line 1066
    move	$a0,$s8
    jal	glRasterPos2iv
    # Line 1065
    sw	$v1,6104($zero)
    ld	$gp,16($sp)
    # Line 1068
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1067
    sw	$a0,6104($zero)
.end __glce_RasterPos2iv

# Function: __glce_RasterPos2s
# Declared: Line 1073 (Source lines: 1074-1084)
# Address: 0x0dbc4f2c - 0x0dbc4fa8 (Size: 124 bytes, Frame: 192)
.globl __glce_RasterPos2s
.ent __glce_RasterPos2s
__glce_RasterPos2s:
    # Line 1074
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1076
    lw	$at,__glCurrentContext
    # Line 1074
    lui	$v0,0x4
    addiu	$v0,$v0,-26772
    addu	$gp,$t9,$v0
    # Line 1078
    lw	$v0,6108($zero)
    # Line 1080
    # lw $t9, -17432($gp) # &glRasterPos2s
    sd	$at,32($sp)
    # Line 1079
    lw	$at,7588($at)
    sd	$v0,24($sp)
    # Line 1080
    jal	glRasterPos2s
    # Line 1079
    sw	$at,6108($zero)
    # Line 1081
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 1082
    # lw $t9, -17432($gp) # &glRasterPos2s
    # Line 1081
    lw	$v1,11708($v1)
    # Line 1082
    move	$a0,$s8
    jal	glRasterPos2s
    # Line 1081
    sw	$v1,6108($zero)
    ld	$gp,16($sp)
    # Line 1084
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1083
    sw	$a0,6108($zero)
.end __glce_RasterPos2s

# Function: __glce_RasterPos2sv
# Declared: Line 1089 (Source lines: 1090-1100)
# Address: 0x0dbc4fa8 - 0x0dbc501c (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos2sv
.ent __glce_RasterPos2sv
__glce_RasterPos2sv:
    # Line 1090
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1092
    lw	$at,__glCurrentContext
    # Line 1090
    lui	$v0,0x4
    addiu	$v0,$v0,-26896
    addu	$gp,$t9,$v0
    # Line 1094
    lw	$v0,6112($zero)
    # Line 1096
    # lw $t9, -17428($gp) # &glRasterPos2sv
    sd	$at,32($sp)
    # Line 1095
    lw	$at,7592($at)
    sd	$v0,24($sp)
    # Line 1096
    jal	glRasterPos2sv
    # Line 1095
    sw	$at,6112($zero)
    # Line 1097
    ld	$v1,32($sp)
    # Line 1098
    # lw $t9, -17428($gp) # &glRasterPos2sv
    # Line 1097
    lw	$v1,11712($v1)
    # Line 1098
    move	$a0,$s8
    jal	glRasterPos2sv
    # Line 1097
    sw	$v1,6112($zero)
    ld	$gp,16($sp)
    # Line 1100
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1099
    sw	$a0,6112($zero)
.end __glce_RasterPos2sv

# Function: __glce_RasterPos3d
# Declared: Line 1105 (Source lines: 1106-1116)
# Address: 0x0dbc501c - 0x0dbc50a0 (Size: 132 bytes, Frame: 224)
.globl __glce_RasterPos3d
.ent __glce_RasterPos3d
__glce_RasterPos3d:
    # Line 1106
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,24($sp)
    # Line 1110
    lw	$v0,6116($zero)
    sd	$gp,40($sp)
    # Line 1106
    lui	$v1,0x4
    addiu	$v1,$v1,-27012
    sd	$s8,32($sp)
    # Line 1108
    lw	$s8,__glCurrentContext
    # Line 1106
    addu	$gp,$t9,$v1
    # Line 1112
    # lw $t9, -17424($gp) # &glRasterPos3d
    # Line 1111
    lw	$at,7596($s8)
    sd	$v0,48($sp)
    # Line 1112
    jal	glRasterPos3d
    # Line 1111
    sw	$at,6116($zero)
    ldc1	$f14,8($sp)
    # Line 1114
    ldc1	$f13,16($sp)
    # lw $t9, -17424($gp) # &glRasterPos3d
    # Line 1113
    lw	$a0,11716($s8)
    # Line 1114
    mov.d	$f12,$f30
    jal	glRasterPos3d
    # Line 1113
    sw	$a0,6116($zero)
    ld	$gp,40($sp)
    # Line 1116
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1115
    sw	$a1,6116($zero)
.end __glce_RasterPos3d

# Function: __glce_RasterPos3dv
# Declared: Line 1121 (Source lines: 1122-1132)
# Address: 0x0dbc50a0 - 0x0dbc5114 (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos3dv
.ent __glce_RasterPos3dv
__glce_RasterPos3dv:
    # Line 1122
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1124
    lw	$at,__glCurrentContext
    # Line 1122
    lui	$v0,0x4
    addiu	$v0,$v0,-27144
    addu	$gp,$t9,$v0
    # Line 1126
    lw	$v0,6120($zero)
    # Line 1128
    # lw $t9, -17420($gp) # &glRasterPos3dv
    sd	$at,32($sp)
    # Line 1127
    lw	$at,7600($at)
    sd	$v0,24($sp)
    # Line 1128
    jal	glRasterPos3dv
    # Line 1127
    sw	$at,6120($zero)
    # Line 1129
    ld	$v1,32($sp)
    # Line 1130
    # lw $t9, -17420($gp) # &glRasterPos3dv
    # Line 1129
    lw	$v1,11720($v1)
    # Line 1130
    move	$a0,$s8
    jal	glRasterPos3dv
    # Line 1129
    sw	$v1,6120($zero)
    ld	$gp,16($sp)
    # Line 1132
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1131
    sw	$a0,6120($zero)
.end __glce_RasterPos3dv

# Function: __glce_RasterPos3f
# Declared: Line 1137 (Source lines: 1138-1148)
# Address: 0x0dbc5114 - 0x0dbc5198 (Size: 132 bytes, Frame: 224)
.globl __glce_RasterPos3f
.ent __glce_RasterPos3f
__glce_RasterPos3f:
    # Line 1138
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,24($sp)
    # Line 1142
    lw	$v0,6124($zero)
    sd	$gp,40($sp)
    # Line 1138
    lui	$v1,0x4
    addiu	$v1,$v1,-27260
    sd	$s8,32($sp)
    # Line 1140
    lw	$s8,__glCurrentContext
    # Line 1138
    addu	$gp,$t9,$v1
    # Line 1144
    # lw $t9, -17416($gp) # &glRasterPos3f
    # Line 1143
    lw	$at,7604($s8)
    sd	$v0,48($sp)
    # Line 1144
    jal	glRasterPos3f
    # Line 1143
    sw	$at,6124($zero)
    ldc1	$f14,8($sp)
    # Line 1146
    ldc1	$f13,16($sp)
    # lw $t9, -17416($gp) # &glRasterPos3f
    # Line 1145
    lw	$a0,11724($s8)
    # Line 1146
    mov.s	$f12,$f30
    jal	glRasterPos3f
    # Line 1145
    sw	$a0,6124($zero)
    ld	$gp,40($sp)
    # Line 1148
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1147
    sw	$a1,6124($zero)
.end __glce_RasterPos3f

# Function: __glce_RasterPos3fv
# Declared: Line 1153 (Source lines: 1154-1164)
# Address: 0x0dbc5198 - 0x0dbc520c (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos3fv
.ent __glce_RasterPos3fv
__glce_RasterPos3fv:
    # Line 1154
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1156
    lw	$at,__glCurrentContext
    # Line 1154
    lui	$v0,0x4
    addiu	$v0,$v0,-27392
    addu	$gp,$t9,$v0
    # Line 1158
    lw	$v0,6128($zero)
    # Line 1160
    # lw $t9, -17412($gp) # &glRasterPos3fv
    sd	$at,32($sp)
    # Line 1159
    lw	$at,7608($at)
    sd	$v0,24($sp)
    # Line 1160
    jal	glRasterPos3fv
    # Line 1159
    sw	$at,6128($zero)
    # Line 1161
    ld	$v1,32($sp)
    # Line 1162
    # lw $t9, -17412($gp) # &glRasterPos3fv
    # Line 1161
    lw	$v1,11728($v1)
    # Line 1162
    move	$a0,$s8
    jal	glRasterPos3fv
    # Line 1161
    sw	$v1,6128($zero)
    ld	$gp,16($sp)
    # Line 1164
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1163
    sw	$a0,6128($zero)
.end __glce_RasterPos3fv

# Function: __glce_RasterPos3i
# Declared: Line 1169 (Source lines: 1170-1180)
# Address: 0x0dbc520c - 0x0dbc5290 (Size: 132 bytes, Frame: 224)
.globl __glce_RasterPos3i
.ent __glce_RasterPos3i
__glce_RasterPos3i:
    # Line 1170
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1172
    lw	$at,__glCurrentContext
    # Line 1170
    lui	$v0,0x4
    addiu	$v0,$v0,-27508
    addu	$gp,$t9,$v0
    # Line 1174
    lw	$v0,6132($zero)
    # Line 1176
    # lw $t9, -17408($gp) # &glRasterPos3i
    sd	$at,32($sp)
    # Line 1175
    lw	$at,7612($at)
    sd	$v0,24($sp)
    # Line 1176
    jal	glRasterPos3i
    # Line 1175
    sw	$at,6132($zero)
    ld	$a2,40($sp)
    # Line 1177
    ld	$v1,32($sp)
    # Line 1178
    ld	$a1,48($sp)
    # lw $t9, -17408($gp) # &glRasterPos3i
    # Line 1177
    lw	$v1,11732($v1)
    # Line 1178
    move	$a0,$s8
    jal	glRasterPos3i
    # Line 1177
    sw	$v1,6132($zero)
    ld	$gp,16($sp)
    # Line 1180
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1179
    sw	$a0,6132($zero)
.end __glce_RasterPos3i

# Function: __glce_RasterPos3iv
# Declared: Line 1185 (Source lines: 1186-1196)
# Address: 0x0dbc5290 - 0x0dbc5304 (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos3iv
.ent __glce_RasterPos3iv
__glce_RasterPos3iv:
    # Line 1186
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1188
    lw	$at,__glCurrentContext
    # Line 1186
    lui	$v0,0x4
    addiu	$v0,$v0,-27640
    addu	$gp,$t9,$v0
    # Line 1190
    lw	$v0,6136($zero)
    # Line 1192
    # lw $t9, -17404($gp) # &glRasterPos3iv
    sd	$at,32($sp)
    # Line 1191
    lw	$at,7616($at)
    sd	$v0,24($sp)
    # Line 1192
    jal	glRasterPos3iv
    # Line 1191
    sw	$at,6136($zero)
    # Line 1193
    ld	$v1,32($sp)
    # Line 1194
    # lw $t9, -17404($gp) # &glRasterPos3iv
    # Line 1193
    lw	$v1,11736($v1)
    # Line 1194
    move	$a0,$s8
    jal	glRasterPos3iv
    # Line 1193
    sw	$v1,6136($zero)
    ld	$gp,16($sp)
    # Line 1196
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1195
    sw	$a0,6136($zero)
.end __glce_RasterPos3iv

# Function: __glce_RasterPos3s
# Declared: Line 1201 (Source lines: 1202-1212)
# Address: 0x0dbc5304 - 0x0dbc5388 (Size: 132 bytes, Frame: 224)
.globl __glce_RasterPos3s
.ent __glce_RasterPos3s
__glce_RasterPos3s:
    # Line 1202
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1204
    lw	$at,__glCurrentContext
    # Line 1202
    lui	$v0,0x4
    addiu	$v0,$v0,-27756
    addu	$gp,$t9,$v0
    # Line 1206
    lw	$v0,6140($zero)
    # Line 1208
    # lw $t9, -17400($gp) # &glRasterPos3s
    sd	$at,32($sp)
    # Line 1207
    lw	$at,7620($at)
    sd	$v0,24($sp)
    # Line 1208
    jal	glRasterPos3s
    # Line 1207
    sw	$at,6140($zero)
    ld	$a2,40($sp)
    # Line 1209
    ld	$v1,32($sp)
    # Line 1210
    ld	$a1,48($sp)
    # lw $t9, -17400($gp) # &glRasterPos3s
    # Line 1209
    lw	$v1,11740($v1)
    # Line 1210
    move	$a0,$s8
    jal	glRasterPos3s
    # Line 1209
    sw	$v1,6140($zero)
    ld	$gp,16($sp)
    # Line 1212
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1211
    sw	$a0,6140($zero)
.end __glce_RasterPos3s

# Function: __glce_RasterPos3sv
# Declared: Line 1217 (Source lines: 1218-1228)
# Address: 0x0dbc5388 - 0x0dbc53fc (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos3sv
.ent __glce_RasterPos3sv
__glce_RasterPos3sv:
    # Line 1218
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1220
    lw	$at,__glCurrentContext
    # Line 1218
    lui	$v0,0x4
    addiu	$v0,$v0,-27888
    addu	$gp,$t9,$v0
    # Line 1222
    lw	$v0,6144($zero)
    # Line 1224
    # lw $t9, -17396($gp) # &glRasterPos3sv
    sd	$at,32($sp)
    # Line 1223
    lw	$at,7624($at)
    sd	$v0,24($sp)
    # Line 1224
    jal	glRasterPos3sv
    # Line 1223
    sw	$at,6144($zero)
    # Line 1225
    ld	$v1,32($sp)
    # Line 1226
    # lw $t9, -17396($gp) # &glRasterPos3sv
    # Line 1225
    lw	$v1,11744($v1)
    # Line 1226
    move	$a0,$s8
    jal	glRasterPos3sv
    # Line 1225
    sw	$v1,6144($zero)
    ld	$gp,16($sp)
    # Line 1228
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1227
    sw	$a0,6144($zero)
.end __glce_RasterPos3sv

# Function: __glce_RasterPos4d
# Declared: Line 1233 (Source lines: 1234-1244)
# Address: 0x0dbc53fc - 0x0dbc5488 (Size: 140 bytes, Frame: 224)
.globl __glce_RasterPos4d
.ent __glce_RasterPos4d
__glce_RasterPos4d:
    # Line 1234
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,32($sp)
    # Line 1238
    lw	$v0,6148($zero)
    sd	$gp,48($sp)
    # Line 1234
    lui	$v1,0x4
    addiu	$v1,$v1,-28004
    sd	$s8,40($sp)
    # Line 1236
    lw	$s8,__glCurrentContext
    # Line 1234
    addu	$gp,$t9,$v1
    # Line 1240
    # lw $t9, -17392($gp) # &glRasterPos4d
    # Line 1239
    lw	$at,7628($s8)
    sd	$v0,56($sp)
    # Line 1240
    jal	glRasterPos4d
    # Line 1239
    sw	$at,6148($zero)
    ldc1	$f15,8($sp)
    # Line 1242
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17392($gp) # &glRasterPos4d
    # Line 1241
    lw	$a0,11748($s8)
    # Line 1242
    mov.d	$f12,$f30
    jal	glRasterPos4d
    # Line 1241
    sw	$a0,6148($zero)
    ld	$gp,48($sp)
    # Line 1244
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1243
    sw	$a1,6148($zero)
.end __glce_RasterPos4d

# Function: __glce_RasterPos4dv
# Declared: Line 1249 (Source lines: 1250-1260)
# Address: 0x0dbc5488 - 0x0dbc54fc (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos4dv
.ent __glce_RasterPos4dv
__glce_RasterPos4dv:
    # Line 1250
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1252
    lw	$at,__glCurrentContext
    # Line 1250
    lui	$v0,0x4
    addiu	$v0,$v0,-28144
    addu	$gp,$t9,$v0
    # Line 1254
    lw	$v0,6152($zero)
    # Line 1256
    # lw $t9, -17388($gp) # &glRasterPos4dv
    sd	$at,32($sp)
    # Line 1255
    lw	$at,7632($at)
    sd	$v0,24($sp)
    # Line 1256
    jal	glRasterPos4dv
    # Line 1255
    sw	$at,6152($zero)
    # Line 1257
    ld	$v1,32($sp)
    # Line 1258
    # lw $t9, -17388($gp) # &glRasterPos4dv
    # Line 1257
    lw	$v1,11752($v1)
    # Line 1258
    move	$a0,$s8
    jal	glRasterPos4dv
    # Line 1257
    sw	$v1,6152($zero)
    ld	$gp,16($sp)
    # Line 1260
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1259
    sw	$a0,6152($zero)
.end __glce_RasterPos4dv

# Function: __glce_RasterPos4f
# Declared: Line 1265 (Source lines: 1266-1276)
# Address: 0x0dbc54fc - 0x0dbc5588 (Size: 140 bytes, Frame: 224)
.globl __glce_RasterPos4f
.ent __glce_RasterPos4f
__glce_RasterPos4f:
    # Line 1266
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 1270
    lw	$v0,6156($zero)
    sd	$gp,48($sp)
    # Line 1266
    lui	$v1,0x4
    addiu	$v1,$v1,-28260
    sd	$s8,40($sp)
    # Line 1268
    lw	$s8,__glCurrentContext
    # Line 1266
    addu	$gp,$t9,$v1
    # Line 1272
    # lw $t9, -17384($gp) # &glRasterPos4f
    # Line 1271
    lw	$at,7636($s8)
    sd	$v0,56($sp)
    # Line 1272
    jal	glRasterPos4f
    # Line 1271
    sw	$at,6156($zero)
    ldc1	$f15,8($sp)
    # Line 1274
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17384($gp) # &glRasterPos4f
    # Line 1273
    lw	$a0,11756($s8)
    # Line 1274
    mov.s	$f12,$f30
    jal	glRasterPos4f
    # Line 1273
    sw	$a0,6156($zero)
    ld	$gp,48($sp)
    # Line 1276
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1275
    sw	$a1,6156($zero)
.end __glce_RasterPos4f

# Function: __glce_RasterPos4fv
# Declared: Line 1281 (Source lines: 1282-1292)
# Address: 0x0dbc5588 - 0x0dbc55fc (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos4fv
.ent __glce_RasterPos4fv
__glce_RasterPos4fv:
    # Line 1282
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1284
    lw	$at,__glCurrentContext
    # Line 1282
    lui	$v0,0x4
    addiu	$v0,$v0,-28400
    addu	$gp,$t9,$v0
    # Line 1286
    lw	$v0,6160($zero)
    # Line 1288
    # lw $t9, -17380($gp) # &glRasterPos4fv
    sd	$at,32($sp)
    # Line 1287
    lw	$at,7640($at)
    sd	$v0,24($sp)
    # Line 1288
    jal	glRasterPos4fv
    # Line 1287
    sw	$at,6160($zero)
    # Line 1289
    ld	$v1,32($sp)
    # Line 1290
    # lw $t9, -17380($gp) # &glRasterPos4fv
    # Line 1289
    lw	$v1,11760($v1)
    # Line 1290
    move	$a0,$s8
    jal	glRasterPos4fv
    # Line 1289
    sw	$v1,6160($zero)
    ld	$gp,16($sp)
    # Line 1292
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1291
    sw	$a0,6160($zero)
.end __glce_RasterPos4fv

# Function: __glce_RasterPos4i
# Declared: Line 1297 (Source lines: 1298-1308)
# Address: 0x0dbc55fc - 0x0dbc5688 (Size: 140 bytes, Frame: 224)
.globl __glce_RasterPos4i
.ent __glce_RasterPos4i
__glce_RasterPos4i:
    # Line 1298
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1300
    lw	$at,__glCurrentContext
    # Line 1298
    lui	$v0,0x4
    addiu	$v0,$v0,-28516
    addu	$gp,$t9,$v0
    # Line 1302
    lw	$v0,6164($zero)
    # Line 1304
    # lw $t9, -17376($gp) # &glRasterPos4i
    sd	$at,32($sp)
    # Line 1303
    lw	$at,7644($at)
    sd	$v0,24($sp)
    # Line 1304
    jal	glRasterPos4i
    # Line 1303
    sw	$at,6164($zero)
    ld	$a3,40($sp)
    # Line 1306
    ld	$a2,48($sp)
    # Line 1305
    ld	$v1,32($sp)
    # Line 1306
    ld	$a1,56($sp)
    # lw $t9, -17376($gp) # &glRasterPos4i
    # Line 1305
    lw	$v1,11764($v1)
    # Line 1306
    move	$a0,$s8
    jal	glRasterPos4i
    # Line 1305
    sw	$v1,6164($zero)
    ld	$gp,16($sp)
    # Line 1308
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1307
    sw	$a0,6164($zero)
.end __glce_RasterPos4i

# Function: __glce_RasterPos4iv
# Declared: Line 1313 (Source lines: 1314-1324)
# Address: 0x0dbc5688 - 0x0dbc56fc (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos4iv
.ent __glce_RasterPos4iv
__glce_RasterPos4iv:
    # Line 1314
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1316
    lw	$at,__glCurrentContext
    # Line 1314
    lui	$v0,0x4
    addiu	$v0,$v0,-28656
    addu	$gp,$t9,$v0
    # Line 1318
    lw	$v0,6168($zero)
    # Line 1320
    # lw $t9, -17372($gp) # &glRasterPos4iv
    sd	$at,32($sp)
    # Line 1319
    lw	$at,7648($at)
    sd	$v0,24($sp)
    # Line 1320
    jal	glRasterPos4iv
    # Line 1319
    sw	$at,6168($zero)
    # Line 1321
    ld	$v1,32($sp)
    # Line 1322
    # lw $t9, -17372($gp) # &glRasterPos4iv
    # Line 1321
    lw	$v1,11768($v1)
    # Line 1322
    move	$a0,$s8
    jal	glRasterPos4iv
    # Line 1321
    sw	$v1,6168($zero)
    ld	$gp,16($sp)
    # Line 1324
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1323
    sw	$a0,6168($zero)
.end __glce_RasterPos4iv

# Function: __glce_RasterPos4s
# Declared: Line 1329 (Source lines: 1330-1340)
# Address: 0x0dbc56fc - 0x0dbc5788 (Size: 140 bytes, Frame: 224)
.globl __glce_RasterPos4s
.ent __glce_RasterPos4s
__glce_RasterPos4s:
    # Line 1330
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1332
    lw	$at,__glCurrentContext
    # Line 1330
    lui	$v0,0x4
    addiu	$v0,$v0,-28772
    addu	$gp,$t9,$v0
    # Line 1334
    lw	$v0,6172($zero)
    # Line 1336
    # lw $t9, -17368($gp) # &glRasterPos4s
    sd	$at,32($sp)
    # Line 1335
    lw	$at,7652($at)
    sd	$v0,24($sp)
    # Line 1336
    jal	glRasterPos4s
    # Line 1335
    sw	$at,6172($zero)
    ld	$a3,40($sp)
    # Line 1338
    ld	$a2,48($sp)
    # Line 1337
    ld	$v1,32($sp)
    # Line 1338
    ld	$a1,56($sp)
    # lw $t9, -17368($gp) # &glRasterPos4s
    # Line 1337
    lw	$v1,11772($v1)
    # Line 1338
    move	$a0,$s8
    jal	glRasterPos4s
    # Line 1337
    sw	$v1,6172($zero)
    ld	$gp,16($sp)
    # Line 1340
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1339
    sw	$a0,6172($zero)
.end __glce_RasterPos4s

# Function: __glce_RasterPos4sv
# Declared: Line 1345 (Source lines: 1346-1356)
# Address: 0x0dbc5788 - 0x0dbc57fc (Size: 116 bytes, Frame: 192)
.globl __glce_RasterPos4sv
.ent __glce_RasterPos4sv
__glce_RasterPos4sv:
    # Line 1346
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1348
    lw	$at,__glCurrentContext
    # Line 1346
    lui	$v0,0x4
    addiu	$v0,$v0,-28912
    addu	$gp,$t9,$v0
    # Line 1350
    lw	$v0,6176($zero)
    # Line 1352
    # lw $t9, -17364($gp) # &glRasterPos4sv
    sd	$at,32($sp)
    # Line 1351
    lw	$at,7656($at)
    sd	$v0,24($sp)
    # Line 1352
    jal	glRasterPos4sv
    # Line 1351
    sw	$at,6176($zero)
    # Line 1353
    ld	$v1,32($sp)
    # Line 1354
    # lw $t9, -17364($gp) # &glRasterPos4sv
    # Line 1353
    lw	$v1,11776($v1)
    # Line 1354
    move	$a0,$s8
    jal	glRasterPos4sv
    # Line 1353
    sw	$v1,6176($zero)
    ld	$gp,16($sp)
    # Line 1356
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1355
    sw	$a0,6176($zero)
.end __glce_RasterPos4sv

# Function: __glce_Rectd
# Declared: Line 1361 (Source lines: 1362-1372)
# Address: 0x0dbc57fc - 0x0dbc5888 (Size: 140 bytes, Frame: 224)
.globl __glce_Rectd
.ent __glce_Rectd
__glce_Rectd:
    # Line 1362
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,32($sp)
    # Line 1366
    lw	$v0,6180($zero)
    sd	$gp,48($sp)
    # Line 1362
    lui	$v1,0x4
    addiu	$v1,$v1,-29028
    sd	$s8,40($sp)
    # Line 1364
    lw	$s8,__glCurrentContext
    # Line 1362
    addu	$gp,$t9,$v1
    # Line 1368
    # lw $t9, -17360($gp) # &glRectd
    # Line 1367
    lw	$at,7660($s8)
    sd	$v0,56($sp)
    # Line 1368
    jal	glRectd
    # Line 1367
    sw	$at,6180($zero)
    ldc1	$f15,8($sp)
    # Line 1370
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17360($gp) # &glRectd
    # Line 1369
    lw	$a0,11780($s8)
    # Line 1370
    mov.d	$f12,$f30
    jal	glRectd
    # Line 1369
    sw	$a0,6180($zero)
    ld	$gp,48($sp)
    # Line 1372
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1371
    sw	$a1,6180($zero)
.end __glce_Rectd

# Function: __glce_Rectdv
# Declared: Line 1377 (Source lines: 1378-1388)
# Address: 0x0dbc5888 - 0x0dbc5904 (Size: 124 bytes, Frame: 192)
.globl __glce_Rectdv
.ent __glce_Rectdv
__glce_Rectdv:
    # Line 1378
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1380
    lw	$at,__glCurrentContext
    # Line 1378
    lui	$v0,0x4
    addiu	$v0,$v0,-29168
    addu	$gp,$t9,$v0
    # Line 1382
    lw	$v0,6184($zero)
    # Line 1384
    # lw $t9, -17356($gp) # &glRectdv
    sd	$at,32($sp)
    # Line 1383
    lw	$at,7664($at)
    sd	$v0,24($sp)
    # Line 1384
    jal	glRectdv
    # Line 1383
    sw	$at,6184($zero)
    # Line 1385
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 1386
    # lw $t9, -17356($gp) # &glRectdv
    # Line 1385
    lw	$v1,11784($v1)
    # Line 1386
    move	$a0,$s8
    jal	glRectdv
    # Line 1385
    sw	$v1,6184($zero)
    ld	$gp,16($sp)
    # Line 1388
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1387
    sw	$a0,6184($zero)
.end __glce_Rectdv

# Function: __glce_Rectf
# Declared: Line 1393 (Source lines: 1394-1404)
# Address: 0x0dbc5904 - 0x0dbc5990 (Size: 140 bytes, Frame: 224)
.globl __glce_Rectf
.ent __glce_Rectf
__glce_Rectf:
    # Line 1394
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 1398
    lw	$v0,6188($zero)
    sd	$gp,48($sp)
    # Line 1394
    lui	$v1,0x4
    addiu	$v1,$v1,-29292
    sd	$s8,40($sp)
    # Line 1396
    lw	$s8,__glCurrentContext
    # Line 1394
    addu	$gp,$t9,$v1
    # Line 1400
    # lw $t9, -17352($gp) # &glRectf
    # Line 1399
    lw	$at,7668($s8)
    sd	$v0,56($sp)
    # Line 1400
    jal	glRectf
    # Line 1399
    sw	$at,6188($zero)
    ldc1	$f15,8($sp)
    # Line 1402
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17352($gp) # &glRectf
    # Line 1401
    lw	$a0,11788($s8)
    # Line 1402
    mov.s	$f12,$f30
    jal	glRectf
    # Line 1401
    sw	$a0,6188($zero)
    ld	$gp,48($sp)
    # Line 1404
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1403
    sw	$a1,6188($zero)
.end __glce_Rectf

# Function: __glce_Rectfv
# Declared: Line 1409 (Source lines: 1410-1420)
# Address: 0x0dbc5990 - 0x0dbc5a0c (Size: 124 bytes, Frame: 192)
.globl __glce_Rectfv
.ent __glce_Rectfv
__glce_Rectfv:
    # Line 1410
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1412
    lw	$at,__glCurrentContext
    # Line 1410
    lui	$v0,0x4
    addiu	$v0,$v0,-29432
    addu	$gp,$t9,$v0
    # Line 1414
    lw	$v0,6192($zero)
    # Line 1416
    # lw $t9, -17348($gp) # &glRectfv
    sd	$at,32($sp)
    # Line 1415
    lw	$at,7672($at)
    sd	$v0,24($sp)
    # Line 1416
    jal	glRectfv
    # Line 1415
    sw	$at,6192($zero)
    # Line 1417
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 1418
    # lw $t9, -17348($gp) # &glRectfv
    # Line 1417
    lw	$v1,11792($v1)
    # Line 1418
    move	$a0,$s8
    jal	glRectfv
    # Line 1417
    sw	$v1,6192($zero)
    ld	$gp,16($sp)
    # Line 1420
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1419
    sw	$a0,6192($zero)
.end __glce_Rectfv

# Function: __glce_Recti
# Declared: Line 1425 (Source lines: 1426-1436)
# Address: 0x0dbc5a0c - 0x0dbc5a98 (Size: 140 bytes, Frame: 224)
.globl __glce_Recti
.ent __glce_Recti
__glce_Recti:
    # Line 1426
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1428
    lw	$at,__glCurrentContext
    # Line 1426
    lui	$v0,0x4
    addiu	$v0,$v0,-29556
    addu	$gp,$t9,$v0
    # Line 1430
    lw	$v0,6196($zero)
    # Line 1432
    # lw $t9, -17344($gp) # &glRecti
    sd	$at,32($sp)
    # Line 1431
    lw	$at,7676($at)
    sd	$v0,24($sp)
    # Line 1432
    jal	glRecti
    # Line 1431
    sw	$at,6196($zero)
    ld	$a3,40($sp)
    # Line 1434
    ld	$a2,48($sp)
    # Line 1433
    ld	$v1,32($sp)
    # Line 1434
    ld	$a1,56($sp)
    # lw $t9, -17344($gp) # &glRecti
    # Line 1433
    lw	$v1,11796($v1)
    # Line 1434
    move	$a0,$s8
    jal	glRecti
    # Line 1433
    sw	$v1,6196($zero)
    ld	$gp,16($sp)
    # Line 1436
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1435
    sw	$a0,6196($zero)
.end __glce_Recti

# Function: __glce_Rectiv
# Declared: Line 1441 (Source lines: 1442-1452)
# Address: 0x0dbc5a98 - 0x0dbc5b14 (Size: 124 bytes, Frame: 192)
.globl __glce_Rectiv
.ent __glce_Rectiv
__glce_Rectiv:
    # Line 1442
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1444
    lw	$at,__glCurrentContext
    # Line 1442
    lui	$v0,0x4
    addiu	$v0,$v0,-29696
    addu	$gp,$t9,$v0
    # Line 1446
    lw	$v0,6200($zero)
    # Line 1448
    # lw $t9, -17340($gp) # &glRectiv
    sd	$at,32($sp)
    # Line 1447
    lw	$at,7680($at)
    sd	$v0,24($sp)
    # Line 1448
    jal	glRectiv
    # Line 1447
    sw	$at,6200($zero)
    # Line 1449
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 1450
    # lw $t9, -17340($gp) # &glRectiv
    # Line 1449
    lw	$v1,11800($v1)
    # Line 1450
    move	$a0,$s8
    jal	glRectiv
    # Line 1449
    sw	$v1,6200($zero)
    ld	$gp,16($sp)
    # Line 1452
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1451
    sw	$a0,6200($zero)
.end __glce_Rectiv

# Function: __glce_Rects
# Declared: Line 1457 (Source lines: 1458-1468)
# Address: 0x0dbc5b14 - 0x0dbc5ba0 (Size: 140 bytes, Frame: 224)
.globl __glce_Rects
.ent __glce_Rects
__glce_Rects:
    # Line 1458
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1460
    lw	$at,__glCurrentContext
    # Line 1458
    lui	$v0,0x4
    addiu	$v0,$v0,-29820
    addu	$gp,$t9,$v0
    # Line 1462
    lw	$v0,6204($zero)
    # Line 1464
    # lw $t9, -17336($gp) # &glRects
    sd	$at,32($sp)
    # Line 1463
    lw	$at,7684($at)
    sd	$v0,24($sp)
    # Line 1464
    jal	glRects
    # Line 1463
    sw	$at,6204($zero)
    ld	$a3,40($sp)
    # Line 1466
    ld	$a2,48($sp)
    # Line 1465
    ld	$v1,32($sp)
    # Line 1466
    ld	$a1,56($sp)
    # lw $t9, -17336($gp) # &glRects
    # Line 1465
    lw	$v1,11804($v1)
    # Line 1466
    move	$a0,$s8
    jal	glRects
    # Line 1465
    sw	$v1,6204($zero)
    ld	$gp,16($sp)
    # Line 1468
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1467
    sw	$a0,6204($zero)
.end __glce_Rects

# Function: __glce_Rectsv
# Declared: Line 1473 (Source lines: 1474-1484)
# Address: 0x0dbc5ba0 - 0x0dbc5c1c (Size: 124 bytes, Frame: 192)
.globl __glce_Rectsv
.ent __glce_Rectsv
__glce_Rectsv:
    # Line 1474
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1476
    lw	$at,__glCurrentContext
    # Line 1474
    lui	$v0,0x4
    addiu	$v0,$v0,-29960
    addu	$gp,$t9,$v0
    # Line 1478
    lw	$v0,6208($zero)
    # Line 1480
    # lw $t9, -17332($gp) # &glRectsv
    sd	$at,32($sp)
    # Line 1479
    lw	$at,7688($at)
    sd	$v0,24($sp)
    # Line 1480
    jal	glRectsv
    # Line 1479
    sw	$at,6208($zero)
    # Line 1481
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 1482
    # lw $t9, -17332($gp) # &glRectsv
    # Line 1481
    lw	$v1,11808($v1)
    # Line 1482
    move	$a0,$s8
    jal	glRectsv
    # Line 1481
    sw	$v1,6208($zero)
    ld	$gp,16($sp)
    # Line 1484
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1483
    sw	$a0,6208($zero)
.end __glce_Rectsv

# Function: __glce_TexCoord1d
# Declared: Line 1489 (Source lines: 1490-1500)
# Address: 0x0dbc5c1c - 0x0dbc5c90 (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord1d
.ent __glce_TexCoord1d
__glce_TexCoord1d:
    # Line 1490
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,8($sp)
    # Line 1494
    lw	$v0,5956($zero)
    sd	$gp,24($sp)
    # Line 1490
    lui	$v1,0x4
    addiu	$v1,$v1,-30084
    sd	$s8,16($sp)
    # Line 1492
    lw	$s8,__glCurrentContext
    # Line 1490
    addu	$gp,$t9,$v1
    # Line 1496
    # lw $t9, -17328($gp) # &glTexCoord1d
    # Line 1495
    lw	$at,7436($s8)
    sd	$v0,32($sp)
    # Line 1496
    jal	glTexCoord1d
    # Line 1495
    sw	$at,5956($zero)
    # Line 1498
    # lw $t9, -17328($gp) # &glTexCoord1d
    # Line 1497
    lw	$a0,11556($s8)
    # Line 1498
    mov.d	$f12,$f30
    jal	glTexCoord1d
    # Line 1497
    sw	$a0,5956($zero)
    ld	$gp,24($sp)
    # Line 1500
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1499
    sw	$a1,5956($zero)
.end __glce_TexCoord1d

# Function: __glce_TexCoord1dv
# Declared: Line 1505 (Source lines: 1506-1516)
# Address: 0x0dbc5c90 - 0x0dbc5d04 (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord1dv
.ent __glce_TexCoord1dv
__glce_TexCoord1dv:
    # Line 1506
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1508
    lw	$at,__glCurrentContext
    # Line 1506
    lui	$v0,0x4
    addiu	$v0,$v0,-30200
    addu	$gp,$t9,$v0
    # Line 1510
    lw	$v0,5960($zero)
    # Line 1512
    # lw $t9, -17324($gp) # &glTexCoord1dv
    sd	$at,32($sp)
    # Line 1511
    lw	$at,7440($at)
    sd	$v0,24($sp)
    # Line 1512
    jal	glTexCoord1dv
    # Line 1511
    sw	$at,5960($zero)
    # Line 1513
    ld	$v1,32($sp)
    # Line 1514
    # lw $t9, -17324($gp) # &glTexCoord1dv
    # Line 1513
    lw	$v1,11560($v1)
    # Line 1514
    move	$a0,$s8
    jal	glTexCoord1dv
    # Line 1513
    sw	$v1,5960($zero)
    ld	$gp,16($sp)
    # Line 1516
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1515
    sw	$a0,5960($zero)
.end __glce_TexCoord1dv

# Function: __glce_TexCoord1f
# Declared: Line 1521 (Source lines: 1522-1532)
# Address: 0x0dbc5d04 - 0x0dbc5d78 (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord1f
.ent __glce_TexCoord1f
__glce_TexCoord1f:
    # Line 1522
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,8($sp)
    # Line 1526
    lw	$v0,5964($zero)
    sd	$gp,24($sp)
    # Line 1522
    lui	$v1,0x4
    addiu	$v1,$v1,-30316
    sd	$s8,16($sp)
    # Line 1524
    lw	$s8,__glCurrentContext
    # Line 1522
    addu	$gp,$t9,$v1
    # Line 1528
    # lw $t9, -17320($gp) # &glTexCoord1f
    # Line 1527
    lw	$at,7444($s8)
    sd	$v0,32($sp)
    # Line 1528
    jal	glTexCoord1f
    # Line 1527
    sw	$at,5964($zero)
    # Line 1530
    # lw $t9, -17320($gp) # &glTexCoord1f
    # Line 1529
    lw	$a0,11564($s8)
    # Line 1530
    mov.s	$f12,$f30
    jal	glTexCoord1f
    # Line 1529
    sw	$a0,5964($zero)
    ld	$gp,24($sp)
    # Line 1532
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1531
    sw	$a1,5964($zero)
.end __glce_TexCoord1f

# Function: __glce_TexCoord1fv
# Declared: Line 1537 (Source lines: 1538-1548)
# Address: 0x0dbc5d78 - 0x0dbc5dec (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord1fv
.ent __glce_TexCoord1fv
__glce_TexCoord1fv:
    # Line 1538
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1540
    lw	$at,__glCurrentContext
    # Line 1538
    lui	$v0,0x4
    addiu	$v0,$v0,-30432
    addu	$gp,$t9,$v0
    # Line 1542
    lw	$v0,5968($zero)
    # Line 1544
    # lw $t9, -17316($gp) # &glTexCoord1fv
    sd	$at,32($sp)
    # Line 1543
    lw	$at,7448($at)
    sd	$v0,24($sp)
    # Line 1544
    jal	glTexCoord1fv
    # Line 1543
    sw	$at,5968($zero)
    # Line 1545
    ld	$v1,32($sp)
    # Line 1546
    # lw $t9, -17316($gp) # &glTexCoord1fv
    # Line 1545
    lw	$v1,11568($v1)
    # Line 1546
    move	$a0,$s8
    jal	glTexCoord1fv
    # Line 1545
    sw	$v1,5968($zero)
    ld	$gp,16($sp)
    # Line 1548
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1547
    sw	$a0,5968($zero)
.end __glce_TexCoord1fv

# Function: __glce_TexCoord1i
# Declared: Line 1553 (Source lines: 1554-1564)
# Address: 0x0dbc5dec - 0x0dbc5e60 (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord1i
.ent __glce_TexCoord1i
__glce_TexCoord1i:
    # Line 1554
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1556
    lw	$at,__glCurrentContext
    # Line 1554
    lui	$v0,0x4
    addiu	$v0,$v0,-30548
    addu	$gp,$t9,$v0
    # Line 1558
    lw	$v0,5972($zero)
    # Line 1560
    # lw $t9, -17312($gp) # &glTexCoord1i
    sd	$at,32($sp)
    # Line 1559
    lw	$at,7452($at)
    sd	$v0,24($sp)
    # Line 1560
    jal	glTexCoord1i
    # Line 1559
    sw	$at,5972($zero)
    # Line 1561
    ld	$v1,32($sp)
    # Line 1562
    # lw $t9, -17312($gp) # &glTexCoord1i
    # Line 1561
    lw	$v1,11572($v1)
    # Line 1562
    move	$a0,$s8
    jal	glTexCoord1i
    # Line 1561
    sw	$v1,5972($zero)
    ld	$gp,16($sp)
    # Line 1564
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1563
    sw	$a0,5972($zero)
.end __glce_TexCoord1i

# Function: __glce_TexCoord1iv
# Declared: Line 1569 (Source lines: 1570-1580)
# Address: 0x0dbc5e60 - 0x0dbc5ed4 (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord1iv
.ent __glce_TexCoord1iv
__glce_TexCoord1iv:
    # Line 1570
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1572
    lw	$at,__glCurrentContext
    # Line 1570
    lui	$v0,0x4
    addiu	$v0,$v0,-30664
    addu	$gp,$t9,$v0
    # Line 1574
    lw	$v0,5976($zero)
    # Line 1576
    # lw $t9, -17308($gp) # &glTexCoord1iv
    sd	$at,32($sp)
    # Line 1575
    lw	$at,7456($at)
    sd	$v0,24($sp)
    # Line 1576
    jal	glTexCoord1iv
    # Line 1575
    sw	$at,5976($zero)
    # Line 1577
    ld	$v1,32($sp)
    # Line 1578
    # lw $t9, -17308($gp) # &glTexCoord1iv
    # Line 1577
    lw	$v1,11576($v1)
    # Line 1578
    move	$a0,$s8
    jal	glTexCoord1iv
    # Line 1577
    sw	$v1,5976($zero)
    ld	$gp,16($sp)
    # Line 1580
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1579
    sw	$a0,5976($zero)
.end __glce_TexCoord1iv

# Function: __glce_TexCoord1s
# Declared: Line 1585 (Source lines: 1586-1596)
# Address: 0x0dbc5ed4 - 0x0dbc5f48 (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord1s
.ent __glce_TexCoord1s
__glce_TexCoord1s:
    # Line 1586
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1588
    lw	$at,__glCurrentContext
    # Line 1586
    lui	$v0,0x4
    addiu	$v0,$v0,-30780
    addu	$gp,$t9,$v0
    # Line 1590
    lw	$v0,5980($zero)
    # Line 1592
    # lw $t9, -17304($gp) # &glTexCoord1s
    sd	$at,32($sp)
    # Line 1591
    lw	$at,7460($at)
    sd	$v0,24($sp)
    # Line 1592
    jal	glTexCoord1s
    # Line 1591
    sw	$at,5980($zero)
    # Line 1593
    ld	$v1,32($sp)
    # Line 1594
    # lw $t9, -17304($gp) # &glTexCoord1s
    # Line 1593
    lw	$v1,11580($v1)
    # Line 1594
    move	$a0,$s8
    jal	glTexCoord1s
    # Line 1593
    sw	$v1,5980($zero)
    ld	$gp,16($sp)
    # Line 1596
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1595
    sw	$a0,5980($zero)
.end __glce_TexCoord1s

# Function: __glce_TexCoord1sv
# Declared: Line 1601 (Source lines: 1602-1612)
# Address: 0x0dbc5f48 - 0x0dbc5fbc (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord1sv
.ent __glce_TexCoord1sv
__glce_TexCoord1sv:
    # Line 1602
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1604
    lw	$at,__glCurrentContext
    # Line 1602
    lui	$v0,0x4
    addiu	$v0,$v0,-30896
    addu	$gp,$t9,$v0
    # Line 1606
    lw	$v0,5984($zero)
    # Line 1608
    # lw $t9, -17300($gp) # &glTexCoord1sv
    sd	$at,32($sp)
    # Line 1607
    lw	$at,7464($at)
    sd	$v0,24($sp)
    # Line 1608
    jal	glTexCoord1sv
    # Line 1607
    sw	$at,5984($zero)
    # Line 1609
    ld	$v1,32($sp)
    # Line 1610
    # lw $t9, -17300($gp) # &glTexCoord1sv
    # Line 1609
    lw	$v1,11584($v1)
    # Line 1610
    move	$a0,$s8
    jal	glTexCoord1sv
    # Line 1609
    sw	$v1,5984($zero)
    ld	$gp,16($sp)
    # Line 1612
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1611
    sw	$a0,5984($zero)
.end __glce_TexCoord1sv

# Function: __glce_TexCoord2d
# Declared: Line 1617 (Source lines: 1618-1628)
# Address: 0x0dbc5fbc - 0x0dbc6038 (Size: 124 bytes, Frame: 192)
.globl __glce_TexCoord2d
.ent __glce_TexCoord2d
__glce_TexCoord2d:
    # Line 1618
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,16($sp)
    # Line 1622
    lw	$v0,5988($zero)
    sd	$gp,32($sp)
    # Line 1618
    lui	$v1,0x4
    addiu	$v1,$v1,-31012
    sd	$s8,24($sp)
    # Line 1620
    lw	$s8,__glCurrentContext
    # Line 1618
    addu	$gp,$t9,$v1
    # Line 1624
    # lw $t9, -17296($gp) # &glTexCoord2d
    # Line 1623
    lw	$at,7468($s8)
    sd	$v0,40($sp)
    # Line 1624
    jal	glTexCoord2d
    # Line 1623
    sw	$at,5988($zero)
    ldc1	$f13,8($sp)
    # Line 1626
    # lw $t9, -17296($gp) # &glTexCoord2d
    # Line 1625
    lw	$a0,11588($s8)
    # Line 1626
    mov.d	$f12,$f30
    jal	glTexCoord2d
    # Line 1625
    sw	$a0,5988($zero)
    ld	$gp,32($sp)
    # Line 1628
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1627
    sw	$a1,5988($zero)
.end __glce_TexCoord2d

# Function: __glce_TexCoord2dv
# Declared: Line 1633 (Source lines: 1634-1644)
# Address: 0x0dbc6038 - 0x0dbc60ac (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord2dv
.ent __glce_TexCoord2dv
__glce_TexCoord2dv:
    # Line 1634
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1636
    lw	$at,__glCurrentContext
    # Line 1634
    lui	$v0,0x4
    addiu	$v0,$v0,-31136
    addu	$gp,$t9,$v0
    # Line 1638
    lw	$v0,5992($zero)
    # Line 1640
    # lw $t9, -17292($gp) # &glTexCoord2dv
    sd	$at,32($sp)
    # Line 1639
    lw	$at,7472($at)
    sd	$v0,24($sp)
    # Line 1640
    jal	glTexCoord2dv
    # Line 1639
    sw	$at,5992($zero)
    # Line 1641
    ld	$v1,32($sp)
    # Line 1642
    # lw $t9, -17292($gp) # &glTexCoord2dv
    # Line 1641
    lw	$v1,11592($v1)
    # Line 1642
    move	$a0,$s8
    jal	glTexCoord2dv
    # Line 1641
    sw	$v1,5992($zero)
    ld	$gp,16($sp)
    # Line 1644
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1643
    sw	$a0,5992($zero)
.end __glce_TexCoord2dv

# Function: __glce_TexCoord2f
# Declared: Line 1649 (Source lines: 1650-1660)
# Address: 0x0dbc60ac - 0x0dbc6128 (Size: 124 bytes, Frame: 192)
.globl __glce_TexCoord2f
.ent __glce_TexCoord2f
__glce_TexCoord2f:
    # Line 1650
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,16($sp)
    # Line 1654
    lw	$v0,5996($zero)
    sd	$gp,32($sp)
    # Line 1650
    lui	$v1,0x4
    addiu	$v1,$v1,-31252
    sd	$s8,24($sp)
    # Line 1652
    lw	$s8,__glCurrentContext
    # Line 1650
    addu	$gp,$t9,$v1
    # Line 1656
    # lw $t9, -17288($gp) # &glTexCoord2f
    # Line 1655
    lw	$at,7476($s8)
    sd	$v0,40($sp)
    # Line 1656
    jal	glTexCoord2f
    # Line 1655
    sw	$at,5996($zero)
    ldc1	$f13,8($sp)
    # Line 1658
    # lw $t9, -17288($gp) # &glTexCoord2f
    # Line 1657
    lw	$a0,11596($s8)
    # Line 1658
    mov.s	$f12,$f30
    jal	glTexCoord2f
    # Line 1657
    sw	$a0,5996($zero)
    ld	$gp,32($sp)
    # Line 1660
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1659
    sw	$a1,5996($zero)
.end __glce_TexCoord2f

# Function: __glce_TexCoord2fv
# Declared: Line 1665 (Source lines: 1666-1676)
# Address: 0x0dbc6128 - 0x0dbc619c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord2fv
.ent __glce_TexCoord2fv
__glce_TexCoord2fv:
    # Line 1666
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1668
    lw	$at,__glCurrentContext
    # Line 1666
    lui	$v0,0x4
    addiu	$v0,$v0,-31376
    addu	$gp,$t9,$v0
    # Line 1670
    lw	$v0,6000($zero)
    # Line 1672
    # lw $t9, -17284($gp) # &glTexCoord2fv
    sd	$at,32($sp)
    # Line 1671
    lw	$at,7480($at)
    sd	$v0,24($sp)
    # Line 1672
    jal	glTexCoord2fv
    # Line 1671
    sw	$at,6000($zero)
    # Line 1673
    ld	$v1,32($sp)
    # Line 1674
    # lw $t9, -17284($gp) # &glTexCoord2fv
    # Line 1673
    lw	$v1,11600($v1)
    # Line 1674
    move	$a0,$s8
    jal	glTexCoord2fv
    # Line 1673
    sw	$v1,6000($zero)
    ld	$gp,16($sp)
    # Line 1676
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1675
    sw	$a0,6000($zero)
.end __glce_TexCoord2fv

# Function: __glce_TexCoord2i
# Declared: Line 1681 (Source lines: 1682-1692)
# Address: 0x0dbc619c - 0x0dbc6218 (Size: 124 bytes, Frame: 192)
.globl __glce_TexCoord2i
.ent __glce_TexCoord2i
__glce_TexCoord2i:
    # Line 1682
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1684
    lw	$at,__glCurrentContext
    # Line 1682
    lui	$v0,0x4
    addiu	$v0,$v0,-31492
    addu	$gp,$t9,$v0
    # Line 1686
    lw	$v0,6004($zero)
    # Line 1688
    # lw $t9, -17280($gp) # &glTexCoord2i
    sd	$at,32($sp)
    # Line 1687
    lw	$at,7484($at)
    sd	$v0,24($sp)
    # Line 1688
    jal	glTexCoord2i
    # Line 1687
    sw	$at,6004($zero)
    # Line 1689
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 1690
    # lw $t9, -17280($gp) # &glTexCoord2i
    # Line 1689
    lw	$v1,11604($v1)
    # Line 1690
    move	$a0,$s8
    jal	glTexCoord2i
    # Line 1689
    sw	$v1,6004($zero)
    ld	$gp,16($sp)
    # Line 1692
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1691
    sw	$a0,6004($zero)
.end __glce_TexCoord2i

# Function: __glce_TexCoord2iv
# Declared: Line 1697 (Source lines: 1698-1708)
# Address: 0x0dbc6218 - 0x0dbc628c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord2iv
.ent __glce_TexCoord2iv
__glce_TexCoord2iv:
    # Line 1698
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1700
    lw	$at,__glCurrentContext
    # Line 1698
    lui	$v0,0x4
    addiu	$v0,$v0,-31616
    addu	$gp,$t9,$v0
    # Line 1702
    lw	$v0,6008($zero)
    # Line 1704
    # lw $t9, -17276($gp) # &glTexCoord2iv
    sd	$at,32($sp)
    # Line 1703
    lw	$at,7488($at)
    sd	$v0,24($sp)
    # Line 1704
    jal	glTexCoord2iv
    # Line 1703
    sw	$at,6008($zero)
    # Line 1705
    ld	$v1,32($sp)
    # Line 1706
    # lw $t9, -17276($gp) # &glTexCoord2iv
    # Line 1705
    lw	$v1,11608($v1)
    # Line 1706
    move	$a0,$s8
    jal	glTexCoord2iv
    # Line 1705
    sw	$v1,6008($zero)
    ld	$gp,16($sp)
    # Line 1708
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1707
    sw	$a0,6008($zero)
.end __glce_TexCoord2iv

# Function: __glce_TexCoord2s
# Declared: Line 1713 (Source lines: 1714-1724)
# Address: 0x0dbc628c - 0x0dbc6308 (Size: 124 bytes, Frame: 192)
.globl __glce_TexCoord2s
.ent __glce_TexCoord2s
__glce_TexCoord2s:
    # Line 1714
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1716
    lw	$at,__glCurrentContext
    # Line 1714
    lui	$v0,0x4
    addiu	$v0,$v0,-31732
    addu	$gp,$t9,$v0
    # Line 1718
    lw	$v0,6012($zero)
    # Line 1720
    # lw $t9, -17272($gp) # &glTexCoord2s
    sd	$at,32($sp)
    # Line 1719
    lw	$at,7492($at)
    sd	$v0,24($sp)
    # Line 1720
    jal	glTexCoord2s
    # Line 1719
    sw	$at,6012($zero)
    # Line 1721
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 1722
    # lw $t9, -17272($gp) # &glTexCoord2s
    # Line 1721
    lw	$v1,11612($v1)
    # Line 1722
    move	$a0,$s8
    jal	glTexCoord2s
    # Line 1721
    sw	$v1,6012($zero)
    ld	$gp,16($sp)
    # Line 1724
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1723
    sw	$a0,6012($zero)
.end __glce_TexCoord2s

# Function: __glce_TexCoord2sv
# Declared: Line 1729 (Source lines: 1730-1740)
# Address: 0x0dbc6308 - 0x0dbc637c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord2sv
.ent __glce_TexCoord2sv
__glce_TexCoord2sv:
    # Line 1730
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1732
    lw	$at,__glCurrentContext
    # Line 1730
    lui	$v0,0x4
    addiu	$v0,$v0,-31856
    addu	$gp,$t9,$v0
    # Line 1734
    lw	$v0,6016($zero)
    # Line 1736
    # lw $t9, -17268($gp) # &glTexCoord2sv
    sd	$at,32($sp)
    # Line 1735
    lw	$at,7496($at)
    sd	$v0,24($sp)
    # Line 1736
    jal	glTexCoord2sv
    # Line 1735
    sw	$at,6016($zero)
    # Line 1737
    ld	$v1,32($sp)
    # Line 1738
    # lw $t9, -17268($gp) # &glTexCoord2sv
    # Line 1737
    lw	$v1,11616($v1)
    # Line 1738
    move	$a0,$s8
    jal	glTexCoord2sv
    # Line 1737
    sw	$v1,6016($zero)
    ld	$gp,16($sp)
    # Line 1740
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1739
    sw	$a0,6016($zero)
.end __glce_TexCoord2sv

# Function: __glce_TexCoord3d
# Declared: Line 1745 (Source lines: 1746-1756)
# Address: 0x0dbc637c - 0x0dbc6400 (Size: 132 bytes, Frame: 224)
.globl __glce_TexCoord3d
.ent __glce_TexCoord3d
__glce_TexCoord3d:
    # Line 1746
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,24($sp)
    # Line 1750
    lw	$v0,6020($zero)
    sd	$gp,40($sp)
    # Line 1746
    lui	$v1,0x4
    addiu	$v1,$v1,-31972
    sd	$s8,32($sp)
    # Line 1748
    lw	$s8,__glCurrentContext
    # Line 1746
    addu	$gp,$t9,$v1
    # Line 1752
    # lw $t9, -17264($gp) # &glTexCoord3d
    # Line 1751
    lw	$at,7500($s8)
    sd	$v0,48($sp)
    # Line 1752
    jal	glTexCoord3d
    # Line 1751
    sw	$at,6020($zero)
    ldc1	$f14,8($sp)
    # Line 1754
    ldc1	$f13,16($sp)
    # lw $t9, -17264($gp) # &glTexCoord3d
    # Line 1753
    lw	$a0,11620($s8)
    # Line 1754
    mov.d	$f12,$f30
    jal	glTexCoord3d
    # Line 1753
    sw	$a0,6020($zero)
    ld	$gp,40($sp)
    # Line 1756
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1755
    sw	$a1,6020($zero)
.end __glce_TexCoord3d

# Function: __glce_TexCoord3dv
# Declared: Line 1761 (Source lines: 1762-1772)
# Address: 0x0dbc6400 - 0x0dbc6474 (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord3dv
.ent __glce_TexCoord3dv
__glce_TexCoord3dv:
    # Line 1762
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1764
    lw	$at,__glCurrentContext
    # Line 1762
    lui	$v0,0x4
    addiu	$v0,$v0,-32104
    addu	$gp,$t9,$v0
    # Line 1766
    lw	$v0,6024($zero)
    # Line 1768
    # lw $t9, -17260($gp) # &glTexCoord3dv
    sd	$at,32($sp)
    # Line 1767
    lw	$at,7504($at)
    sd	$v0,24($sp)
    # Line 1768
    jal	glTexCoord3dv
    # Line 1767
    sw	$at,6024($zero)
    # Line 1769
    ld	$v1,32($sp)
    # Line 1770
    # lw $t9, -17260($gp) # &glTexCoord3dv
    # Line 1769
    lw	$v1,11624($v1)
    # Line 1770
    move	$a0,$s8
    jal	glTexCoord3dv
    # Line 1769
    sw	$v1,6024($zero)
    ld	$gp,16($sp)
    # Line 1772
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1771
    sw	$a0,6024($zero)
.end __glce_TexCoord3dv

# Function: __glce_TexCoord3f
# Declared: Line 1777 (Source lines: 1778-1788)
# Address: 0x0dbc6474 - 0x0dbc64f8 (Size: 132 bytes, Frame: 224)
.globl __glce_TexCoord3f
.ent __glce_TexCoord3f
__glce_TexCoord3f:
    # Line 1778
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,24($sp)
    # Line 1782
    lw	$v0,6028($zero)
    sd	$gp,40($sp)
    # Line 1778
    lui	$v1,0x4
    addiu	$v1,$v1,-32220
    sd	$s8,32($sp)
    # Line 1780
    lw	$s8,__glCurrentContext
    # Line 1778
    addu	$gp,$t9,$v1
    # Line 1784
    # lw $t9, -17256($gp) # &glTexCoord3f
    # Line 1783
    lw	$at,7508($s8)
    sd	$v0,48($sp)
    # Line 1784
    jal	glTexCoord3f
    # Line 1783
    sw	$at,6028($zero)
    ldc1	$f14,8($sp)
    # Line 1786
    ldc1	$f13,16($sp)
    # lw $t9, -17256($gp) # &glTexCoord3f
    # Line 1785
    lw	$a0,11628($s8)
    # Line 1786
    mov.s	$f12,$f30
    jal	glTexCoord3f
    # Line 1785
    sw	$a0,6028($zero)
    ld	$gp,40($sp)
    # Line 1788
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1787
    sw	$a1,6028($zero)
.end __glce_TexCoord3f

# Function: __glce_TexCoord3fv
# Declared: Line 1793 (Source lines: 1794-1804)
# Address: 0x0dbc64f8 - 0x0dbc656c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord3fv
.ent __glce_TexCoord3fv
__glce_TexCoord3fv:
    # Line 1794
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1796
    lw	$at,__glCurrentContext
    # Line 1794
    lui	$v0,0x4
    addiu	$v0,$v0,-32352
    addu	$gp,$t9,$v0
    # Line 1798
    lw	$v0,6032($zero)
    # Line 1800
    # lw $t9, -17252($gp) # &glTexCoord3fv
    sd	$at,32($sp)
    # Line 1799
    lw	$at,7512($at)
    sd	$v0,24($sp)
    # Line 1800
    jal	glTexCoord3fv
    # Line 1799
    sw	$at,6032($zero)
    # Line 1801
    ld	$v1,32($sp)
    # Line 1802
    # lw $t9, -17252($gp) # &glTexCoord3fv
    # Line 1801
    lw	$v1,11632($v1)
    # Line 1802
    move	$a0,$s8
    jal	glTexCoord3fv
    # Line 1801
    sw	$v1,6032($zero)
    ld	$gp,16($sp)
    # Line 1804
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1803
    sw	$a0,6032($zero)
.end __glce_TexCoord3fv

# Function: __glce_TexCoord3i
# Declared: Line 1809 (Source lines: 1810-1820)
# Address: 0x0dbc656c - 0x0dbc65f0 (Size: 132 bytes, Frame: 224)
.globl __glce_TexCoord3i
.ent __glce_TexCoord3i
__glce_TexCoord3i:
    # Line 1810
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1812
    lw	$at,__glCurrentContext
    # Line 1810
    lui	$v0,0x4
    addiu	$v0,$v0,-32468
    addu	$gp,$t9,$v0
    # Line 1814
    lw	$v0,6036($zero)
    # Line 1816
    # lw $t9, -17248($gp) # &glTexCoord3i
    sd	$at,32($sp)
    # Line 1815
    lw	$at,7516($at)
    sd	$v0,24($sp)
    # Line 1816
    jal	glTexCoord3i
    # Line 1815
    sw	$at,6036($zero)
    ld	$a2,40($sp)
    # Line 1817
    ld	$v1,32($sp)
    # Line 1818
    ld	$a1,48($sp)
    # lw $t9, -17248($gp) # &glTexCoord3i
    # Line 1817
    lw	$v1,11636($v1)
    # Line 1818
    move	$a0,$s8
    jal	glTexCoord3i
    # Line 1817
    sw	$v1,6036($zero)
    ld	$gp,16($sp)
    # Line 1820
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1819
    sw	$a0,6036($zero)
.end __glce_TexCoord3i

# Function: __glce_TexCoord3iv
# Declared: Line 1825 (Source lines: 1826-1836)
# Address: 0x0dbc65f0 - 0x0dbc6664 (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord3iv
.ent __glce_TexCoord3iv
__glce_TexCoord3iv:
    # Line 1826
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1828
    lw	$at,__glCurrentContext
    # Line 1826
    lui	$v0,0x4
    addiu	$v0,$v0,-32600
    addu	$gp,$t9,$v0
    # Line 1830
    lw	$v0,6040($zero)
    # Line 1832
    # lw $t9, -17244($gp) # &glTexCoord3iv
    sd	$at,32($sp)
    # Line 1831
    lw	$at,7520($at)
    sd	$v0,24($sp)
    # Line 1832
    jal	glTexCoord3iv
    # Line 1831
    sw	$at,6040($zero)
    # Line 1833
    ld	$v1,32($sp)
    # Line 1834
    # lw $t9, -17244($gp) # &glTexCoord3iv
    # Line 1833
    lw	$v1,11640($v1)
    # Line 1834
    move	$a0,$s8
    jal	glTexCoord3iv
    # Line 1833
    sw	$v1,6040($zero)
    ld	$gp,16($sp)
    # Line 1836
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1835
    sw	$a0,6040($zero)
.end __glce_TexCoord3iv

# Function: __glce_TexCoord3s
# Declared: Line 1841 (Source lines: 1842-1852)
# Address: 0x0dbc6664 - 0x0dbc66e8 (Size: 132 bytes, Frame: 224)
.globl __glce_TexCoord3s
.ent __glce_TexCoord3s
__glce_TexCoord3s:
    # Line 1842
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1844
    lw	$at,__glCurrentContext
    # Line 1842
    lui	$v0,0x4
    addiu	$v0,$v0,-32716
    addu	$gp,$t9,$v0
    # Line 1846
    lw	$v0,6044($zero)
    # Line 1848
    # lw $t9, -17240($gp) # &glTexCoord3s
    sd	$at,32($sp)
    # Line 1847
    lw	$at,7524($at)
    sd	$v0,24($sp)
    # Line 1848
    jal	glTexCoord3s
    # Line 1847
    sw	$at,6044($zero)
    ld	$a2,40($sp)
    # Line 1849
    ld	$v1,32($sp)
    # Line 1850
    ld	$a1,48($sp)
    # lw $t9, -17240($gp) # &glTexCoord3s
    # Line 1849
    lw	$v1,11644($v1)
    # Line 1850
    move	$a0,$s8
    jal	glTexCoord3s
    # Line 1849
    sw	$v1,6044($zero)
    ld	$gp,16($sp)
    # Line 1852
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1851
    sw	$a0,6044($zero)
.end __glce_TexCoord3s

# Function: __glce_TexCoord3sv
# Declared: Line 1857 (Source lines: 1858-1868)
# Address: 0x0dbc66e8 - 0x0dbc675c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord3sv
.ent __glce_TexCoord3sv
__glce_TexCoord3sv:
    # Line 1858
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1860
    lw	$at,__glCurrentContext
    # Line 1858
    lui	$v0,0x3
    addiu	$v0,$v0,32688
    addu	$gp,$t9,$v0
    # Line 1862
    lw	$v0,6048($zero)
    # Line 1864
    # lw $t9, -17236($gp) # &glTexCoord3sv
    sd	$at,32($sp)
    # Line 1863
    lw	$at,7528($at)
    sd	$v0,24($sp)
    # Line 1864
    jal	glTexCoord3sv
    # Line 1863
    sw	$at,6048($zero)
    # Line 1865
    ld	$v1,32($sp)
    # Line 1866
    # lw $t9, -17236($gp) # &glTexCoord3sv
    # Line 1865
    lw	$v1,11648($v1)
    # Line 1866
    move	$a0,$s8
    jal	glTexCoord3sv
    # Line 1865
    sw	$v1,6048($zero)
    ld	$gp,16($sp)
    # Line 1868
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1867
    sw	$a0,6048($zero)
.end __glce_TexCoord3sv

# Function: __glce_TexCoord4d
# Declared: Line 1873 (Source lines: 1874-1884)
# Address: 0x0dbc675c - 0x0dbc67e8 (Size: 140 bytes, Frame: 224)
.globl __glce_TexCoord4d
.ent __glce_TexCoord4d
__glce_TexCoord4d:
    # Line 1874
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,32($sp)
    # Line 1878
    lw	$v0,6052($zero)
    sd	$gp,48($sp)
    # Line 1874
    lui	$v1,0x3
    addiu	$v1,$v1,32572
    sd	$s8,40($sp)
    # Line 1876
    lw	$s8,__glCurrentContext
    # Line 1874
    addu	$gp,$t9,$v1
    # Line 1880
    # lw $t9, -17232($gp) # &glTexCoord4d
    # Line 1879
    lw	$at,7532($s8)
    sd	$v0,56($sp)
    # Line 1880
    jal	glTexCoord4d
    # Line 1879
    sw	$at,6052($zero)
    ldc1	$f15,8($sp)
    # Line 1882
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17232($gp) # &glTexCoord4d
    # Line 1881
    lw	$a0,11652($s8)
    # Line 1882
    mov.d	$f12,$f30
    jal	glTexCoord4d
    # Line 1881
    sw	$a0,6052($zero)
    ld	$gp,48($sp)
    # Line 1884
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1883
    sw	$a1,6052($zero)
.end __glce_TexCoord4d

# Function: __glce_TexCoord4dv
# Declared: Line 1889 (Source lines: 1890-1900)
# Address: 0x0dbc67e8 - 0x0dbc685c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord4dv
.ent __glce_TexCoord4dv
__glce_TexCoord4dv:
    # Line 1890
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1892
    lw	$at,__glCurrentContext
    # Line 1890
    lui	$v0,0x3
    addiu	$v0,$v0,32432
    addu	$gp,$t9,$v0
    # Line 1894
    lw	$v0,6056($zero)
    # Line 1896
    # lw $t9, -17228($gp) # &glTexCoord4dv
    sd	$at,32($sp)
    # Line 1895
    lw	$at,7536($at)
    sd	$v0,24($sp)
    # Line 1896
    jal	glTexCoord4dv
    # Line 1895
    sw	$at,6056($zero)
    # Line 1897
    ld	$v1,32($sp)
    # Line 1898
    # lw $t9, -17228($gp) # &glTexCoord4dv
    # Line 1897
    lw	$v1,11656($v1)
    # Line 1898
    move	$a0,$s8
    jal	glTexCoord4dv
    # Line 1897
    sw	$v1,6056($zero)
    ld	$gp,16($sp)
    # Line 1900
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1899
    sw	$a0,6056($zero)
.end __glce_TexCoord4dv

# Function: __glce_TexCoord4f
# Declared: Line 1905 (Source lines: 1906-1916)
# Address: 0x0dbc685c - 0x0dbc68e8 (Size: 140 bytes, Frame: 224)
.globl __glce_TexCoord4f
.ent __glce_TexCoord4f
__glce_TexCoord4f:
    # Line 1906
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 1910
    lw	$v0,6060($zero)
    sd	$gp,48($sp)
    # Line 1906
    lui	$v1,0x3
    addiu	$v1,$v1,32316
    sd	$s8,40($sp)
    # Line 1908
    lw	$s8,__glCurrentContext
    # Line 1906
    addu	$gp,$t9,$v1
    # Line 1912
    # lw $t9, -17224($gp) # &glTexCoord4f
    # Line 1911
    lw	$at,7540($s8)
    sd	$v0,56($sp)
    # Line 1912
    jal	glTexCoord4f
    # Line 1911
    sw	$at,6060($zero)
    ldc1	$f15,8($sp)
    # Line 1914
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17224($gp) # &glTexCoord4f
    # Line 1913
    lw	$a0,11660($s8)
    # Line 1914
    mov.s	$f12,$f30
    jal	glTexCoord4f
    # Line 1913
    sw	$a0,6060($zero)
    ld	$gp,48($sp)
    # Line 1916
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1915
    sw	$a1,6060($zero)
.end __glce_TexCoord4f

# Function: __glce_TexCoord4fv
# Declared: Line 1921 (Source lines: 1922-1932)
# Address: 0x0dbc68e8 - 0x0dbc695c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord4fv
.ent __glce_TexCoord4fv
__glce_TexCoord4fv:
    # Line 1922
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1924
    lw	$at,__glCurrentContext
    # Line 1922
    lui	$v0,0x3
    addiu	$v0,$v0,32176
    addu	$gp,$t9,$v0
    # Line 1926
    lw	$v0,6064($zero)
    # Line 1928
    # lw $t9, -17220($gp) # &glTexCoord4fv
    sd	$at,32($sp)
    # Line 1927
    lw	$at,7544($at)
    sd	$v0,24($sp)
    # Line 1928
    jal	glTexCoord4fv
    # Line 1927
    sw	$at,6064($zero)
    # Line 1929
    ld	$v1,32($sp)
    # Line 1930
    # lw $t9, -17220($gp) # &glTexCoord4fv
    # Line 1929
    lw	$v1,11664($v1)
    # Line 1930
    move	$a0,$s8
    jal	glTexCoord4fv
    # Line 1929
    sw	$v1,6064($zero)
    ld	$gp,16($sp)
    # Line 1932
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1931
    sw	$a0,6064($zero)
.end __glce_TexCoord4fv

# Function: __glce_TexCoord4i
# Declared: Line 1937 (Source lines: 1938-1948)
# Address: 0x0dbc695c - 0x0dbc69e8 (Size: 140 bytes, Frame: 224)
.globl __glce_TexCoord4i
.ent __glce_TexCoord4i
__glce_TexCoord4i:
    # Line 1938
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1940
    lw	$at,__glCurrentContext
    # Line 1938
    lui	$v0,0x3
    addiu	$v0,$v0,32060
    addu	$gp,$t9,$v0
    # Line 1942
    lw	$v0,6068($zero)
    # Line 1944
    # lw $t9, -17216($gp) # &glTexCoord4i
    sd	$at,32($sp)
    # Line 1943
    lw	$at,7548($at)
    sd	$v0,24($sp)
    # Line 1944
    jal	glTexCoord4i
    # Line 1943
    sw	$at,6068($zero)
    ld	$a3,40($sp)
    # Line 1946
    ld	$a2,48($sp)
    # Line 1945
    ld	$v1,32($sp)
    # Line 1946
    ld	$a1,56($sp)
    # lw $t9, -17216($gp) # &glTexCoord4i
    # Line 1945
    lw	$v1,11668($v1)
    # Line 1946
    move	$a0,$s8
    jal	glTexCoord4i
    # Line 1945
    sw	$v1,6068($zero)
    ld	$gp,16($sp)
    # Line 1948
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1947
    sw	$a0,6068($zero)
.end __glce_TexCoord4i

# Function: __glce_TexCoord4iv
# Declared: Line 1953 (Source lines: 1954-1964)
# Address: 0x0dbc69e8 - 0x0dbc6a5c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord4iv
.ent __glce_TexCoord4iv
__glce_TexCoord4iv:
    # Line 1954
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1956
    lw	$at,__glCurrentContext
    # Line 1954
    lui	$v0,0x3
    addiu	$v0,$v0,31920
    addu	$gp,$t9,$v0
    # Line 1958
    lw	$v0,6072($zero)
    # Line 1960
    # lw $t9, -17212($gp) # &glTexCoord4iv
    sd	$at,32($sp)
    # Line 1959
    lw	$at,7552($at)
    sd	$v0,24($sp)
    # Line 1960
    jal	glTexCoord4iv
    # Line 1959
    sw	$at,6072($zero)
    # Line 1961
    ld	$v1,32($sp)
    # Line 1962
    # lw $t9, -17212($gp) # &glTexCoord4iv
    # Line 1961
    lw	$v1,11672($v1)
    # Line 1962
    move	$a0,$s8
    jal	glTexCoord4iv
    # Line 1961
    sw	$v1,6072($zero)
    ld	$gp,16($sp)
    # Line 1964
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1963
    sw	$a0,6072($zero)
.end __glce_TexCoord4iv

# Function: __glce_TexCoord4s
# Declared: Line 1969 (Source lines: 1970-1980)
# Address: 0x0dbc6a5c - 0x0dbc6ae8 (Size: 140 bytes, Frame: 224)
.globl __glce_TexCoord4s
.ent __glce_TexCoord4s
__glce_TexCoord4s:
    # Line 1970
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1972
    lw	$at,__glCurrentContext
    # Line 1970
    lui	$v0,0x3
    addiu	$v0,$v0,31804
    addu	$gp,$t9,$v0
    # Line 1974
    lw	$v0,6076($zero)
    # Line 1976
    # lw $t9, -17208($gp) # &glTexCoord4s
    sd	$at,32($sp)
    # Line 1975
    lw	$at,7556($at)
    sd	$v0,24($sp)
    # Line 1976
    jal	glTexCoord4s
    # Line 1975
    sw	$at,6076($zero)
    ld	$a3,40($sp)
    # Line 1978
    ld	$a2,48($sp)
    # Line 1977
    ld	$v1,32($sp)
    # Line 1978
    ld	$a1,56($sp)
    # lw $t9, -17208($gp) # &glTexCoord4s
    # Line 1977
    lw	$v1,11676($v1)
    # Line 1978
    move	$a0,$s8
    jal	glTexCoord4s
    # Line 1977
    sw	$v1,6076($zero)
    ld	$gp,16($sp)
    # Line 1980
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 1979
    sw	$a0,6076($zero)
.end __glce_TexCoord4s

# Function: __glce_TexCoord4sv
# Declared: Line 1985 (Source lines: 1986-1996)
# Address: 0x0dbc6ae8 - 0x0dbc6b5c (Size: 116 bytes, Frame: 192)
.globl __glce_TexCoord4sv
.ent __glce_TexCoord4sv
__glce_TexCoord4sv:
    # Line 1986
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 1988
    lw	$at,__glCurrentContext
    # Line 1986
    lui	$v0,0x3
    addiu	$v0,$v0,31664
    addu	$gp,$t9,$v0
    # Line 1990
    lw	$v0,6080($zero)
    # Line 1992
    # lw $t9, -17204($gp) # &glTexCoord4sv
    sd	$at,32($sp)
    # Line 1991
    lw	$at,7560($at)
    sd	$v0,24($sp)
    # Line 1992
    jal	glTexCoord4sv
    # Line 1991
    sw	$at,6080($zero)
    # Line 1993
    ld	$v1,32($sp)
    # Line 1994
    # lw $t9, -17204($gp) # &glTexCoord4sv
    # Line 1993
    lw	$v1,11680($v1)
    # Line 1994
    move	$a0,$s8
    jal	glTexCoord4sv
    # Line 1993
    sw	$v1,6080($zero)
    ld	$gp,16($sp)
    # Line 1996
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 1995
    sw	$a0,6080($zero)
.end __glce_TexCoord4sv

# Function: __glce_Vertex2d
# Declared: Line 2001 (Source lines: 2002-2012)
# Address: 0x0dbc6b5c - 0x0dbc6bd8 (Size: 124 bytes, Frame: 192)
.globl __glce_Vertex2d
.ent __glce_Vertex2d
__glce_Vertex2d:
    # Line 2002
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,16($sp)
    # Line 2006
    lw	$v0,5652($zero)
    sd	$gp,32($sp)
    # Line 2002
    lui	$v1,0x3
    addiu	$v1,$v1,31548
    sd	$s8,24($sp)
    # Line 2004
    lw	$s8,__glCurrentContext
    # Line 2002
    addu	$gp,$t9,$v1
    # Line 2008
    # lw $t9, -17200($gp) # &glVertex2d
    # Line 2007
    lw	$at,7132($s8)
    sd	$v0,40($sp)
    # Line 2008
    jal	glVertex2d
    # Line 2007
    sw	$at,5652($zero)
    ldc1	$f13,8($sp)
    # Line 2010
    # lw $t9, -17200($gp) # &glVertex2d
    # Line 2009
    lw	$a0,11252($s8)
    # Line 2010
    mov.d	$f12,$f30
    jal	glVertex2d
    # Line 2009
    sw	$a0,5652($zero)
    ld	$gp,32($sp)
    # Line 2012
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2011
    sw	$a1,5652($zero)
.end __glce_Vertex2d

# Function: __glce_Vertex2dv
# Declared: Line 2017 (Source lines: 2018-2028)
# Address: 0x0dbc6bd8 - 0x0dbc6c4c (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex2dv
.ent __glce_Vertex2dv
__glce_Vertex2dv:
    # Line 2018
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2020
    lw	$at,__glCurrentContext
    # Line 2018
    lui	$v0,0x3
    addiu	$v0,$v0,31424
    addu	$gp,$t9,$v0
    # Line 2022
    lw	$v0,5656($zero)
    # Line 2024
    # lw $t9, -17196($gp) # &glVertex2dv
    sd	$at,32($sp)
    # Line 2023
    lw	$at,7136($at)
    sd	$v0,24($sp)
    # Line 2024
    jal	glVertex2dv
    # Line 2023
    sw	$at,5656($zero)
    # Line 2025
    ld	$v1,32($sp)
    # Line 2026
    # lw $t9, -17196($gp) # &glVertex2dv
    # Line 2025
    lw	$v1,11256($v1)
    # Line 2026
    move	$a0,$s8
    jal	glVertex2dv
    # Line 2025
    sw	$v1,5656($zero)
    ld	$gp,16($sp)
    # Line 2028
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2027
    sw	$a0,5656($zero)
.end __glce_Vertex2dv

# Function: __glce_Vertex2f
# Declared: Line 2033 (Source lines: 2034-2044)
# Address: 0x0dbc6c4c - 0x0dbc6cc8 (Size: 124 bytes, Frame: 192)
.globl __glce_Vertex2f
.ent __glce_Vertex2f
__glce_Vertex2f:
    # Line 2034
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,16($sp)
    # Line 2038
    lw	$v0,5660($zero)
    sd	$gp,32($sp)
    # Line 2034
    lui	$v1,0x3
    addiu	$v1,$v1,31308
    sd	$s8,24($sp)
    # Line 2036
    lw	$s8,__glCurrentContext
    # Line 2034
    addu	$gp,$t9,$v1
    # Line 2040
    # lw $t9, -17192($gp) # &glVertex2f
    # Line 2039
    lw	$at,7140($s8)
    sd	$v0,40($sp)
    # Line 2040
    jal	glVertex2f
    # Line 2039
    sw	$at,5660($zero)
    ldc1	$f13,8($sp)
    # Line 2042
    # lw $t9, -17192($gp) # &glVertex2f
    # Line 2041
    lw	$a0,11260($s8)
    # Line 2042
    mov.s	$f12,$f30
    jal	glVertex2f
    # Line 2041
    sw	$a0,5660($zero)
    ld	$gp,32($sp)
    # Line 2044
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2043
    sw	$a1,5660($zero)
.end __glce_Vertex2f

# Function: __glce_Vertex2fv
# Declared: Line 2049 (Source lines: 2050-2060)
# Address: 0x0dbc6cc8 - 0x0dbc6d3c (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex2fv
.ent __glce_Vertex2fv
__glce_Vertex2fv:
    # Line 2050
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2052
    lw	$at,__glCurrentContext
    # Line 2050
    lui	$v0,0x3
    addiu	$v0,$v0,31184
    addu	$gp,$t9,$v0
    # Line 2054
    lw	$v0,5664($zero)
    # Line 2056
    # lw $t9, -17188($gp) # &glVertex2fv
    sd	$at,32($sp)
    # Line 2055
    lw	$at,7144($at)
    sd	$v0,24($sp)
    # Line 2056
    jal	glVertex2fv
    # Line 2055
    sw	$at,5664($zero)
    # Line 2057
    ld	$v1,32($sp)
    # Line 2058
    # lw $t9, -17188($gp) # &glVertex2fv
    # Line 2057
    lw	$v1,11264($v1)
    # Line 2058
    move	$a0,$s8
    jal	glVertex2fv
    # Line 2057
    sw	$v1,5664($zero)
    ld	$gp,16($sp)
    # Line 2060
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2059
    sw	$a0,5664($zero)
.end __glce_Vertex2fv

# Function: __glce_Vertex2i
# Declared: Line 2065 (Source lines: 2066-2076)
# Address: 0x0dbc6d3c - 0x0dbc6db8 (Size: 124 bytes, Frame: 192)
.globl __glce_Vertex2i
.ent __glce_Vertex2i
__glce_Vertex2i:
    # Line 2066
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2068
    lw	$at,__glCurrentContext
    # Line 2066
    lui	$v0,0x3
    addiu	$v0,$v0,31068
    addu	$gp,$t9,$v0
    # Line 2070
    lw	$v0,5668($zero)
    # Line 2072
    # lw $t9, -17184($gp) # &glVertex2i
    sd	$at,32($sp)
    # Line 2071
    lw	$at,7148($at)
    sd	$v0,24($sp)
    # Line 2072
    jal	glVertex2i
    # Line 2071
    sw	$at,5668($zero)
    # Line 2073
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2074
    # lw $t9, -17184($gp) # &glVertex2i
    # Line 2073
    lw	$v1,11268($v1)
    # Line 2074
    move	$a0,$s8
    jal	glVertex2i
    # Line 2073
    sw	$v1,5668($zero)
    ld	$gp,16($sp)
    # Line 2076
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2075
    sw	$a0,5668($zero)
.end __glce_Vertex2i

# Function: __glce_Vertex2iv
# Declared: Line 2081 (Source lines: 2082-2092)
# Address: 0x0dbc6db8 - 0x0dbc6e2c (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex2iv
.ent __glce_Vertex2iv
__glce_Vertex2iv:
    # Line 2082
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2084
    lw	$at,__glCurrentContext
    # Line 2082
    lui	$v0,0x3
    addiu	$v0,$v0,30944
    addu	$gp,$t9,$v0
    # Line 2086
    lw	$v0,5672($zero)
    # Line 2088
    # lw $t9, -17180($gp) # &glVertex2iv
    sd	$at,32($sp)
    # Line 2087
    lw	$at,7152($at)
    sd	$v0,24($sp)
    # Line 2088
    jal	glVertex2iv
    # Line 2087
    sw	$at,5672($zero)
    # Line 2089
    ld	$v1,32($sp)
    # Line 2090
    # lw $t9, -17180($gp) # &glVertex2iv
    # Line 2089
    lw	$v1,11272($v1)
    # Line 2090
    move	$a0,$s8
    jal	glVertex2iv
    # Line 2089
    sw	$v1,5672($zero)
    ld	$gp,16($sp)
    # Line 2092
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2091
    sw	$a0,5672($zero)
.end __glce_Vertex2iv

# Function: __glce_Vertex2s
# Declared: Line 2097 (Source lines: 2098-2108)
# Address: 0x0dbc6e2c - 0x0dbc6ea8 (Size: 124 bytes, Frame: 192)
.globl __glce_Vertex2s
.ent __glce_Vertex2s
__glce_Vertex2s:
    # Line 2098
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2100
    lw	$at,__glCurrentContext
    # Line 2098
    lui	$v0,0x3
    addiu	$v0,$v0,30828
    addu	$gp,$t9,$v0
    # Line 2102
    lw	$v0,5676($zero)
    # Line 2104
    # lw $t9, -17176($gp) # &glVertex2s
    sd	$at,32($sp)
    # Line 2103
    lw	$at,7156($at)
    sd	$v0,24($sp)
    # Line 2104
    jal	glVertex2s
    # Line 2103
    sw	$at,5676($zero)
    # Line 2105
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2106
    # lw $t9, -17176($gp) # &glVertex2s
    # Line 2105
    lw	$v1,11276($v1)
    # Line 2106
    move	$a0,$s8
    jal	glVertex2s
    # Line 2105
    sw	$v1,5676($zero)
    ld	$gp,16($sp)
    # Line 2108
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2107
    sw	$a0,5676($zero)
.end __glce_Vertex2s

# Function: __glce_Vertex2sv
# Declared: Line 2113 (Source lines: 2114-2124)
# Address: 0x0dbc6ea8 - 0x0dbc6f1c (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex2sv
.ent __glce_Vertex2sv
__glce_Vertex2sv:
    # Line 2114
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2116
    lw	$at,__glCurrentContext
    # Line 2114
    lui	$v0,0x3
    addiu	$v0,$v0,30704
    addu	$gp,$t9,$v0
    # Line 2118
    lw	$v0,5680($zero)
    # Line 2120
    # lw $t9, -17172($gp) # &glVertex2sv
    sd	$at,32($sp)
    # Line 2119
    lw	$at,7160($at)
    sd	$v0,24($sp)
    # Line 2120
    jal	glVertex2sv
    # Line 2119
    sw	$at,5680($zero)
    # Line 2121
    ld	$v1,32($sp)
    # Line 2122
    # lw $t9, -17172($gp) # &glVertex2sv
    # Line 2121
    lw	$v1,11280($v1)
    # Line 2122
    move	$a0,$s8
    jal	glVertex2sv
    # Line 2121
    sw	$v1,5680($zero)
    ld	$gp,16($sp)
    # Line 2124
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2123
    sw	$a0,5680($zero)
.end __glce_Vertex2sv

# Function: __glce_Vertex3d
# Declared: Line 2129 (Source lines: 2130-2140)
# Address: 0x0dbc6f1c - 0x0dbc6fa0 (Size: 132 bytes, Frame: 224)
.globl __glce_Vertex3d
.ent __glce_Vertex3d
__glce_Vertex3d:
    # Line 2130
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,24($sp)
    # Line 2134
    lw	$v0,5684($zero)
    sd	$gp,40($sp)
    # Line 2130
    lui	$v1,0x3
    addiu	$v1,$v1,30588
    sd	$s8,32($sp)
    # Line 2132
    lw	$s8,__glCurrentContext
    # Line 2130
    addu	$gp,$t9,$v1
    # Line 2136
    # lw $t9, -17168($gp) # &glVertex3d
    # Line 2135
    lw	$at,7164($s8)
    sd	$v0,48($sp)
    # Line 2136
    jal	glVertex3d
    # Line 2135
    sw	$at,5684($zero)
    ldc1	$f14,8($sp)
    # Line 2138
    ldc1	$f13,16($sp)
    # lw $t9, -17168($gp) # &glVertex3d
    # Line 2137
    lw	$a0,11284($s8)
    # Line 2138
    mov.d	$f12,$f30
    jal	glVertex3d
    # Line 2137
    sw	$a0,5684($zero)
    ld	$gp,40($sp)
    # Line 2140
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2139
    sw	$a1,5684($zero)
.end __glce_Vertex3d

# Function: __glce_Vertex3dv
# Declared: Line 2145 (Source lines: 2146-2156)
# Address: 0x0dbc6fa0 - 0x0dbc7014 (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex3dv
.ent __glce_Vertex3dv
__glce_Vertex3dv:
    # Line 2146
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2148
    lw	$at,__glCurrentContext
    # Line 2146
    lui	$v0,0x3
    addiu	$v0,$v0,30456
    addu	$gp,$t9,$v0
    # Line 2150
    lw	$v0,5688($zero)
    # Line 2152
    # lw $t9, -17164($gp) # &glVertex3dv
    sd	$at,32($sp)
    # Line 2151
    lw	$at,7168($at)
    sd	$v0,24($sp)
    # Line 2152
    jal	glVertex3dv
    # Line 2151
    sw	$at,5688($zero)
    # Line 2153
    ld	$v1,32($sp)
    # Line 2154
    # lw $t9, -17164($gp) # &glVertex3dv
    # Line 2153
    lw	$v1,11288($v1)
    # Line 2154
    move	$a0,$s8
    jal	glVertex3dv
    # Line 2153
    sw	$v1,5688($zero)
    ld	$gp,16($sp)
    # Line 2156
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2155
    sw	$a0,5688($zero)
.end __glce_Vertex3dv

# Function: __glce_Vertex3f
# Declared: Line 2161 (Source lines: 2162-2172)
# Address: 0x0dbc7014 - 0x0dbc7098 (Size: 132 bytes, Frame: 224)
.globl __glce_Vertex3f
.ent __glce_Vertex3f
__glce_Vertex3f:
    # Line 2162
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,24($sp)
    # Line 2166
    lw	$v0,5692($zero)
    sd	$gp,40($sp)
    # Line 2162
    lui	$v1,0x3
    addiu	$v1,$v1,30340
    sd	$s8,32($sp)
    # Line 2164
    lw	$s8,__glCurrentContext
    # Line 2162
    addu	$gp,$t9,$v1
    # Line 2168
    # lw $t9, -17160($gp) # &glVertex3f
    # Line 2167
    lw	$at,7172($s8)
    sd	$v0,48($sp)
    # Line 2168
    jal	glVertex3f
    # Line 2167
    sw	$at,5692($zero)
    ldc1	$f14,8($sp)
    # Line 2170
    ldc1	$f13,16($sp)
    # lw $t9, -17160($gp) # &glVertex3f
    # Line 2169
    lw	$a0,11292($s8)
    # Line 2170
    mov.s	$f12,$f30
    jal	glVertex3f
    # Line 2169
    sw	$a0,5692($zero)
    ld	$gp,40($sp)
    # Line 2172
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2171
    sw	$a1,5692($zero)
.end __glce_Vertex3f

# Function: __glce_Vertex3fv
# Declared: Line 2177 (Source lines: 2178-2188)
# Address: 0x0dbc7098 - 0x0dbc710c (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex3fv
.ent __glce_Vertex3fv
__glce_Vertex3fv:
    # Line 2178
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2180
    lw	$at,__glCurrentContext
    # Line 2178
    lui	$v0,0x3
    addiu	$v0,$v0,30208
    addu	$gp,$t9,$v0
    # Line 2182
    lw	$v0,5696($zero)
    # Line 2184
    # lw $t9, -17156($gp) # &glVertex3fv
    sd	$at,32($sp)
    # Line 2183
    lw	$at,7176($at)
    sd	$v0,24($sp)
    # Line 2184
    jal	glVertex3fv
    # Line 2183
    sw	$at,5696($zero)
    # Line 2185
    ld	$v1,32($sp)
    # Line 2186
    # lw $t9, -17156($gp) # &glVertex3fv
    # Line 2185
    lw	$v1,11296($v1)
    # Line 2186
    move	$a0,$s8
    jal	glVertex3fv
    # Line 2185
    sw	$v1,5696($zero)
    ld	$gp,16($sp)
    # Line 2188
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2187
    sw	$a0,5696($zero)
.end __glce_Vertex3fv

# Function: __glce_Vertex3i
# Declared: Line 2193 (Source lines: 2194-2204)
# Address: 0x0dbc710c - 0x0dbc7190 (Size: 132 bytes, Frame: 224)
.globl __glce_Vertex3i
.ent __glce_Vertex3i
__glce_Vertex3i:
    # Line 2194
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2196
    lw	$at,__glCurrentContext
    # Line 2194
    lui	$v0,0x3
    addiu	$v0,$v0,30092
    addu	$gp,$t9,$v0
    # Line 2198
    lw	$v0,5700($zero)
    # Line 2200
    # lw $t9, -17152($gp) # &glVertex3i
    sd	$at,32($sp)
    # Line 2199
    lw	$at,7180($at)
    sd	$v0,24($sp)
    # Line 2200
    jal	glVertex3i
    # Line 2199
    sw	$at,5700($zero)
    ld	$a2,40($sp)
    # Line 2201
    ld	$v1,32($sp)
    # Line 2202
    ld	$a1,48($sp)
    # lw $t9, -17152($gp) # &glVertex3i
    # Line 2201
    lw	$v1,11300($v1)
    # Line 2202
    move	$a0,$s8
    jal	glVertex3i
    # Line 2201
    sw	$v1,5700($zero)
    ld	$gp,16($sp)
    # Line 2204
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2203
    sw	$a0,5700($zero)
.end __glce_Vertex3i

# Function: __glce_Vertex3iv
# Declared: Line 2209 (Source lines: 2210-2220)
# Address: 0x0dbc7190 - 0x0dbc7204 (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex3iv
.ent __glce_Vertex3iv
__glce_Vertex3iv:
    # Line 2210
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2212
    lw	$at,__glCurrentContext
    # Line 2210
    lui	$v0,0x3
    addiu	$v0,$v0,29960
    addu	$gp,$t9,$v0
    # Line 2214
    lw	$v0,5704($zero)
    # Line 2216
    # lw $t9, -17148($gp) # &glVertex3iv
    sd	$at,32($sp)
    # Line 2215
    lw	$at,7184($at)
    sd	$v0,24($sp)
    # Line 2216
    jal	glVertex3iv
    # Line 2215
    sw	$at,5704($zero)
    # Line 2217
    ld	$v1,32($sp)
    # Line 2218
    # lw $t9, -17148($gp) # &glVertex3iv
    # Line 2217
    lw	$v1,11304($v1)
    # Line 2218
    move	$a0,$s8
    jal	glVertex3iv
    # Line 2217
    sw	$v1,5704($zero)
    ld	$gp,16($sp)
    # Line 2220
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2219
    sw	$a0,5704($zero)
.end __glce_Vertex3iv

# Function: __glce_Vertex3s
# Declared: Line 2225 (Source lines: 2226-2236)
# Address: 0x0dbc7204 - 0x0dbc7288 (Size: 132 bytes, Frame: 224)
.globl __glce_Vertex3s
.ent __glce_Vertex3s
__glce_Vertex3s:
    # Line 2226
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2228
    lw	$at,__glCurrentContext
    # Line 2226
    lui	$v0,0x3
    addiu	$v0,$v0,29844
    addu	$gp,$t9,$v0
    # Line 2230
    lw	$v0,5708($zero)
    # Line 2232
    # lw $t9, -17144($gp) # &glVertex3s
    sd	$at,32($sp)
    # Line 2231
    lw	$at,7188($at)
    sd	$v0,24($sp)
    # Line 2232
    jal	glVertex3s
    # Line 2231
    sw	$at,5708($zero)
    ld	$a2,40($sp)
    # Line 2233
    ld	$v1,32($sp)
    # Line 2234
    ld	$a1,48($sp)
    # lw $t9, -17144($gp) # &glVertex3s
    # Line 2233
    lw	$v1,11308($v1)
    # Line 2234
    move	$a0,$s8
    jal	glVertex3s
    # Line 2233
    sw	$v1,5708($zero)
    ld	$gp,16($sp)
    # Line 2236
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2235
    sw	$a0,5708($zero)
.end __glce_Vertex3s

# Function: __glce_Vertex3sv
# Declared: Line 2241 (Source lines: 2242-2252)
# Address: 0x0dbc7288 - 0x0dbc72fc (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex3sv
.ent __glce_Vertex3sv
__glce_Vertex3sv:
    # Line 2242
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2244
    lw	$at,__glCurrentContext
    # Line 2242
    lui	$v0,0x3
    addiu	$v0,$v0,29712
    addu	$gp,$t9,$v0
    # Line 2246
    lw	$v0,5712($zero)
    # Line 2248
    # lw $t9, -17140($gp) # &glVertex3sv
    sd	$at,32($sp)
    # Line 2247
    lw	$at,7192($at)
    sd	$v0,24($sp)
    # Line 2248
    jal	glVertex3sv
    # Line 2247
    sw	$at,5712($zero)
    # Line 2249
    ld	$v1,32($sp)
    # Line 2250
    # lw $t9, -17140($gp) # &glVertex3sv
    # Line 2249
    lw	$v1,11312($v1)
    # Line 2250
    move	$a0,$s8
    jal	glVertex3sv
    # Line 2249
    sw	$v1,5712($zero)
    ld	$gp,16($sp)
    # Line 2252
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2251
    sw	$a0,5712($zero)
.end __glce_Vertex3sv

# Function: __glce_Vertex4d
# Declared: Line 2257 (Source lines: 2258-2268)
# Address: 0x0dbc72fc - 0x0dbc7388 (Size: 140 bytes, Frame: 224)
.globl __glce_Vertex4d
.ent __glce_Vertex4d
__glce_Vertex4d:
    # Line 2258
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,32($sp)
    # Line 2262
    lw	$v0,5716($zero)
    sd	$gp,48($sp)
    # Line 2258
    lui	$v1,0x3
    addiu	$v1,$v1,29596
    sd	$s8,40($sp)
    # Line 2260
    lw	$s8,__glCurrentContext
    # Line 2258
    addu	$gp,$t9,$v1
    # Line 2264
    # lw $t9, -17136($gp) # &glVertex4d
    # Line 2263
    lw	$at,7196($s8)
    sd	$v0,56($sp)
    # Line 2264
    jal	glVertex4d
    # Line 2263
    sw	$at,5716($zero)
    ldc1	$f15,8($sp)
    # Line 2266
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17136($gp) # &glVertex4d
    # Line 2265
    lw	$a0,11316($s8)
    # Line 2266
    mov.d	$f12,$f30
    jal	glVertex4d
    # Line 2265
    sw	$a0,5716($zero)
    ld	$gp,48($sp)
    # Line 2268
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2267
    sw	$a1,5716($zero)
.end __glce_Vertex4d

# Function: __glce_Vertex4dv
# Declared: Line 2273 (Source lines: 2274-2284)
# Address: 0x0dbc7388 - 0x0dbc73fc (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex4dv
.ent __glce_Vertex4dv
__glce_Vertex4dv:
    # Line 2274
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2276
    lw	$at,__glCurrentContext
    # Line 2274
    lui	$v0,0x3
    addiu	$v0,$v0,29456
    addu	$gp,$t9,$v0
    # Line 2278
    lw	$v0,5720($zero)
    # Line 2280
    # lw $t9, -17132($gp) # &glVertex4dv
    sd	$at,32($sp)
    # Line 2279
    lw	$at,7200($at)
    sd	$v0,24($sp)
    # Line 2280
    jal	glVertex4dv
    # Line 2279
    sw	$at,5720($zero)
    # Line 2281
    ld	$v1,32($sp)
    # Line 2282
    # lw $t9, -17132($gp) # &glVertex4dv
    # Line 2281
    lw	$v1,11320($v1)
    # Line 2282
    move	$a0,$s8
    jal	glVertex4dv
    # Line 2281
    sw	$v1,5720($zero)
    ld	$gp,16($sp)
    # Line 2284
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2283
    sw	$a0,5720($zero)
.end __glce_Vertex4dv

# Function: __glce_Vertex4f
# Declared: Line 2289 (Source lines: 2290-2300)
# Address: 0x0dbc73fc - 0x0dbc7488 (Size: 140 bytes, Frame: 224)
.globl __glce_Vertex4f
.ent __glce_Vertex4f
__glce_Vertex4f:
    # Line 2290
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 2294
    lw	$v0,5724($zero)
    sd	$gp,48($sp)
    # Line 2290
    lui	$v1,0x3
    addiu	$v1,$v1,29340
    sd	$s8,40($sp)
    # Line 2292
    lw	$s8,__glCurrentContext
    # Line 2290
    addu	$gp,$t9,$v1
    # Line 2296
    # lw $t9, -17128($gp) # &glVertex4f
    # Line 2295
    lw	$at,7204($s8)
    sd	$v0,56($sp)
    # Line 2296
    jal	glVertex4f
    # Line 2295
    sw	$at,5724($zero)
    ldc1	$f15,8($sp)
    # Line 2298
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -17128($gp) # &glVertex4f
    # Line 2297
    lw	$a0,11324($s8)
    # Line 2298
    mov.s	$f12,$f30
    jal	glVertex4f
    # Line 2297
    sw	$a0,5724($zero)
    ld	$gp,48($sp)
    # Line 2300
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2299
    sw	$a1,5724($zero)
.end __glce_Vertex4f

# Function: __glce_Vertex4fv
# Declared: Line 2305 (Source lines: 2306-2316)
# Address: 0x0dbc7488 - 0x0dbc74fc (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex4fv
.ent __glce_Vertex4fv
__glce_Vertex4fv:
    # Line 2306
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2308
    lw	$at,__glCurrentContext
    # Line 2306
    lui	$v0,0x3
    addiu	$v0,$v0,29200
    addu	$gp,$t9,$v0
    # Line 2310
    lw	$v0,5728($zero)
    # Line 2312
    # lw $t9, -17124($gp) # &glVertex4fv
    sd	$at,32($sp)
    # Line 2311
    lw	$at,7208($at)
    sd	$v0,24($sp)
    # Line 2312
    jal	glVertex4fv
    # Line 2311
    sw	$at,5728($zero)
    # Line 2313
    ld	$v1,32($sp)
    # Line 2314
    # lw $t9, -17124($gp) # &glVertex4fv
    # Line 2313
    lw	$v1,11328($v1)
    # Line 2314
    move	$a0,$s8
    jal	glVertex4fv
    # Line 2313
    sw	$v1,5728($zero)
    ld	$gp,16($sp)
    # Line 2316
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2315
    sw	$a0,5728($zero)
.end __glce_Vertex4fv

# Function: __glce_Vertex4i
# Declared: Line 2321 (Source lines: 2322-2332)
# Address: 0x0dbc74fc - 0x0dbc7588 (Size: 140 bytes, Frame: 224)
.globl __glce_Vertex4i
.ent __glce_Vertex4i
__glce_Vertex4i:
    # Line 2322
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2324
    lw	$at,__glCurrentContext
    # Line 2322
    lui	$v0,0x3
    addiu	$v0,$v0,29084
    addu	$gp,$t9,$v0
    # Line 2326
    lw	$v0,5732($zero)
    # Line 2328
    # lw $t9, -17120($gp) # &glVertex4i
    sd	$at,32($sp)
    # Line 2327
    lw	$at,7212($at)
    sd	$v0,24($sp)
    # Line 2328
    jal	glVertex4i
    # Line 2327
    sw	$at,5732($zero)
    ld	$a3,40($sp)
    # Line 2330
    ld	$a2,48($sp)
    # Line 2329
    ld	$v1,32($sp)
    # Line 2330
    ld	$a1,56($sp)
    # lw $t9, -17120($gp) # &glVertex4i
    # Line 2329
    lw	$v1,11332($v1)
    # Line 2330
    move	$a0,$s8
    jal	glVertex4i
    # Line 2329
    sw	$v1,5732($zero)
    ld	$gp,16($sp)
    # Line 2332
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2331
    sw	$a0,5732($zero)
.end __glce_Vertex4i

# Function: __glce_Vertex4iv
# Declared: Line 2337 (Source lines: 2338-2348)
# Address: 0x0dbc7588 - 0x0dbc75fc (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex4iv
.ent __glce_Vertex4iv
__glce_Vertex4iv:
    # Line 2338
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2340
    lw	$at,__glCurrentContext
    # Line 2338
    lui	$v0,0x3
    addiu	$v0,$v0,28944
    addu	$gp,$t9,$v0
    # Line 2342
    lw	$v0,5736($zero)
    # Line 2344
    # lw $t9, -17116($gp) # &glVertex4iv
    sd	$at,32($sp)
    # Line 2343
    lw	$at,7216($at)
    sd	$v0,24($sp)
    # Line 2344
    jal	glVertex4iv
    # Line 2343
    sw	$at,5736($zero)
    # Line 2345
    ld	$v1,32($sp)
    # Line 2346
    # lw $t9, -17116($gp) # &glVertex4iv
    # Line 2345
    lw	$v1,11336($v1)
    # Line 2346
    move	$a0,$s8
    jal	glVertex4iv
    # Line 2345
    sw	$v1,5736($zero)
    ld	$gp,16($sp)
    # Line 2348
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2347
    sw	$a0,5736($zero)
.end __glce_Vertex4iv

# Function: __glce_Vertex4s
# Declared: Line 2353 (Source lines: 2354-2364)
# Address: 0x0dbc75fc - 0x0dbc7688 (Size: 140 bytes, Frame: 224)
.globl __glce_Vertex4s
.ent __glce_Vertex4s
__glce_Vertex4s:
    # Line 2354
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2356
    lw	$at,__glCurrentContext
    # Line 2354
    lui	$v0,0x3
    addiu	$v0,$v0,28828
    addu	$gp,$t9,$v0
    # Line 2358
    lw	$v0,5740($zero)
    # Line 2360
    # lw $t9, -17112($gp) # &glVertex4s
    sd	$at,32($sp)
    # Line 2359
    lw	$at,7220($at)
    sd	$v0,24($sp)
    # Line 2360
    jal	glVertex4s
    # Line 2359
    sw	$at,5740($zero)
    ld	$a3,40($sp)
    # Line 2362
    ld	$a2,48($sp)
    # Line 2361
    ld	$v1,32($sp)
    # Line 2362
    ld	$a1,56($sp)
    # lw $t9, -17112($gp) # &glVertex4s
    # Line 2361
    lw	$v1,11340($v1)
    # Line 2362
    move	$a0,$s8
    jal	glVertex4s
    # Line 2361
    sw	$v1,5740($zero)
    ld	$gp,16($sp)
    # Line 2364
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2363
    sw	$a0,5740($zero)
.end __glce_Vertex4s

# Function: __glce_Vertex4sv
# Declared: Line 2369 (Source lines: 2370-2380)
# Address: 0x0dbc7688 - 0x0dbc76fc (Size: 116 bytes, Frame: 192)
.globl __glce_Vertex4sv
.ent __glce_Vertex4sv
__glce_Vertex4sv:
    # Line 2370
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2372
    lw	$at,__glCurrentContext
    # Line 2370
    lui	$v0,0x3
    addiu	$v0,$v0,28688
    addu	$gp,$t9,$v0
    # Line 2374
    lw	$v0,5744($zero)
    # Line 2376
    # lw $t9, -17108($gp) # &glVertex4sv
    sd	$at,32($sp)
    # Line 2375
    lw	$at,7224($at)
    sd	$v0,24($sp)
    # Line 2376
    jal	glVertex4sv
    # Line 2375
    sw	$at,5744($zero)
    # Line 2377
    ld	$v1,32($sp)
    # Line 2378
    # lw $t9, -17108($gp) # &glVertex4sv
    # Line 2377
    lw	$v1,11344($v1)
    # Line 2378
    move	$a0,$s8
    jal	glVertex4sv
    # Line 2377
    sw	$v1,5744($zero)
    ld	$gp,16($sp)
    # Line 2380
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2379
    sw	$a0,5744($zero)
.end __glce_Vertex4sv

# Function: __glce_ClipPlane
# Declared: Line 2385 (Source lines: 2386-2396)
# Address: 0x0dbc76fc - 0x0dbc7778 (Size: 124 bytes, Frame: 192)
.globl __glce_ClipPlane
.ent __glce_ClipPlane
__glce_ClipPlane:
    # Line 2386
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2388
    lw	$at,__glCurrentContext
    # Line 2386
    lui	$v0,0x3
    addiu	$v0,$v0,28572
    addu	$gp,$t9,$v0
    # Line 2390
    lw	$v0,4216($zero)
    # Line 2392
    # lw $t9, -17104($gp) # &glClipPlane
    sd	$at,32($sp)
    # Line 2391
    lw	$at,5696($at)
    sd	$v0,24($sp)
    # Line 2392
    jal	glClipPlane
    # Line 2391
    sw	$at,4216($zero)
    # Line 2393
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2394
    # lw $t9, -17104($gp) # &glClipPlane
    # Line 2393
    lw	$v1,9816($v1)
    # Line 2394
    move	$a0,$s8
    jal	glClipPlane
    # Line 2393
    sw	$v1,4216($zero)
    ld	$gp,16($sp)
    # Line 2396
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2395
    sw	$a0,4216($zero)
.end __glce_ClipPlane

# Function: __glce_ColorMaterial
# Declared: Line 2401 (Source lines: 2402-2412)
# Address: 0x0dbc7778 - 0x0dbc77f4 (Size: 124 bytes, Frame: 192)
.globl __glce_ColorMaterial
.ent __glce_ColorMaterial
__glce_ColorMaterial:
    # Line 2402
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2404
    lw	$at,__glCurrentContext
    # Line 2402
    lui	$v0,0x3
    addiu	$v0,$v0,28448
    addu	$gp,$t9,$v0
    # Line 2406
    lw	$v0,4220($zero)
    # Line 2408
    # lw $t9, -17100($gp) # &glColorMaterial
    sd	$at,32($sp)
    # Line 2407
    lw	$at,5700($at)
    sd	$v0,24($sp)
    # Line 2408
    jal	glColorMaterial
    # Line 2407
    sw	$at,4220($zero)
    # Line 2409
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2410
    # lw $t9, -17100($gp) # &glColorMaterial
    # Line 2409
    lw	$v1,9820($v1)
    # Line 2410
    move	$a0,$s8
    jal	glColorMaterial
    # Line 2409
    sw	$v1,4220($zero)
    ld	$gp,16($sp)
    # Line 2412
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2411
    sw	$a0,4220($zero)
.end __glce_ColorMaterial

# Function: __glce_CullFace
# Declared: Line 2417 (Source lines: 2418-2428)
# Address: 0x0dbc77f4 - 0x0dbc7868 (Size: 116 bytes, Frame: 192)
.globl __glce_CullFace
.ent __glce_CullFace
__glce_CullFace:
    # Line 2418
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2420
    lw	$at,__glCurrentContext
    # Line 2418
    lui	$v0,0x3
    addiu	$v0,$v0,28324
    addu	$gp,$t9,$v0
    # Line 2422
    lw	$v0,4224($zero)
    # Line 2424
    # lw $t9, -17096($gp) # &glCullFace
    sd	$at,32($sp)
    # Line 2423
    lw	$at,5704($at)
    sd	$v0,24($sp)
    # Line 2424
    jal	glCullFace
    # Line 2423
    sw	$at,4224($zero)
    # Line 2425
    ld	$v1,32($sp)
    # Line 2426
    # lw $t9, -17096($gp) # &glCullFace
    # Line 2425
    lw	$v1,9824($v1)
    # Line 2426
    move	$a0,$s8
    jal	glCullFace
    # Line 2425
    sw	$v1,4224($zero)
    ld	$gp,16($sp)
    # Line 2428
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2427
    sw	$a0,4224($zero)
.end __glce_CullFace

# Function: __glce_Fogf
# Declared: Line 2433 (Source lines: 2434-2444)
# Address: 0x0dbc7868 - 0x0dbc78ec (Size: 132 bytes, Frame: 192)
.globl __glce_Fogf
.ent __glce_Fogf
__glce_Fogf:
    # Line 2434
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 2436
    lw	$at,__glCurrentContext
    # Line 2434
    lui	$v0,0x3
    addiu	$v0,$v0,28208
    addu	$gp,$t9,$v0
    # Line 2438
    lw	$v0,4228($zero)
    # Line 2440
    # lw $t9, -17092($gp) # &glFogf
    sd	$at,40($sp)
    # Line 2439
    lw	$at,5708($at)
    sd	$v0,32($sp)
    # Line 2440
    jal	glFogf
    # Line 2439
    sw	$at,4228($zero)
    # Line 2441
    ld	$v1,40($sp)
    # Line 2442
    mov.s	$f13,$f30
    # lw $t9, -17092($gp) # &glFogf
    # Line 2441
    lw	$v1,9828($v1)
    # Line 2442
    move	$a0,$s8
    jal	glFogf
    # Line 2441
    sw	$v1,4228($zero)
    ld	$gp,24($sp)
    # Line 2444
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2443
    sw	$a0,4228($zero)
.end __glce_Fogf

# Function: __glce_Fogfv
# Declared: Line 2449 (Source lines: 2450-2460)
# Address: 0x0dbc78ec - 0x0dbc7968 (Size: 124 bytes, Frame: 192)
.globl __glce_Fogfv
.ent __glce_Fogfv
__glce_Fogfv:
    # Line 2450
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2452
    lw	$at,__glCurrentContext
    # Line 2450
    lui	$v0,0x3
    addiu	$v0,$v0,28076
    addu	$gp,$t9,$v0
    # Line 2454
    lw	$v0,4232($zero)
    # Line 2456
    # lw $t9, -17088($gp) # &glFogfv
    sd	$at,32($sp)
    # Line 2455
    lw	$at,5712($at)
    sd	$v0,24($sp)
    # Line 2456
    jal	glFogfv
    # Line 2455
    sw	$at,4232($zero)
    # Line 2457
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2458
    # lw $t9, -17088($gp) # &glFogfv
    # Line 2457
    lw	$v1,9832($v1)
    # Line 2458
    move	$a0,$s8
    jal	glFogfv
    # Line 2457
    sw	$v1,4232($zero)
    ld	$gp,16($sp)
    # Line 2460
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2459
    sw	$a0,4232($zero)
.end __glce_Fogfv

# Function: __glce_Fogi
# Declared: Line 2465 (Source lines: 2466-2476)
# Address: 0x0dbc7968 - 0x0dbc79e4 (Size: 124 bytes, Frame: 192)
.globl __glce_Fogi
.ent __glce_Fogi
__glce_Fogi:
    # Line 2466
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2468
    lw	$at,__glCurrentContext
    # Line 2466
    lui	$v0,0x3
    addiu	$v0,$v0,27952
    addu	$gp,$t9,$v0
    # Line 2470
    lw	$v0,4236($zero)
    # Line 2472
    # lw $t9, -17084($gp) # &glFogi
    sd	$at,32($sp)
    # Line 2471
    lw	$at,5716($at)
    sd	$v0,24($sp)
    # Line 2472
    jal	glFogi
    # Line 2471
    sw	$at,4236($zero)
    # Line 2473
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2474
    # lw $t9, -17084($gp) # &glFogi
    # Line 2473
    lw	$v1,9836($v1)
    # Line 2474
    move	$a0,$s8
    jal	glFogi
    # Line 2473
    sw	$v1,4236($zero)
    ld	$gp,16($sp)
    # Line 2476
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2475
    sw	$a0,4236($zero)
.end __glce_Fogi

# Function: __glce_Fogiv
# Declared: Line 2481 (Source lines: 2482-2492)
# Address: 0x0dbc79e4 - 0x0dbc7a60 (Size: 124 bytes, Frame: 192)
.globl __glce_Fogiv
.ent __glce_Fogiv
__glce_Fogiv:
    # Line 2482
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2484
    lw	$at,__glCurrentContext
    # Line 2482
    lui	$v0,0x3
    addiu	$v0,$v0,27828
    addu	$gp,$t9,$v0
    # Line 2486
    lw	$v0,4240($zero)
    # Line 2488
    # lw $t9, -17080($gp) # &glFogiv
    sd	$at,32($sp)
    # Line 2487
    lw	$at,5720($at)
    sd	$v0,24($sp)
    # Line 2488
    jal	glFogiv
    # Line 2487
    sw	$at,4240($zero)
    # Line 2489
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2490
    # lw $t9, -17080($gp) # &glFogiv
    # Line 2489
    lw	$v1,9840($v1)
    # Line 2490
    move	$a0,$s8
    jal	glFogiv
    # Line 2489
    sw	$v1,4240($zero)
    ld	$gp,16($sp)
    # Line 2492
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2491
    sw	$a0,4240($zero)
.end __glce_Fogiv

# Function: __glce_FrontFace
# Declared: Line 2497 (Source lines: 2498-2508)
# Address: 0x0dbc7a60 - 0x0dbc7ad4 (Size: 116 bytes, Frame: 192)
.globl __glce_FrontFace
.ent __glce_FrontFace
__glce_FrontFace:
    # Line 2498
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2500
    lw	$at,__glCurrentContext
    # Line 2498
    lui	$v0,0x3
    addiu	$v0,$v0,27704
    addu	$gp,$t9,$v0
    # Line 2502
    lw	$v0,4244($zero)
    # Line 2504
    # lw $t9, -17076($gp) # &glFrontFace
    sd	$at,32($sp)
    # Line 2503
    lw	$at,5724($at)
    sd	$v0,24($sp)
    # Line 2504
    jal	glFrontFace
    # Line 2503
    sw	$at,4244($zero)
    # Line 2505
    ld	$v1,32($sp)
    # Line 2506
    # lw $t9, -17076($gp) # &glFrontFace
    # Line 2505
    lw	$v1,9844($v1)
    # Line 2506
    move	$a0,$s8
    jal	glFrontFace
    # Line 2505
    sw	$v1,4244($zero)
    ld	$gp,16($sp)
    # Line 2508
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2507
    sw	$a0,4244($zero)
.end __glce_FrontFace

# Function: __glce_Hint
# Declared: Line 2513 (Source lines: 2514-2524)
# Address: 0x0dbc7ad4 - 0x0dbc7b50 (Size: 124 bytes, Frame: 192)
.globl __glce_Hint
.ent __glce_Hint
__glce_Hint:
    # Line 2514
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2516
    lw	$at,__glCurrentContext
    # Line 2514
    lui	$v0,0x3
    addiu	$v0,$v0,27588
    addu	$gp,$t9,$v0
    # Line 2518
    lw	$v0,4248($zero)
    # Line 2520
    # lw $t9, -17072($gp) # &glHint
    sd	$at,32($sp)
    # Line 2519
    lw	$at,5728($at)
    sd	$v0,24($sp)
    # Line 2520
    jal	glHint
    # Line 2519
    sw	$at,4248($zero)
    # Line 2521
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2522
    # lw $t9, -17072($gp) # &glHint
    # Line 2521
    lw	$v1,9848($v1)
    # Line 2522
    move	$a0,$s8
    jal	glHint
    # Line 2521
    sw	$v1,4248($zero)
    ld	$gp,16($sp)
    # Line 2524
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2523
    sw	$a0,4248($zero)
.end __glce_Hint

# Function: __glce_Lightf
# Declared: Line 2529 (Source lines: 2530-2540)
# Address: 0x0dbc7b50 - 0x0dbc7bdc (Size: 140 bytes, Frame: 224)
.globl __glce_Lightf
.ent __glce_Lightf
__glce_Lightf:
    # Line 2530
    addiu	$sp,$sp,-96
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$a1,48($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 2532
    lw	$at,__glCurrentContext
    # Line 2530
    lui	$v0,0x3
    addiu	$v0,$v0,27464
    addu	$gp,$t9,$v0
    # Line 2534
    lw	$v0,4252($zero)
    # Line 2536
    # lw $t9, -17068($gp) # &glLightf
    sd	$at,40($sp)
    # Line 2535
    lw	$at,5732($at)
    sd	$v0,32($sp)
    # Line 2536
    jal	glLightf
    # Line 2535
    sw	$at,4252($zero)
    # Line 2538
    mov.s	$f14,$f30
    # Line 2537
    ld	$v1,40($sp)
    # Line 2538
    ld	$a1,48($sp)
    # lw $t9, -17068($gp) # &glLightf
    # Line 2537
    lw	$v1,9852($v1)
    # Line 2538
    move	$a0,$s8
    jal	glLightf
    # Line 2537
    sw	$v1,4252($zero)
    ld	$gp,24($sp)
    # Line 2540
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2539
    sw	$a0,4252($zero)
.end __glce_Lightf

# Function: __glce_Lightfv
# Declared: Line 2545 (Source lines: 2546-2556)
# Address: 0x0dbc7bdc - 0x0dbc7c60 (Size: 132 bytes, Frame: 224)
.globl __glce_Lightfv
.ent __glce_Lightfv
__glce_Lightfv:
    # Line 2546
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2548
    lw	$at,__glCurrentContext
    # Line 2546
    lui	$v0,0x3
    addiu	$v0,$v0,27324
    addu	$gp,$t9,$v0
    # Line 2550
    lw	$v0,4256($zero)
    # Line 2552
    # lw $t9, -17064($gp) # &glLightfv
    sd	$at,32($sp)
    # Line 2551
    lw	$at,5736($at)
    sd	$v0,24($sp)
    # Line 2552
    jal	glLightfv
    # Line 2551
    sw	$at,4256($zero)
    ld	$a2,40($sp)
    # Line 2553
    ld	$v1,32($sp)
    # Line 2554
    ld	$a1,48($sp)
    # lw $t9, -17064($gp) # &glLightfv
    # Line 2553
    lw	$v1,9856($v1)
    # Line 2554
    move	$a0,$s8
    jal	glLightfv
    # Line 2553
    sw	$v1,4256($zero)
    ld	$gp,16($sp)
    # Line 2556
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2555
    sw	$a0,4256($zero)
.end __glce_Lightfv

# Function: __glce_Lighti
# Declared: Line 2561 (Source lines: 2562-2572)
# Address: 0x0dbc7c60 - 0x0dbc7ce4 (Size: 132 bytes, Frame: 224)
.globl __glce_Lighti
.ent __glce_Lighti
__glce_Lighti:
    # Line 2562
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2564
    lw	$at,__glCurrentContext
    # Line 2562
    lui	$v0,0x3
    addiu	$v0,$v0,27192
    addu	$gp,$t9,$v0
    # Line 2566
    lw	$v0,4260($zero)
    # Line 2568
    # lw $t9, -17060($gp) # &glLighti
    sd	$at,32($sp)
    # Line 2567
    lw	$at,5740($at)
    sd	$v0,24($sp)
    # Line 2568
    jal	glLighti
    # Line 2567
    sw	$at,4260($zero)
    ld	$a2,40($sp)
    # Line 2569
    ld	$v1,32($sp)
    # Line 2570
    ld	$a1,48($sp)
    # lw $t9, -17060($gp) # &glLighti
    # Line 2569
    lw	$v1,9860($v1)
    # Line 2570
    move	$a0,$s8
    jal	glLighti
    # Line 2569
    sw	$v1,4260($zero)
    ld	$gp,16($sp)
    # Line 2572
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2571
    sw	$a0,4260($zero)
.end __glce_Lighti

# Function: __glce_Lightiv
# Declared: Line 2577 (Source lines: 2578-2588)
# Address: 0x0dbc7ce4 - 0x0dbc7d68 (Size: 132 bytes, Frame: 224)
.globl __glce_Lightiv
.ent __glce_Lightiv
__glce_Lightiv:
    # Line 2578
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2580
    lw	$at,__glCurrentContext
    # Line 2578
    lui	$v0,0x3
    addiu	$v0,$v0,27060
    addu	$gp,$t9,$v0
    # Line 2582
    lw	$v0,4264($zero)
    # Line 2584
    # lw $t9, -17056($gp) # &glLightiv
    sd	$at,32($sp)
    # Line 2583
    lw	$at,5744($at)
    sd	$v0,24($sp)
    # Line 2584
    jal	glLightiv
    # Line 2583
    sw	$at,4264($zero)
    ld	$a2,40($sp)
    # Line 2585
    ld	$v1,32($sp)
    # Line 2586
    ld	$a1,48($sp)
    # lw $t9, -17056($gp) # &glLightiv
    # Line 2585
    lw	$v1,9864($v1)
    # Line 2586
    move	$a0,$s8
    jal	glLightiv
    # Line 2585
    sw	$v1,4264($zero)
    ld	$gp,16($sp)
    # Line 2588
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2587
    sw	$a0,4264($zero)
.end __glce_Lightiv

# Function: __glce_LightModelf
# Declared: Line 2593 (Source lines: 2594-2604)
# Address: 0x0dbc7d68 - 0x0dbc7dec (Size: 132 bytes, Frame: 192)
.globl __glce_LightModelf
.ent __glce_LightModelf
__glce_LightModelf:
    # Line 2594
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 2596
    lw	$at,__glCurrentContext
    # Line 2594
    lui	$v0,0x3
    addiu	$v0,$v0,26928
    addu	$gp,$t9,$v0
    # Line 2598
    lw	$v0,4268($zero)
    # Line 2600
    # lw $t9, -17052($gp) # &glLightModelf
    sd	$at,40($sp)
    # Line 2599
    lw	$at,5748($at)
    sd	$v0,32($sp)
    # Line 2600
    jal	glLightModelf
    # Line 2599
    sw	$at,4268($zero)
    # Line 2601
    ld	$v1,40($sp)
    # Line 2602
    mov.s	$f13,$f30
    # lw $t9, -17052($gp) # &glLightModelf
    # Line 2601
    lw	$v1,9868($v1)
    # Line 2602
    move	$a0,$s8
    jal	glLightModelf
    # Line 2601
    sw	$v1,4268($zero)
    ld	$gp,24($sp)
    # Line 2604
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2603
    sw	$a0,4268($zero)
.end __glce_LightModelf

# Function: __glce_LightModelfv
# Declared: Line 2609 (Source lines: 2610-2620)
# Address: 0x0dbc7dec - 0x0dbc7e68 (Size: 124 bytes, Frame: 192)
.globl __glce_LightModelfv
.ent __glce_LightModelfv
__glce_LightModelfv:
    # Line 2610
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2612
    lw	$at,__glCurrentContext
    # Line 2610
    lui	$v0,0x3
    addiu	$v0,$v0,26796
    addu	$gp,$t9,$v0
    # Line 2614
    lw	$v0,4272($zero)
    # Line 2616
    # lw $t9, -17048($gp) # &glLightModelfv
    sd	$at,32($sp)
    # Line 2615
    lw	$at,5752($at)
    sd	$v0,24($sp)
    # Line 2616
    jal	glLightModelfv
    # Line 2615
    sw	$at,4272($zero)
    # Line 2617
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2618
    # lw $t9, -17048($gp) # &glLightModelfv
    # Line 2617
    lw	$v1,9872($v1)
    # Line 2618
    move	$a0,$s8
    jal	glLightModelfv
    # Line 2617
    sw	$v1,4272($zero)
    ld	$gp,16($sp)
    # Line 2620
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2619
    sw	$a0,4272($zero)
.end __glce_LightModelfv

# Function: __glce_LightModeli
# Declared: Line 2625 (Source lines: 2626-2636)
# Address: 0x0dbc7e68 - 0x0dbc7ee4 (Size: 124 bytes, Frame: 192)
.globl __glce_LightModeli
.ent __glce_LightModeli
__glce_LightModeli:
    # Line 2626
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2628
    lw	$at,__glCurrentContext
    # Line 2626
    lui	$v0,0x3
    addiu	$v0,$v0,26672
    addu	$gp,$t9,$v0
    # Line 2630
    lw	$v0,4276($zero)
    # Line 2632
    # lw $t9, -17044($gp) # &glLightModeli
    sd	$at,32($sp)
    # Line 2631
    lw	$at,5756($at)
    sd	$v0,24($sp)
    # Line 2632
    jal	glLightModeli
    # Line 2631
    sw	$at,4276($zero)
    # Line 2633
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2634
    # lw $t9, -17044($gp) # &glLightModeli
    # Line 2633
    lw	$v1,9876($v1)
    # Line 2634
    move	$a0,$s8
    jal	glLightModeli
    # Line 2633
    sw	$v1,4276($zero)
    ld	$gp,16($sp)
    # Line 2636
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2635
    sw	$a0,4276($zero)
.end __glce_LightModeli

# Function: __glce_LightModeliv
# Declared: Line 2641 (Source lines: 2642-2652)
# Address: 0x0dbc7ee4 - 0x0dbc7f60 (Size: 124 bytes, Frame: 192)
.globl __glce_LightModeliv
.ent __glce_LightModeliv
__glce_LightModeliv:
    # Line 2642
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2644
    lw	$at,__glCurrentContext
    # Line 2642
    lui	$v0,0x3
    addiu	$v0,$v0,26548
    addu	$gp,$t9,$v0
    # Line 2646
    lw	$v0,4280($zero)
    # Line 2648
    # lw $t9, -17040($gp) # &glLightModeliv
    sd	$at,32($sp)
    # Line 2647
    lw	$at,5760($at)
    sd	$v0,24($sp)
    # Line 2648
    jal	glLightModeliv
    # Line 2647
    sw	$at,4280($zero)
    # Line 2649
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2650
    # lw $t9, -17040($gp) # &glLightModeliv
    # Line 2649
    lw	$v1,9880($v1)
    # Line 2650
    move	$a0,$s8
    jal	glLightModeliv
    # Line 2649
    sw	$v1,4280($zero)
    ld	$gp,16($sp)
    # Line 2652
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2651
    sw	$a0,4280($zero)
.end __glce_LightModeliv

# Function: __glce_LineStipple
# Declared: Line 2657 (Source lines: 2658-2668)
# Address: 0x0dbc7f60 - 0x0dbc7fdc (Size: 124 bytes, Frame: 192)
.globl __glce_LineStipple
.ent __glce_LineStipple
__glce_LineStipple:
    # Line 2658
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2660
    lw	$at,__glCurrentContext
    # Line 2658
    lui	$v0,0x3
    addiu	$v0,$v0,26424
    addu	$gp,$t9,$v0
    # Line 2662
    lw	$v0,4284($zero)
    # Line 2664
    # lw $t9, -17036($gp) # &glLineStipple
    sd	$at,32($sp)
    # Line 2663
    lw	$at,5764($at)
    sd	$v0,24($sp)
    # Line 2664
    jal	glLineStipple
    # Line 2663
    sw	$at,4284($zero)
    # Line 2665
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2666
    # lw $t9, -17036($gp) # &glLineStipple
    # Line 2665
    lw	$v1,9884($v1)
    # Line 2666
    move	$a0,$s8
    jal	glLineStipple
    # Line 2665
    sw	$v1,4284($zero)
    ld	$gp,16($sp)
    # Line 2668
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2667
    sw	$a0,4284($zero)
.end __glce_LineStipple

# Function: __glce_LineWidth
# Declared: Line 2673 (Source lines: 2674-2684)
# Address: 0x0dbc7fdc - 0x0dbc8050 (Size: 116 bytes, Frame: 192)
.globl __glce_LineWidth
.ent __glce_LineWidth
__glce_LineWidth:
    # Line 2674
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,8($sp)
    # Line 2678
    lw	$v0,4288($zero)
    sd	$gp,24($sp)
    # Line 2674
    lui	$v1,0x3
    addiu	$v1,$v1,26300
    sd	$s8,16($sp)
    # Line 2676
    lw	$s8,__glCurrentContext
    # Line 2674
    addu	$gp,$t9,$v1
    # Line 2680
    # lw $t9, -17032($gp) # &glLineWidth
    # Line 2679
    lw	$at,5768($s8)
    sd	$v0,32($sp)
    # Line 2680
    jal	glLineWidth
    # Line 2679
    sw	$at,4288($zero)
    # Line 2682
    # lw $t9, -17032($gp) # &glLineWidth
    # Line 2681
    lw	$a0,9888($s8)
    # Line 2682
    mov.s	$f12,$f30
    jal	glLineWidth
    # Line 2681
    sw	$a0,4288($zero)
    ld	$gp,24($sp)
    # Line 2684
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2683
    sw	$a1,4288($zero)
.end __glce_LineWidth

# Function: __glce_Materialf
# Declared: Line 2689 (Source lines: 2690-2700)
# Address: 0x0dbc8050 - 0x0dbc80dc (Size: 140 bytes, Frame: 224)
.globl __glce_Materialf
.ent __glce_Materialf
__glce_Materialf:
    # Line 2690
    addiu	$sp,$sp,-96
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$a1,48($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 2692
    lw	$at,__glCurrentContext
    # Line 2690
    lui	$v0,0x3
    addiu	$v0,$v0,26184
    addu	$gp,$t9,$v0
    # Line 2694
    lw	$v0,4292($zero)
    # Line 2696
    # lw $t9, -17028($gp) # &glMaterialf
    sd	$at,40($sp)
    # Line 2695
    lw	$at,5772($at)
    sd	$v0,32($sp)
    # Line 2696
    jal	glMaterialf
    # Line 2695
    sw	$at,4292($zero)
    # Line 2698
    mov.s	$f14,$f30
    # Line 2697
    ld	$v1,40($sp)
    # Line 2698
    ld	$a1,48($sp)
    # lw $t9, -17028($gp) # &glMaterialf
    # Line 2697
    lw	$v1,9892($v1)
    # Line 2698
    move	$a0,$s8
    jal	glMaterialf
    # Line 2697
    sw	$v1,4292($zero)
    ld	$gp,24($sp)
    # Line 2700
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2699
    sw	$a0,4292($zero)
.end __glce_Materialf

# Function: __glce_Materialfv
# Declared: Line 2705 (Source lines: 2706-2716)
# Address: 0x0dbc80dc - 0x0dbc8160 (Size: 132 bytes, Frame: 224)
.globl __glce_Materialfv
.ent __glce_Materialfv
__glce_Materialfv:
    # Line 2706
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2708
    lw	$at,__glCurrentContext
    # Line 2706
    lui	$v0,0x3
    addiu	$v0,$v0,26044
    addu	$gp,$t9,$v0
    # Line 2710
    lw	$v0,4296($zero)
    # Line 2712
    # lw $t9, -17024($gp) # &glMaterialfv
    sd	$at,32($sp)
    # Line 2711
    lw	$at,5776($at)
    sd	$v0,24($sp)
    # Line 2712
    jal	glMaterialfv
    # Line 2711
    sw	$at,4296($zero)
    ld	$a2,40($sp)
    # Line 2713
    ld	$v1,32($sp)
    # Line 2714
    ld	$a1,48($sp)
    # lw $t9, -17024($gp) # &glMaterialfv
    # Line 2713
    lw	$v1,9896($v1)
    # Line 2714
    move	$a0,$s8
    jal	glMaterialfv
    # Line 2713
    sw	$v1,4296($zero)
    ld	$gp,16($sp)
    # Line 2716
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2715
    sw	$a0,4296($zero)
.end __glce_Materialfv

# Function: __glce_Materiali
# Declared: Line 2721 (Source lines: 2722-2732)
# Address: 0x0dbc8160 - 0x0dbc81e4 (Size: 132 bytes, Frame: 224)
.globl __glce_Materiali
.ent __glce_Materiali
__glce_Materiali:
    # Line 2722
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2724
    lw	$at,__glCurrentContext
    # Line 2722
    lui	$v0,0x3
    addiu	$v0,$v0,25912
    addu	$gp,$t9,$v0
    # Line 2726
    lw	$v0,4300($zero)
    # Line 2728
    # lw $t9, -17020($gp) # &glMateriali
    sd	$at,32($sp)
    # Line 2727
    lw	$at,5780($at)
    sd	$v0,24($sp)
    # Line 2728
    jal	glMateriali
    # Line 2727
    sw	$at,4300($zero)
    ld	$a2,40($sp)
    # Line 2729
    ld	$v1,32($sp)
    # Line 2730
    ld	$a1,48($sp)
    # lw $t9, -17020($gp) # &glMateriali
    # Line 2729
    lw	$v1,9900($v1)
    # Line 2730
    move	$a0,$s8
    jal	glMateriali
    # Line 2729
    sw	$v1,4300($zero)
    ld	$gp,16($sp)
    # Line 2732
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2731
    sw	$a0,4300($zero)
.end __glce_Materiali

# Function: __glce_Materialiv
# Declared: Line 2737 (Source lines: 2738-2748)
# Address: 0x0dbc81e4 - 0x0dbc8268 (Size: 132 bytes, Frame: 224)
.globl __glce_Materialiv
.ent __glce_Materialiv
__glce_Materialiv:
    # Line 2738
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2740
    lw	$at,__glCurrentContext
    # Line 2738
    lui	$v0,0x3
    addiu	$v0,$v0,25780
    addu	$gp,$t9,$v0
    # Line 2742
    lw	$v0,4304($zero)
    # Line 2744
    # lw $t9, -17016($gp) # &glMaterialiv
    sd	$at,32($sp)
    # Line 2743
    lw	$at,5784($at)
    sd	$v0,24($sp)
    # Line 2744
    jal	glMaterialiv
    # Line 2743
    sw	$at,4304($zero)
    ld	$a2,40($sp)
    # Line 2745
    ld	$v1,32($sp)
    # Line 2746
    ld	$a1,48($sp)
    # lw $t9, -17016($gp) # &glMaterialiv
    # Line 2745
    lw	$v1,9904($v1)
    # Line 2746
    move	$a0,$s8
    jal	glMaterialiv
    # Line 2745
    sw	$v1,4304($zero)
    ld	$gp,16($sp)
    # Line 2748
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2747
    sw	$a0,4304($zero)
.end __glce_Materialiv

# Function: __glce_PointSize
# Declared: Line 2753 (Source lines: 2754-2764)
# Address: 0x0dbc8268 - 0x0dbc82dc (Size: 116 bytes, Frame: 192)
.globl __glce_PointSize
.ent __glce_PointSize
__glce_PointSize:
    # Line 2754
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,8($sp)
    # Line 2758
    lw	$v0,4308($zero)
    sd	$gp,24($sp)
    # Line 2754
    lui	$v1,0x3
    addiu	$v1,$v1,25648
    sd	$s8,16($sp)
    # Line 2756
    lw	$s8,__glCurrentContext
    # Line 2754
    addu	$gp,$t9,$v1
    # Line 2760
    # lw $t9, -17012($gp) # &glPointSize
    # Line 2759
    lw	$at,5788($s8)
    sd	$v0,32($sp)
    # Line 2760
    jal	glPointSize
    # Line 2759
    sw	$at,4308($zero)
    # Line 2762
    # lw $t9, -17012($gp) # &glPointSize
    # Line 2761
    lw	$a0,9908($s8)
    # Line 2762
    mov.s	$f12,$f30
    jal	glPointSize
    # Line 2761
    sw	$a0,4308($zero)
    ld	$gp,24($sp)
    # Line 2764
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2763
    sw	$a1,4308($zero)
.end __glce_PointSize

# Function: __glce_PolygonMode
# Declared: Line 2769 (Source lines: 2770-2780)
# Address: 0x0dbc82dc - 0x0dbc8358 (Size: 124 bytes, Frame: 192)
.globl __glce_PolygonMode
.ent __glce_PolygonMode
__glce_PolygonMode:
    # Line 2770
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2772
    lw	$at,__glCurrentContext
    # Line 2770
    lui	$v0,0x3
    addiu	$v0,$v0,25532
    addu	$gp,$t9,$v0
    # Line 2774
    lw	$v0,4312($zero)
    # Line 2776
    # lw $t9, -17008($gp) # &glPolygonMode
    sd	$at,32($sp)
    # Line 2775
    lw	$at,5792($at)
    sd	$v0,24($sp)
    # Line 2776
    jal	glPolygonMode
    # Line 2775
    sw	$at,4312($zero)
    # Line 2777
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 2778
    # lw $t9, -17008($gp) # &glPolygonMode
    # Line 2777
    lw	$v1,9912($v1)
    # Line 2778
    move	$a0,$s8
    jal	glPolygonMode
    # Line 2777
    sw	$v1,4312($zero)
    ld	$gp,16($sp)
    # Line 2780
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2779
    sw	$a0,4312($zero)
.end __glce_PolygonMode

# Function: __glce_PolygonStipple
# Declared: Line 2785 (Source lines: 2786-2796)
# Address: 0x0dbc8358 - 0x0dbc83cc (Size: 116 bytes, Frame: 192)
.globl __glce_PolygonStipple
.ent __glce_PolygonStipple
__glce_PolygonStipple:
    # Line 2786
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2788
    lw	$at,__glCurrentContext
    # Line 2786
    lui	$v0,0x3
    addiu	$v0,$v0,25408
    addu	$gp,$t9,$v0
    # Line 2790
    lw	$v0,4316($zero)
    # Line 2792
    # lw $t9, -17004($gp) # &glPolygonStipple
    sd	$at,32($sp)
    # Line 2791
    lw	$at,5796($at)
    sd	$v0,24($sp)
    # Line 2792
    jal	glPolygonStipple
    # Line 2791
    sw	$at,4316($zero)
    # Line 2793
    ld	$v1,32($sp)
    # Line 2794
    # lw $t9, -17004($gp) # &glPolygonStipple
    # Line 2793
    lw	$v1,9916($v1)
    # Line 2794
    move	$a0,$s8
    jal	glPolygonStipple
    # Line 2793
    sw	$v1,4316($zero)
    ld	$gp,16($sp)
    # Line 2796
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2795
    sw	$a0,4316($zero)
.end __glce_PolygonStipple

# Function: __glce_Scissor
# Declared: Line 2801 (Source lines: 2802-2812)
# Address: 0x0dbc83cc - 0x0dbc8458 (Size: 140 bytes, Frame: 224)
.globl __glce_Scissor
.ent __glce_Scissor
__glce_Scissor:
    # Line 2802
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2804
    lw	$at,__glCurrentContext
    # Line 2802
    lui	$v0,0x3
    addiu	$v0,$v0,25292
    addu	$gp,$t9,$v0
    # Line 2806
    lw	$v0,4320($zero)
    # Line 2808
    # lw $t9, -17000($gp) # &glScissor
    sd	$at,32($sp)
    # Line 2807
    lw	$at,5800($at)
    sd	$v0,24($sp)
    # Line 2808
    jal	glScissor
    # Line 2807
    sw	$at,4320($zero)
    ld	$a3,40($sp)
    # Line 2810
    ld	$a2,48($sp)
    # Line 2809
    ld	$v1,32($sp)
    # Line 2810
    ld	$a1,56($sp)
    # lw $t9, -17000($gp) # &glScissor
    # Line 2809
    lw	$v1,9920($v1)
    # Line 2810
    move	$a0,$s8
    jal	glScissor
    # Line 2809
    sw	$v1,4320($zero)
    ld	$gp,16($sp)
    # Line 2812
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2811
    sw	$a0,4320($zero)
.end __glce_Scissor

# Function: __glce_ShadeModel
# Declared: Line 2817 (Source lines: 2818-2828)
# Address: 0x0dbc8458 - 0x0dbc84cc (Size: 116 bytes, Frame: 192)
.globl __glce_ShadeModel
.ent __glce_ShadeModel
__glce_ShadeModel:
    # Line 2818
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2820
    lw	$at,__glCurrentContext
    # Line 2818
    lui	$v0,0x3
    addiu	$v0,$v0,25152
    addu	$gp,$t9,$v0
    # Line 2822
    lw	$v0,4324($zero)
    # Line 2824
    # lw $t9, -16996($gp) # &glShadeModel
    sd	$at,32($sp)
    # Line 2823
    lw	$at,5804($at)
    sd	$v0,24($sp)
    # Line 2824
    jal	glShadeModel
    # Line 2823
    sw	$at,4324($zero)
    # Line 2825
    ld	$v1,32($sp)
    # Line 2826
    # lw $t9, -16996($gp) # &glShadeModel
    # Line 2825
    lw	$v1,9924($v1)
    # Line 2826
    move	$a0,$s8
    jal	glShadeModel
    # Line 2825
    sw	$v1,4324($zero)
    ld	$gp,16($sp)
    # Line 2828
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2827
    sw	$a0,4324($zero)
.end __glce_ShadeModel

# Function: __glce_TexParameterf
# Declared: Line 2833 (Source lines: 2834-2844)
# Address: 0x0dbc84cc - 0x0dbc8558 (Size: 140 bytes, Frame: 224)
.globl __glce_TexParameterf
.ent __glce_TexParameterf
__glce_TexParameterf:
    # Line 2834
    addiu	$sp,$sp,-96
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$a1,48($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 2836
    lw	$at,__glCurrentContext
    # Line 2834
    lui	$v0,0x3
    addiu	$v0,$v0,25036
    addu	$gp,$t9,$v0
    # Line 2838
    lw	$v0,4328($zero)
    # Line 2840
    # lw $t9, -16992($gp) # &glTexParameterf
    sd	$at,40($sp)
    # Line 2839
    lw	$at,5808($at)
    sd	$v0,32($sp)
    # Line 2840
    jal	glTexParameterf
    # Line 2839
    sw	$at,4328($zero)
    # Line 2842
    mov.s	$f14,$f30
    # Line 2841
    ld	$v1,40($sp)
    # Line 2842
    ld	$a1,48($sp)
    # lw $t9, -16992($gp) # &glTexParameterf
    # Line 2841
    lw	$v1,9928($v1)
    # Line 2842
    move	$a0,$s8
    jal	glTexParameterf
    # Line 2841
    sw	$v1,4328($zero)
    ld	$gp,24($sp)
    # Line 2844
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2843
    sw	$a0,4328($zero)
.end __glce_TexParameterf

# Function: __glce_TexParameterfv
# Declared: Line 2849 (Source lines: 2850-2860)
# Address: 0x0dbc8558 - 0x0dbc85dc (Size: 132 bytes, Frame: 224)
.globl __glce_TexParameterfv
.ent __glce_TexParameterfv
__glce_TexParameterfv:
    # Line 2850
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2852
    lw	$at,__glCurrentContext
    # Line 2850
    lui	$v0,0x3
    addiu	$v0,$v0,24896
    addu	$gp,$t9,$v0
    # Line 2854
    lw	$v0,4332($zero)
    # Line 2856
    # lw $t9, -16988($gp) # &glTexParameterfv
    sd	$at,32($sp)
    # Line 2855
    lw	$at,5812($at)
    sd	$v0,24($sp)
    # Line 2856
    jal	glTexParameterfv
    # Line 2855
    sw	$at,4332($zero)
    ld	$a2,40($sp)
    # Line 2857
    ld	$v1,32($sp)
    # Line 2858
    ld	$a1,48($sp)
    # lw $t9, -16988($gp) # &glTexParameterfv
    # Line 2857
    lw	$v1,9932($v1)
    # Line 2858
    move	$a0,$s8
    jal	glTexParameterfv
    # Line 2857
    sw	$v1,4332($zero)
    ld	$gp,16($sp)
    # Line 2860
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2859
    sw	$a0,4332($zero)
.end __glce_TexParameterfv

# Function: __glce_TexParameteri
# Declared: Line 2865 (Source lines: 2866-2876)
# Address: 0x0dbc85dc - 0x0dbc8660 (Size: 132 bytes, Frame: 224)
.globl __glce_TexParameteri
.ent __glce_TexParameteri
__glce_TexParameteri:
    # Line 2866
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2868
    lw	$at,__glCurrentContext
    # Line 2866
    lui	$v0,0x3
    addiu	$v0,$v0,24764
    addu	$gp,$t9,$v0
    # Line 2870
    lw	$v0,4336($zero)
    # Line 2872
    # lw $t9, -16984($gp) # &glTexParameteri
    sd	$at,32($sp)
    # Line 2871
    lw	$at,5816($at)
    sd	$v0,24($sp)
    # Line 2872
    jal	glTexParameteri
    # Line 2871
    sw	$at,4336($zero)
    ld	$a2,40($sp)
    # Line 2873
    ld	$v1,32($sp)
    # Line 2874
    ld	$a1,48($sp)
    # lw $t9, -16984($gp) # &glTexParameteri
    # Line 2873
    lw	$v1,9936($v1)
    # Line 2874
    move	$a0,$s8
    jal	glTexParameteri
    # Line 2873
    sw	$v1,4336($zero)
    ld	$gp,16($sp)
    # Line 2876
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2875
    sw	$a0,4336($zero)
.end __glce_TexParameteri

# Function: __glce_TexParameteriv
# Declared: Line 2881 (Source lines: 2882-2892)
# Address: 0x0dbc8660 - 0x0dbc86e4 (Size: 132 bytes, Frame: 224)
.globl __glce_TexParameteriv
.ent __glce_TexParameteriv
__glce_TexParameteriv:
    # Line 2882
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2884
    lw	$at,__glCurrentContext
    # Line 2882
    lui	$v0,0x3
    addiu	$v0,$v0,24632
    addu	$gp,$t9,$v0
    # Line 2886
    lw	$v0,4340($zero)
    # Line 2888
    # lw $t9, -16980($gp) # &glTexParameteriv
    sd	$at,32($sp)
    # Line 2887
    lw	$at,5820($at)
    sd	$v0,24($sp)
    # Line 2888
    jal	glTexParameteriv
    # Line 2887
    sw	$at,4340($zero)
    ld	$a2,40($sp)
    # Line 2889
    ld	$v1,32($sp)
    # Line 2890
    ld	$a1,48($sp)
    # lw $t9, -16980($gp) # &glTexParameteriv
    # Line 2889
    lw	$v1,9940($v1)
    # Line 2890
    move	$a0,$s8
    jal	glTexParameteriv
    # Line 2889
    sw	$v1,4340($zero)
    ld	$gp,16($sp)
    # Line 2892
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2891
    sw	$a0,4340($zero)
.end __glce_TexParameteriv

# Function: __glce_TexImage1D
# Declared: Line 2897 (Source lines: 2898-2908)
# Address: 0x0dbc86e4 - 0x0dbc8790 (Size: 172 bytes, Frame: 160)
.globl __glce_TexImage1D
.ent __glce_TexImage1D
__glce_TexImage1D:
    # Line 2898
    addiu	$sp,$sp,-160
    sd	$a7,40($sp)
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2900
    lw	$at,__glCurrentContext
    # Line 2898
    lui	$v0,0x3
    addiu	$v0,$v0,24500
    addu	$gp,$t9,$v0
    # Line 2902
    lw	$v0,4344($zero)
    # Line 2904
    # lw $t9, -16976($gp) # &glTexImage1D
    sd	$at,32($sp)
    # Line 2903
    lw	$at,5824($at)
    sd	$v0,24($sp)
    # Line 2904
    jal	glTexImage1D
    # Line 2903
    sw	$at,4344($zero)
    ld	$a7,40($sp)
    # Line 2906
    ld	$a6,48($sp)
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # Line 2905
    ld	$v1,32($sp)
    # Line 2906
    ld	$a1,88($sp)
    # lw $t9, -16976($gp) # &glTexImage1D
    # Line 2905
    lw	$v1,9944($v1)
    # Line 2906
    move	$a0,$s8
    jal	glTexImage1D
    # Line 2905
    sw	$v1,4344($zero)
    ld	$gp,16($sp)
    # Line 2908
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 2907
    sw	$a0,4344($zero)
.end __glce_TexImage1D

# Function: __glce_TexImage2D
# Declared: Line 2913 (Source lines: 2914-2924)
# Address: 0x0dbc8790 - 0x0dbc8850 (Size: 192 bytes, Frame: 192)
.globl __glce_TexImage2D
.ent __glce_TexImage2D
__glce_TexImage2D:
    # Line 2914
    addiu	$sp,$sp,-192
    sd	$a7,64($sp)
    sd	$a6,72($sp)
    sd	$a5,80($sp)
    sd	$a4,88($sp)
    sd	$a3,96($sp)
    sd	$a2,104($sp)
    sd	$a1,112($sp)
    sd	$s8,24($sp)
    # Line 2920
    lw	$at,196($sp)
    # Line 2914
    move	$s8,$a0
    sd	$ra,16($sp)
    sd	$at,48($sp)
    sd	$gp,32($sp)
    lui	$v1,0x3
    addiu	$v1,$v1,24328
    # Line 2916
    lw	$v0,__glCurrentContext
    # Line 2914
    addu	$gp,$t9,$v1
    # Line 2918
    lw	$v1,4348($zero)
    sd	$v0,56($sp)
    # Line 2919
    lw	$v0,5828($v0)
    # Line 2920
    # lw $t9, -16972($gp) # &glTexImage2D
    sd	$v1,40($sp)
    # Line 2919
    sw	$v0,4348($zero)
    # Line 2920
    jal	glTexImage2D
    sw	$at,4($sp)
    ld	$a7,64($sp)
    # Line 2922
    ld	$a6,72($sp)
    ld	$a5,80($sp)
    ld	$a4,88($sp)
    ld	$a3,96($sp)
    ld	$a2,104($sp)
    # Line 2921
    ld	$t1,56($sp)
    # Line 2922
    ld	$a1,112($sp)
    move	$a0,$s8
    # Line 2921
    lw	$t1,9948($t1)
    # Line 2922
    # lw $t9, -16972($gp) # &glTexImage2D
    ld	$t0,48($sp)
    # Line 2921
    sw	$t1,4348($zero)
    # Line 2922
    jal	glTexImage2D
    sw	$t0,4($sp)
    ld	$s8,40($sp)
    ld	$gp,32($sp)
    # Line 2924
    ld	$ra,16($sp)
    # Line 2923
    sw	$s8,4348($zero)
    # Line 2924
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glce_TexImage2D

# Function: __glce_TexEnvf
# Declared: Line 2929 (Source lines: 2930-2940)
# Address: 0x0dbc8850 - 0x0dbc88dc (Size: 140 bytes, Frame: 224)
.globl __glce_TexEnvf
.ent __glce_TexEnvf
__glce_TexEnvf:
    # Line 2930
    addiu	$sp,$sp,-96
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$a1,48($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 2932
    lw	$at,__glCurrentContext
    # Line 2930
    lui	$v0,0x3
    addiu	$v0,$v0,24136
    addu	$gp,$t9,$v0
    # Line 2934
    lw	$v0,4352($zero)
    # Line 2936
    # lw $t9, -16968($gp) # &glTexEnvf
    sd	$at,40($sp)
    # Line 2935
    lw	$at,5832($at)
    sd	$v0,32($sp)
    # Line 2936
    jal	glTexEnvf
    # Line 2935
    sw	$at,4352($zero)
    # Line 2938
    mov.s	$f14,$f30
    # Line 2937
    ld	$v1,40($sp)
    # Line 2938
    ld	$a1,48($sp)
    # lw $t9, -16968($gp) # &glTexEnvf
    # Line 2937
    lw	$v1,9952($v1)
    # Line 2938
    move	$a0,$s8
    jal	glTexEnvf
    # Line 2937
    sw	$v1,4352($zero)
    ld	$gp,24($sp)
    # Line 2940
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2939
    sw	$a0,4352($zero)
.end __glce_TexEnvf

# Function: __glce_TexEnvfv
# Declared: Line 2945 (Source lines: 2946-2956)
# Address: 0x0dbc88dc - 0x0dbc8960 (Size: 132 bytes, Frame: 224)
.globl __glce_TexEnvfv
.ent __glce_TexEnvfv
__glce_TexEnvfv:
    # Line 2946
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2948
    lw	$at,__glCurrentContext
    # Line 2946
    lui	$v0,0x3
    addiu	$v0,$v0,23996
    addu	$gp,$t9,$v0
    # Line 2950
    lw	$v0,4356($zero)
    # Line 2952
    # lw $t9, -16964($gp) # &glTexEnvfv
    sd	$at,32($sp)
    # Line 2951
    lw	$at,5836($at)
    sd	$v0,24($sp)
    # Line 2952
    jal	glTexEnvfv
    # Line 2951
    sw	$at,4356($zero)
    ld	$a2,40($sp)
    # Line 2953
    ld	$v1,32($sp)
    # Line 2954
    ld	$a1,48($sp)
    # lw $t9, -16964($gp) # &glTexEnvfv
    # Line 2953
    lw	$v1,9956($v1)
    # Line 2954
    move	$a0,$s8
    jal	glTexEnvfv
    # Line 2953
    sw	$v1,4356($zero)
    ld	$gp,16($sp)
    # Line 2956
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2955
    sw	$a0,4356($zero)
.end __glce_TexEnvfv

# Function: __glce_TexEnvi
# Declared: Line 2961 (Source lines: 2962-2972)
# Address: 0x0dbc8960 - 0x0dbc89e4 (Size: 132 bytes, Frame: 224)
.globl __glce_TexEnvi
.ent __glce_TexEnvi
__glce_TexEnvi:
    # Line 2962
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2964
    lw	$at,__glCurrentContext
    # Line 2962
    lui	$v0,0x3
    addiu	$v0,$v0,23864
    addu	$gp,$t9,$v0
    # Line 2966
    lw	$v0,4360($zero)
    # Line 2968
    # lw $t9, -16960($gp) # &glTexEnvi
    sd	$at,32($sp)
    # Line 2967
    lw	$at,5840($at)
    sd	$v0,24($sp)
    # Line 2968
    jal	glTexEnvi
    # Line 2967
    sw	$at,4360($zero)
    ld	$a2,40($sp)
    # Line 2969
    ld	$v1,32($sp)
    # Line 2970
    ld	$a1,48($sp)
    # lw $t9, -16960($gp) # &glTexEnvi
    # Line 2969
    lw	$v1,9960($v1)
    # Line 2970
    move	$a0,$s8
    jal	glTexEnvi
    # Line 2969
    sw	$v1,4360($zero)
    ld	$gp,16($sp)
    # Line 2972
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2971
    sw	$a0,4360($zero)
.end __glce_TexEnvi

# Function: __glce_TexEnviv
# Declared: Line 2977 (Source lines: 2978-2988)
# Address: 0x0dbc89e4 - 0x0dbc8a68 (Size: 132 bytes, Frame: 224)
.globl __glce_TexEnviv
.ent __glce_TexEnviv
__glce_TexEnviv:
    # Line 2978
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 2980
    lw	$at,__glCurrentContext
    # Line 2978
    lui	$v0,0x3
    addiu	$v0,$v0,23732
    addu	$gp,$t9,$v0
    # Line 2982
    lw	$v0,4364($zero)
    # Line 2984
    # lw $t9, -16956($gp) # &glTexEnviv
    sd	$at,32($sp)
    # Line 2983
    lw	$at,5844($at)
    sd	$v0,24($sp)
    # Line 2984
    jal	glTexEnviv
    # Line 2983
    sw	$at,4364($zero)
    ld	$a2,40($sp)
    # Line 2985
    ld	$v1,32($sp)
    # Line 2986
    ld	$a1,48($sp)
    # lw $t9, -16956($gp) # &glTexEnviv
    # Line 2985
    lw	$v1,9964($v1)
    # Line 2986
    move	$a0,$s8
    jal	glTexEnviv
    # Line 2985
    sw	$v1,4364($zero)
    ld	$gp,16($sp)
    # Line 2988
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 2987
    sw	$a0,4364($zero)
.end __glce_TexEnviv

# Function: __glce_TexGend
# Declared: Line 2993 (Source lines: 2994-3004)
# Address: 0x0dbc8a68 - 0x0dbc8af4 (Size: 140 bytes, Frame: 224)
.globl __glce_TexGend
.ent __glce_TexGend
__glce_TexGend:
    # Line 2994
    addiu	$sp,$sp,-96
    sdc1	$f30,0($sp)
    mov.d	$f30,$f14
    sd	$a1,48($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 2996
    lw	$at,__glCurrentContext
    # Line 2994
    lui	$v0,0x3
    addiu	$v0,$v0,23600
    addu	$gp,$t9,$v0
    # Line 2998
    lw	$v0,4368($zero)
    # Line 3000
    # lw $t9, -16952($gp) # &glTexGend
    sd	$at,40($sp)
    # Line 2999
    lw	$at,5848($at)
    sd	$v0,32($sp)
    # Line 3000
    jal	glTexGend
    # Line 2999
    sw	$at,4368($zero)
    # Line 3002
    mov.d	$f14,$f30
    # Line 3001
    ld	$v1,40($sp)
    # Line 3002
    ld	$a1,48($sp)
    # lw $t9, -16952($gp) # &glTexGend
    # Line 3001
    lw	$v1,9968($v1)
    # Line 3002
    move	$a0,$s8
    jal	glTexGend
    # Line 3001
    sw	$v1,4368($zero)
    ld	$gp,24($sp)
    # Line 3004
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3003
    sw	$a0,4368($zero)
.end __glce_TexGend

# Function: __glce_TexGendv
# Declared: Line 3009 (Source lines: 3010-3020)
# Address: 0x0dbc8af4 - 0x0dbc8b78 (Size: 132 bytes, Frame: 224)
.globl __glce_TexGendv
.ent __glce_TexGendv
__glce_TexGendv:
    # Line 3010
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3012
    lw	$at,__glCurrentContext
    # Line 3010
    lui	$v0,0x3
    addiu	$v0,$v0,23460
    addu	$gp,$t9,$v0
    # Line 3014
    lw	$v0,4372($zero)
    # Line 3016
    # lw $t9, -16948($gp) # &glTexGendv
    sd	$at,32($sp)
    # Line 3015
    lw	$at,5852($at)
    sd	$v0,24($sp)
    # Line 3016
    jal	glTexGendv
    # Line 3015
    sw	$at,4372($zero)
    ld	$a2,40($sp)
    # Line 3017
    ld	$v1,32($sp)
    # Line 3018
    ld	$a1,48($sp)
    # lw $t9, -16948($gp) # &glTexGendv
    # Line 3017
    lw	$v1,9972($v1)
    # Line 3018
    move	$a0,$s8
    jal	glTexGendv
    # Line 3017
    sw	$v1,4372($zero)
    ld	$gp,16($sp)
    # Line 3020
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3019
    sw	$a0,4372($zero)
.end __glce_TexGendv

# Function: __glce_TexGenf
# Declared: Line 3025 (Source lines: 3026-3036)
# Address: 0x0dbc8b78 - 0x0dbc8c04 (Size: 140 bytes, Frame: 224)
.globl __glce_TexGenf
.ent __glce_TexGenf
__glce_TexGenf:
    # Line 3026
    addiu	$sp,$sp,-96
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$a1,48($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 3028
    lw	$at,__glCurrentContext
    # Line 3026
    lui	$v0,0x3
    addiu	$v0,$v0,23328
    addu	$gp,$t9,$v0
    # Line 3030
    lw	$v0,4376($zero)
    # Line 3032
    # lw $t9, -16944($gp) # &glTexGenf
    sd	$at,40($sp)
    # Line 3031
    lw	$at,5856($at)
    sd	$v0,32($sp)
    # Line 3032
    jal	glTexGenf
    # Line 3031
    sw	$at,4376($zero)
    # Line 3034
    mov.s	$f14,$f30
    # Line 3033
    ld	$v1,40($sp)
    # Line 3034
    ld	$a1,48($sp)
    # lw $t9, -16944($gp) # &glTexGenf
    # Line 3033
    lw	$v1,9976($v1)
    # Line 3034
    move	$a0,$s8
    jal	glTexGenf
    # Line 3033
    sw	$v1,4376($zero)
    ld	$gp,24($sp)
    # Line 3036
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3035
    sw	$a0,4376($zero)
.end __glce_TexGenf

# Function: __glce_TexGenfv
# Declared: Line 3041 (Source lines: 3042-3052)
# Address: 0x0dbc8c04 - 0x0dbc8c88 (Size: 132 bytes, Frame: 224)
.globl __glce_TexGenfv
.ent __glce_TexGenfv
__glce_TexGenfv:
    # Line 3042
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3044
    lw	$at,__glCurrentContext
    # Line 3042
    lui	$v0,0x3
    addiu	$v0,$v0,23188
    addu	$gp,$t9,$v0
    # Line 3046
    lw	$v0,4380($zero)
    # Line 3048
    # lw $t9, -16940($gp) # &glTexGenfv
    sd	$at,32($sp)
    # Line 3047
    lw	$at,5860($at)
    sd	$v0,24($sp)
    # Line 3048
    jal	glTexGenfv
    # Line 3047
    sw	$at,4380($zero)
    ld	$a2,40($sp)
    # Line 3049
    ld	$v1,32($sp)
    # Line 3050
    ld	$a1,48($sp)
    # lw $t9, -16940($gp) # &glTexGenfv
    # Line 3049
    lw	$v1,9980($v1)
    # Line 3050
    move	$a0,$s8
    jal	glTexGenfv
    # Line 3049
    sw	$v1,4380($zero)
    ld	$gp,16($sp)
    # Line 3052
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3051
    sw	$a0,4380($zero)
.end __glce_TexGenfv

# Function: __glce_TexGeni
# Declared: Line 3057 (Source lines: 3058-3068)
# Address: 0x0dbc8c88 - 0x0dbc8d0c (Size: 132 bytes, Frame: 224)
.globl __glce_TexGeni
.ent __glce_TexGeni
__glce_TexGeni:
    # Line 3058
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3060
    lw	$at,__glCurrentContext
    # Line 3058
    lui	$v0,0x3
    addiu	$v0,$v0,23056
    addu	$gp,$t9,$v0
    # Line 3062
    lw	$v0,4384($zero)
    # Line 3064
    # lw $t9, -16936($gp) # &glTexGeni
    sd	$at,32($sp)
    # Line 3063
    lw	$at,5864($at)
    sd	$v0,24($sp)
    # Line 3064
    jal	glTexGeni
    # Line 3063
    sw	$at,4384($zero)
    ld	$a2,40($sp)
    # Line 3065
    ld	$v1,32($sp)
    # Line 3066
    ld	$a1,48($sp)
    # lw $t9, -16936($gp) # &glTexGeni
    # Line 3065
    lw	$v1,9984($v1)
    # Line 3066
    move	$a0,$s8
    jal	glTexGeni
    # Line 3065
    sw	$v1,4384($zero)
    ld	$gp,16($sp)
    # Line 3068
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3067
    sw	$a0,4384($zero)
.end __glce_TexGeni

# Function: __glce_TexGeniv
# Declared: Line 3073 (Source lines: 3074-3084)
# Address: 0x0dbc8d0c - 0x0dbc8d90 (Size: 132 bytes, Frame: 224)
.globl __glce_TexGeniv
.ent __glce_TexGeniv
__glce_TexGeniv:
    # Line 3074
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3076
    lw	$at,__glCurrentContext
    # Line 3074
    lui	$v0,0x3
    addiu	$v0,$v0,22924
    addu	$gp,$t9,$v0
    # Line 3078
    lw	$v0,4388($zero)
    # Line 3080
    # lw $t9, -16932($gp) # &glTexGeniv
    sd	$at,32($sp)
    # Line 3079
    lw	$at,5868($at)
    sd	$v0,24($sp)
    # Line 3080
    jal	glTexGeniv
    # Line 3079
    sw	$at,4388($zero)
    ld	$a2,40($sp)
    # Line 3081
    ld	$v1,32($sp)
    # Line 3082
    ld	$a1,48($sp)
    # lw $t9, -16932($gp) # &glTexGeniv
    # Line 3081
    lw	$v1,9988($v1)
    # Line 3082
    move	$a0,$s8
    jal	glTexGeniv
    # Line 3081
    sw	$v1,4388($zero)
    ld	$gp,16($sp)
    # Line 3084
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3083
    sw	$a0,4388($zero)
.end __glce_TexGeniv

# Function: __glce_FeedbackBuffer
# Declared: Line 3089 (Source lines: 3090-3098)
# Address: 0x0dbc8d90 - 0x0dbc8ddc (Size: 76 bytes, Frame: 192)
.globl __glce_FeedbackBuffer
.ent __glce_FeedbackBuffer
__glce_FeedbackBuffer:
    # Line 3090
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 3094
    lw	$s8,4392($zero)
    sd	$gp,16($sp)
    # Line 3095
    lw	$at,__glCurrentContext
    # Line 3090
    lui	$v0,0x3
    addiu	$v0,$v0,22792
    addu	$gp,$t9,$v0
    # Line 3096
    # lw $t9, -16928($gp) # &glFeedbackBuffer
    # Line 3095
    lw	$at,9992($at)
    sd	$ra,0($sp)
    # Line 3096
    jal	glFeedbackBuffer
    # Line 3095
    sw	$at,4392($zero)
    ld	$gp,16($sp)
    # Line 3098
    ld	$ra,0($sp)
    # Line 3097
    sw	$s8,4392($zero)
    # Line 3098
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FeedbackBuffer

# Function: __glce_SelectBuffer
# Declared: Line 3103 (Source lines: 3104-3112)
# Address: 0x0dbc8ddc - 0x0dbc8e28 (Size: 76 bytes, Frame: 48)
.globl __glce_SelectBuffer
.ent __glce_SelectBuffer
__glce_SelectBuffer:
    # Line 3104
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 3108
    lw	$s8,4396($zero)
    sd	$gp,16($sp)
    # Line 3109
    lw	$at,__glCurrentContext
    # Line 3104
    lui	$v0,0x3
    addiu	$v0,$v0,22716
    addu	$gp,$t9,$v0
    # Line 3110
    # lw $t9, -16924($gp) # &glSelectBuffer
    # Line 3109
    lw	$at,9996($at)
    sd	$ra,0($sp)
    # Line 3110
    jal	glSelectBuffer
    # Line 3109
    sw	$at,4396($zero)
    ld	$gp,16($sp)
    # Line 3112
    ld	$ra,0($sp)
    # Line 3111
    sw	$s8,4396($zero)
    # Line 3112
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_SelectBuffer

# Function: __glce_RenderMode
# Declared: Line 3117 (Source lines: 3118-3127)
# Address: 0x0dbc8e28 - 0x0dbc8e74 (Size: 76 bytes, Frame: 48)
.globl __glce_RenderMode
.ent __glce_RenderMode
__glce_RenderMode:
    # Line 3118
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 3123
    lw	$s8,4400($zero)
    sd	$gp,16($sp)
    # Line 3124
    lw	$at,__glCurrentContext
    # Line 3118
    lui	$v0,0x3
    addiu	$v0,$v0,22640
    addu	$gp,$t9,$v0
    # Line 3125
    # lw $t9, -16920($gp) # &glRenderMode
    # Line 3124
    lw	$at,10000($at)
    sd	$ra,0($sp)
    # Line 3125
    jal	glRenderMode
    # Line 3124
    sw	$at,4400($zero)
    ld	$gp,16($sp)
    # Line 3127
    ld	$ra,0($sp)
    # Line 3126
    sw	$s8,4400($zero)
    # Line 3127
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_RenderMode

# Function: __glce_InitNames
# Declared: Line 3133 (Source lines: 3134-3144)
# Address: 0x0dbc8e74 - 0x0dbc8ed8 (Size: 100 bytes, Frame: 32)
.globl __glce_InitNames
.ent __glce_InitNames
__glce_InitNames:
    # Line 3134
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 3138
    lw	$v0,4404($zero)
    sd	$gp,16($sp)
    # Line 3134
    lui	$v1,0x3
    addiu	$v1,$v1,22564
    sd	$s8,8($sp)
    # Line 3136
    lw	$s8,__glCurrentContext
    # Line 3134
    addu	$gp,$t9,$v1
    # Line 3140
    # lw $t9, -16916($gp) # &glInitNames
    # Line 3139
    lw	$at,5884($s8)
    sd	$v0,24($sp)
    # Line 3140
    jal	glInitNames
    # Line 3139
    sw	$at,4404($zero)
    # Line 3142
    # lw $t9, -16916($gp) # &glInitNames
    # Line 3141
    lw	$a0,10004($s8)
    # Line 3142
    jal	glInitNames
    # Line 3141
    sw	$a0,4404($zero)
    ld	$gp,16($sp)
    # Line 3144
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3143
    sw	$a1,4404($zero)
.end __glce_InitNames

# Function: __glce_LoadName
# Declared: Line 3149 (Source lines: 3150-3160)
# Address: 0x0dbc8ed8 - 0x0dbc8f4c (Size: 116 bytes, Frame: 192)
.globl __glce_LoadName
.ent __glce_LoadName
__glce_LoadName:
    # Line 3150
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3152
    lw	$at,__glCurrentContext
    # Line 3150
    lui	$v0,0x3
    addiu	$v0,$v0,22464
    addu	$gp,$t9,$v0
    # Line 3154
    lw	$v0,4408($zero)
    # Line 3156
    # lw $t9, -16912($gp) # &glLoadName
    sd	$at,32($sp)
    # Line 3155
    lw	$at,5888($at)
    sd	$v0,24($sp)
    # Line 3156
    jal	glLoadName
    # Line 3155
    sw	$at,4408($zero)
    # Line 3157
    ld	$v1,32($sp)
    # Line 3158
    # lw $t9, -16912($gp) # &glLoadName
    # Line 3157
    lw	$v1,10008($v1)
    # Line 3158
    move	$a0,$s8
    jal	glLoadName
    # Line 3157
    sw	$v1,4408($zero)
    ld	$gp,16($sp)
    # Line 3160
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3159
    sw	$a0,4408($zero)
.end __glce_LoadName

# Function: __glce_PassThrough
# Declared: Line 3165 (Source lines: 3166-3176)
# Address: 0x0dbc8f4c - 0x0dbc8fc0 (Size: 116 bytes, Frame: 192)
.globl __glce_PassThrough
.ent __glce_PassThrough
__glce_PassThrough:
    # Line 3166
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,8($sp)
    # Line 3170
    lw	$v0,4412($zero)
    sd	$gp,24($sp)
    # Line 3166
    lui	$v1,0x3
    addiu	$v1,$v1,22348
    sd	$s8,16($sp)
    # Line 3168
    lw	$s8,__glCurrentContext
    # Line 3166
    addu	$gp,$t9,$v1
    # Line 3172
    # lw $t9, -16908($gp) # &glPassThrough
    # Line 3171
    lw	$at,5892($s8)
    sd	$v0,32($sp)
    # Line 3172
    jal	glPassThrough
    # Line 3171
    sw	$at,4412($zero)
    # Line 3174
    # lw $t9, -16908($gp) # &glPassThrough
    # Line 3173
    lw	$a0,10012($s8)
    # Line 3174
    mov.s	$f12,$f30
    jal	glPassThrough
    # Line 3173
    sw	$a0,4412($zero)
    ld	$gp,24($sp)
    # Line 3176
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3175
    sw	$a1,4412($zero)
.end __glce_PassThrough

# Function: __glce_PopName
# Declared: Line 3181 (Source lines: 3182-3192)
# Address: 0x0dbc8fc0 - 0x0dbc9024 (Size: 100 bytes, Frame: 32)
.globl __glce_PopName
.ent __glce_PopName
__glce_PopName:
    # Line 3182
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 3186
    lw	$v0,4416($zero)
    sd	$gp,16($sp)
    # Line 3182
    lui	$v1,0x3
    addiu	$v1,$v1,22232
    sd	$s8,8($sp)
    # Line 3184
    lw	$s8,__glCurrentContext
    # Line 3182
    addu	$gp,$t9,$v1
    # Line 3188
    # lw $t9, -16904($gp) # &glPopName
    # Line 3187
    lw	$at,5896($s8)
    sd	$v0,24($sp)
    # Line 3188
    jal	glPopName
    # Line 3187
    sw	$at,4416($zero)
    # Line 3190
    # lw $t9, -16904($gp) # &glPopName
    # Line 3189
    lw	$a0,10016($s8)
    # Line 3190
    jal	glPopName
    # Line 3189
    sw	$a0,4416($zero)
    ld	$gp,16($sp)
    # Line 3192
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3191
    sw	$a1,4416($zero)
.end __glce_PopName

# Function: __glce_PushName
# Declared: Line 3197 (Source lines: 3198-3208)
# Address: 0x0dbc9024 - 0x0dbc9098 (Size: 116 bytes, Frame: 192)
.globl __glce_PushName
.ent __glce_PushName
__glce_PushName:
    # Line 3198
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3200
    lw	$at,__glCurrentContext
    # Line 3198
    lui	$v0,0x3
    addiu	$v0,$v0,22132
    addu	$gp,$t9,$v0
    # Line 3202
    lw	$v0,4420($zero)
    # Line 3204
    # lw $t9, -16900($gp) # &glPushName
    sd	$at,32($sp)
    # Line 3203
    lw	$at,5900($at)
    sd	$v0,24($sp)
    # Line 3204
    jal	glPushName
    # Line 3203
    sw	$at,4420($zero)
    # Line 3205
    ld	$v1,32($sp)
    # Line 3206
    # lw $t9, -16900($gp) # &glPushName
    # Line 3205
    lw	$v1,10020($v1)
    # Line 3206
    move	$a0,$s8
    jal	glPushName
    # Line 3205
    sw	$v1,4420($zero)
    ld	$gp,16($sp)
    # Line 3208
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3207
    sw	$a0,4420($zero)
.end __glce_PushName

# Function: __glce_DrawBuffer
# Declared: Line 3213 (Source lines: 3214-3224)
# Address: 0x0dbc9098 - 0x0dbc910c (Size: 116 bytes, Frame: 192)
.globl __glce_DrawBuffer
.ent __glce_DrawBuffer
__glce_DrawBuffer:
    # Line 3214
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3216
    lw	$at,__glCurrentContext
    # Line 3214
    lui	$v0,0x3
    addiu	$v0,$v0,22016
    addu	$gp,$t9,$v0
    # Line 3218
    lw	$v0,4424($zero)
    # Line 3220
    # lw $t9, -16896($gp) # &glDrawBuffer
    sd	$at,32($sp)
    # Line 3219
    lw	$at,5904($at)
    sd	$v0,24($sp)
    # Line 3220
    jal	glDrawBuffer
    # Line 3219
    sw	$at,4424($zero)
    # Line 3221
    ld	$v1,32($sp)
    # Line 3222
    # lw $t9, -16896($gp) # &glDrawBuffer
    # Line 3221
    lw	$v1,10024($v1)
    # Line 3222
    move	$a0,$s8
    jal	glDrawBuffer
    # Line 3221
    sw	$v1,4424($zero)
    ld	$gp,16($sp)
    # Line 3224
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3223
    sw	$a0,4424($zero)
.end __glce_DrawBuffer

# Function: __glce_Clear
# Declared: Line 3229 (Source lines: 3230-3240)
# Address: 0x0dbc910c - 0x0dbc9180 (Size: 116 bytes, Frame: 192)
.globl __glce_Clear
.ent __glce_Clear
__glce_Clear:
    # Line 3230
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3232
    lw	$at,__glCurrentContext
    # Line 3230
    lui	$v0,0x3
    addiu	$v0,$v0,21900
    addu	$gp,$t9,$v0
    # Line 3234
    lw	$v0,4428($zero)
    # Line 3236
    # lw $t9, -16892($gp) # &glClear
    sd	$at,32($sp)
    # Line 3235
    lw	$at,5908($at)
    sd	$v0,24($sp)
    # Line 3236
    jal	glClear
    # Line 3235
    sw	$at,4428($zero)
    # Line 3237
    ld	$v1,32($sp)
    # Line 3238
    # lw $t9, -16892($gp) # &glClear
    # Line 3237
    lw	$v1,10028($v1)
    # Line 3238
    move	$a0,$s8
    jal	glClear
    # Line 3237
    sw	$v1,4428($zero)
    ld	$gp,16($sp)
    # Line 3240
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3239
    sw	$a0,4428($zero)
.end __glce_Clear

# Function: __glce_ClearAccum
# Declared: Line 3245 (Source lines: 3246-3256)
# Address: 0x0dbc9180 - 0x0dbc920c (Size: 140 bytes, Frame: 224)
.globl __glce_ClearAccum
.ent __glce_ClearAccum
__glce_ClearAccum:
    # Line 3246
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 3250
    lw	$v0,4432($zero)
    sd	$gp,48($sp)
    # Line 3246
    lui	$v1,0x3
    addiu	$v1,$v1,21784
    sd	$s8,40($sp)
    # Line 3248
    lw	$s8,__glCurrentContext
    # Line 3246
    addu	$gp,$t9,$v1
    # Line 3252
    # lw $t9, -16888($gp) # &glClearAccum
    # Line 3251
    lw	$at,5912($s8)
    sd	$v0,56($sp)
    # Line 3252
    jal	glClearAccum
    # Line 3251
    sw	$at,4432($zero)
    ldc1	$f15,8($sp)
    # Line 3254
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -16888($gp) # &glClearAccum
    # Line 3253
    lw	$a0,10032($s8)
    # Line 3254
    mov.s	$f12,$f30
    jal	glClearAccum
    # Line 3253
    sw	$a0,4432($zero)
    ld	$gp,48($sp)
    # Line 3256
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3255
    sw	$a1,4432($zero)
.end __glce_ClearAccum

# Function: __glce_ClearIndex
# Declared: Line 3261 (Source lines: 3262-3272)
# Address: 0x0dbc920c - 0x0dbc9280 (Size: 116 bytes, Frame: 192)
.globl __glce_ClearIndex
.ent __glce_ClearIndex
__glce_ClearIndex:
    # Line 3262
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,8($sp)
    # Line 3266
    lw	$v0,4436($zero)
    sd	$gp,24($sp)
    # Line 3262
    lui	$v1,0x3
    addiu	$v1,$v1,21644
    sd	$s8,16($sp)
    # Line 3264
    lw	$s8,__glCurrentContext
    # Line 3262
    addu	$gp,$t9,$v1
    # Line 3268
    # lw $t9, -16884($gp) # &glClearIndex
    # Line 3267
    lw	$at,5916($s8)
    sd	$v0,32($sp)
    # Line 3268
    jal	glClearIndex
    # Line 3267
    sw	$at,4436($zero)
    # Line 3270
    # lw $t9, -16884($gp) # &glClearIndex
    # Line 3269
    lw	$a0,10036($s8)
    # Line 3270
    mov.s	$f12,$f30
    jal	glClearIndex
    # Line 3269
    sw	$a0,4436($zero)
    ld	$gp,24($sp)
    # Line 3272
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3271
    sw	$a1,4436($zero)
.end __glce_ClearIndex

# Function: __glce_ClearColor
# Declared: Line 3277 (Source lines: 3278-3288)
# Address: 0x0dbc9280 - 0x0dbc930c (Size: 140 bytes, Frame: 224)
.globl __glce_ClearColor
.ent __glce_ClearColor
__glce_ClearColor:
    # Line 3278
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 3282
    lw	$v0,4440($zero)
    sd	$gp,48($sp)
    # Line 3278
    lui	$v1,0x3
    addiu	$v1,$v1,21528
    sd	$s8,40($sp)
    # Line 3280
    lw	$s8,__glCurrentContext
    # Line 3278
    addu	$gp,$t9,$v1
    # Line 3284
    # lw $t9, -16880($gp) # &glClearColor
    # Line 3283
    lw	$at,5920($s8)
    sd	$v0,56($sp)
    # Line 3284
    jal	glClearColor
    # Line 3283
    sw	$at,4440($zero)
    ldc1	$f15,8($sp)
    # Line 3286
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -16880($gp) # &glClearColor
    # Line 3285
    lw	$a0,10040($s8)
    # Line 3286
    mov.s	$f12,$f30
    jal	glClearColor
    # Line 3285
    sw	$a0,4440($zero)
    ld	$gp,48($sp)
    # Line 3288
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3287
    sw	$a1,4440($zero)
.end __glce_ClearColor

# Function: __glce_ClearStencil
# Declared: Line 3293 (Source lines: 3294-3304)
# Address: 0x0dbc930c - 0x0dbc9380 (Size: 116 bytes, Frame: 192)
.globl __glce_ClearStencil
.ent __glce_ClearStencil
__glce_ClearStencil:
    # Line 3294
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3296
    lw	$at,__glCurrentContext
    # Line 3294
    lui	$v0,0x3
    addiu	$v0,$v0,21388
    addu	$gp,$t9,$v0
    # Line 3298
    lw	$v0,4444($zero)
    # Line 3300
    # lw $t9, -16876($gp) # &glClearStencil
    sd	$at,32($sp)
    # Line 3299
    lw	$at,5924($at)
    sd	$v0,24($sp)
    # Line 3300
    jal	glClearStencil
    # Line 3299
    sw	$at,4444($zero)
    # Line 3301
    ld	$v1,32($sp)
    # Line 3302
    # lw $t9, -16876($gp) # &glClearStencil
    # Line 3301
    lw	$v1,10044($v1)
    # Line 3302
    move	$a0,$s8
    jal	glClearStencil
    # Line 3301
    sw	$v1,4444($zero)
    ld	$gp,16($sp)
    # Line 3304
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3303
    sw	$a0,4444($zero)
.end __glce_ClearStencil

# Function: __glce_ClearDepth
# Declared: Line 3309 (Source lines: 3310-3320)
# Address: 0x0dbc9380 - 0x0dbc93f4 (Size: 116 bytes, Frame: 192)
.globl __glce_ClearDepth
.ent __glce_ClearDepth
__glce_ClearDepth:
    # Line 3310
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,8($sp)
    # Line 3314
    lw	$v0,4448($zero)
    sd	$gp,24($sp)
    # Line 3310
    lui	$v1,0x3
    addiu	$v1,$v1,21272
    sd	$s8,16($sp)
    # Line 3312
    lw	$s8,__glCurrentContext
    # Line 3310
    addu	$gp,$t9,$v1
    # Line 3316
    # lw $t9, -16872($gp) # &glClearDepth
    # Line 3315
    lw	$at,5928($s8)
    sd	$v0,32($sp)
    # Line 3316
    jal	glClearDepth
    # Line 3315
    sw	$at,4448($zero)
    # Line 3318
    # lw $t9, -16872($gp) # &glClearDepth
    # Line 3317
    lw	$a0,10048($s8)
    # Line 3318
    mov.d	$f12,$f30
    jal	glClearDepth
    # Line 3317
    sw	$a0,4448($zero)
    ld	$gp,24($sp)
    # Line 3320
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3319
    sw	$a1,4448($zero)
.end __glce_ClearDepth

# Function: __glce_StencilMask
# Declared: Line 3325 (Source lines: 3326-3336)
# Address: 0x0dbc93f4 - 0x0dbc9468 (Size: 116 bytes, Frame: 192)
.globl __glce_StencilMask
.ent __glce_StencilMask
__glce_StencilMask:
    # Line 3326
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3328
    lw	$at,__glCurrentContext
    # Line 3326
    lui	$v0,0x3
    addiu	$v0,$v0,21156
    addu	$gp,$t9,$v0
    # Line 3330
    lw	$v0,4452($zero)
    # Line 3332
    # lw $t9, -16868($gp) # &glStencilMask
    sd	$at,32($sp)
    # Line 3331
    lw	$at,5932($at)
    sd	$v0,24($sp)
    # Line 3332
    jal	glStencilMask
    # Line 3331
    sw	$at,4452($zero)
    # Line 3333
    ld	$v1,32($sp)
    # Line 3334
    # lw $t9, -16868($gp) # &glStencilMask
    # Line 3333
    lw	$v1,10052($v1)
    # Line 3334
    move	$a0,$s8
    jal	glStencilMask
    # Line 3333
    sw	$v1,4452($zero)
    ld	$gp,16($sp)
    # Line 3336
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3335
    sw	$a0,4452($zero)
.end __glce_StencilMask

# Function: __glce_ColorMask
# Declared: Line 3341 (Source lines: 3342-3352)
# Address: 0x0dbc9468 - 0x0dbc94f4 (Size: 140 bytes, Frame: 224)
.globl __glce_ColorMask
.ent __glce_ColorMask
__glce_ColorMask:
    # Line 3342
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3344
    lw	$at,__glCurrentContext
    # Line 3342
    lui	$v0,0x3
    addiu	$v0,$v0,21040
    addu	$gp,$t9,$v0
    # Line 3346
    lw	$v0,4456($zero)
    # Line 3348
    # lw $t9, -16864($gp) # &glColorMask
    sd	$at,32($sp)
    # Line 3347
    lw	$at,5936($at)
    sd	$v0,24($sp)
    # Line 3348
    jal	glColorMask
    # Line 3347
    sw	$at,4456($zero)
    ld	$a3,40($sp)
    # Line 3350
    ld	$a2,48($sp)
    # Line 3349
    ld	$v1,32($sp)
    # Line 3350
    ld	$a1,56($sp)
    # lw $t9, -16864($gp) # &glColorMask
    # Line 3349
    lw	$v1,10056($v1)
    # Line 3350
    move	$a0,$s8
    jal	glColorMask
    # Line 3349
    sw	$v1,4456($zero)
    ld	$gp,16($sp)
    # Line 3352
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3351
    sw	$a0,4456($zero)
.end __glce_ColorMask

# Function: __glce_DepthMask
# Declared: Line 3357 (Source lines: 3358-3368)
# Address: 0x0dbc94f4 - 0x0dbc9568 (Size: 116 bytes, Frame: 192)
.globl __glce_DepthMask
.ent __glce_DepthMask
__glce_DepthMask:
    # Line 3358
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3360
    lw	$at,__glCurrentContext
    # Line 3358
    lui	$v0,0x3
    addiu	$v0,$v0,20900
    addu	$gp,$t9,$v0
    # Line 3362
    lw	$v0,4460($zero)
    # Line 3364
    # lw $t9, -16860($gp) # &glDepthMask
    sd	$at,32($sp)
    # Line 3363
    lw	$at,5940($at)
    sd	$v0,24($sp)
    # Line 3364
    jal	glDepthMask
    # Line 3363
    sw	$at,4460($zero)
    # Line 3365
    ld	$v1,32($sp)
    # Line 3366
    # lw $t9, -16860($gp) # &glDepthMask
    # Line 3365
    lw	$v1,10060($v1)
    # Line 3366
    move	$a0,$s8
    jal	glDepthMask
    # Line 3365
    sw	$v1,4460($zero)
    ld	$gp,16($sp)
    # Line 3368
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3367
    sw	$a0,4460($zero)
.end __glce_DepthMask

# Function: __glce_IndexMask
# Declared: Line 3373 (Source lines: 3374-3384)
# Address: 0x0dbc9568 - 0x0dbc95dc (Size: 116 bytes, Frame: 192)
.globl __glce_IndexMask
.ent __glce_IndexMask
__glce_IndexMask:
    # Line 3374
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3376
    lw	$at,__glCurrentContext
    # Line 3374
    lui	$v0,0x3
    addiu	$v0,$v0,20784
    addu	$gp,$t9,$v0
    # Line 3378
    lw	$v0,4464($zero)
    # Line 3380
    # lw $t9, -16856($gp) # &glIndexMask
    sd	$at,32($sp)
    # Line 3379
    lw	$at,5944($at)
    sd	$v0,24($sp)
    # Line 3380
    jal	glIndexMask
    # Line 3379
    sw	$at,4464($zero)
    # Line 3381
    ld	$v1,32($sp)
    # Line 3382
    # lw $t9, -16856($gp) # &glIndexMask
    # Line 3381
    lw	$v1,10064($v1)
    # Line 3382
    move	$a0,$s8
    jal	glIndexMask
    # Line 3381
    sw	$v1,4464($zero)
    ld	$gp,16($sp)
    # Line 3384
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3383
    sw	$a0,4464($zero)
.end __glce_IndexMask

# Function: __glce_Accum
# Declared: Line 3389 (Source lines: 3390-3400)
# Address: 0x0dbc95dc - 0x0dbc9660 (Size: 132 bytes, Frame: 192)
.globl __glce_Accum
.ent __glce_Accum
__glce_Accum:
    # Line 3390
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 3392
    lw	$at,__glCurrentContext
    # Line 3390
    lui	$v0,0x3
    addiu	$v0,$v0,20668
    addu	$gp,$t9,$v0
    # Line 3394
    lw	$v0,4468($zero)
    # Line 3396
    # lw $t9, -16852($gp) # &glAccum
    sd	$at,40($sp)
    # Line 3395
    lw	$at,5948($at)
    sd	$v0,32($sp)
    # Line 3396
    jal	glAccum
    # Line 3395
    sw	$at,4468($zero)
    # Line 3397
    ld	$v1,40($sp)
    # Line 3398
    mov.s	$f13,$f30
    # lw $t9, -16852($gp) # &glAccum
    # Line 3397
    lw	$v1,10068($v1)
    # Line 3398
    move	$a0,$s8
    jal	glAccum
    # Line 3397
    sw	$v1,4468($zero)
    ld	$gp,24($sp)
    # Line 3400
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3399
    sw	$a0,4468($zero)
.end __glce_Accum

# Function: __glce_Disable
# Declared: Line 3405 (Source lines: 3406-3416)
# Address: 0x0dbc9660 - 0x0dbc96d4 (Size: 116 bytes, Frame: 192)
.globl __glce_Disable
.ent __glce_Disable
__glce_Disable:
    # Line 3406
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3408
    lw	$at,__glCurrentContext
    # Line 3406
    lui	$v0,0x3
    addiu	$v0,$v0,20536
    addu	$gp,$t9,$v0
    # Line 3410
    lw	$v0,4472($zero)
    # Line 3412
    # lw $t9, -16848($gp) # &glDisable
    sd	$at,32($sp)
    # Line 3411
    lw	$at,5952($at)
    sd	$v0,24($sp)
    # Line 3412
    jal	glDisable
    # Line 3411
    sw	$at,4472($zero)
    # Line 3413
    ld	$v1,32($sp)
    # Line 3414
    # lw $t9, -16848($gp) # &glDisable
    # Line 3413
    lw	$v1,10072($v1)
    # Line 3414
    move	$a0,$s8
    jal	glDisable
    # Line 3413
    sw	$v1,4472($zero)
    ld	$gp,16($sp)
    # Line 3416
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3415
    sw	$a0,4472($zero)
.end __glce_Disable

# Function: __glce_Enable
# Declared: Line 3421 (Source lines: 3422-3432)
# Address: 0x0dbc96d4 - 0x0dbc9748 (Size: 116 bytes, Frame: 192)
.globl __glce_Enable
.ent __glce_Enable
__glce_Enable:
    # Line 3422
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3424
    lw	$at,__glCurrentContext
    # Line 3422
    lui	$v0,0x3
    addiu	$v0,$v0,20420
    addu	$gp,$t9,$v0
    # Line 3426
    lw	$v0,4476($zero)
    # Line 3428
    # lw $t9, -16844($gp) # &glEnable
    sd	$at,32($sp)
    # Line 3427
    lw	$at,5956($at)
    sd	$v0,24($sp)
    # Line 3428
    jal	glEnable
    # Line 3427
    sw	$at,4476($zero)
    # Line 3429
    ld	$v1,32($sp)
    # Line 3430
    # lw $t9, -16844($gp) # &glEnable
    # Line 3429
    lw	$v1,10076($v1)
    # Line 3430
    move	$a0,$s8
    jal	glEnable
    # Line 3429
    sw	$v1,4476($zero)
    ld	$gp,16($sp)
    # Line 3432
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3431
    sw	$a0,4476($zero)
.end __glce_Enable

# Function: __glce_Finish
# Declared: Line 3437 (Source lines: 3438-3446)
# Address: 0x0dbc9748 - 0x0dbc9794 (Size: 76 bytes, Frame: 32)
.globl __glce_Finish
.ent __glce_Finish
__glce_Finish:
    # Line 3438
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3442
    lw	$s8,4480($zero)
    sd	$gp,16($sp)
    # Line 3443
    lw	$at,__glCurrentContext
    # Line 3438
    lui	$v0,0x3
    addiu	$v0,$v0,20304
    addu	$gp,$t9,$v0
    # Line 3444
    # lw $t9, -16840($gp) # &glFinish
    # Line 3443
    lw	$at,10080($at)
    sd	$ra,0($sp)
    # Line 3444
    jal	glFinish
    # Line 3443
    sw	$at,4480($zero)
    ld	$gp,16($sp)
    # Line 3446
    ld	$ra,0($sp)
    # Line 3445
    sw	$s8,4480($zero)
    # Line 3446
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_Finish

# Function: __glce_Flush
# Declared: Line 3451 (Source lines: 3452-3460)
# Address: 0x0dbc9794 - 0x0dbc97e0 (Size: 76 bytes, Frame: 32)
.globl __glce_Flush
.ent __glce_Flush
__glce_Flush:
    # Line 3452
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 3456
    lw	$s8,4484($zero)
    sd	$gp,16($sp)
    # Line 3457
    lw	$at,__glCurrentContext
    # Line 3452
    lui	$v0,0x3
    addiu	$v0,$v0,20228
    addu	$gp,$t9,$v0
    # Line 3458
    # lw $t9, -16836($gp) # &glFlush
    # Line 3457
    lw	$at,10084($at)
    sd	$ra,0($sp)
    # Line 3458
    jal	glFlush
    # Line 3457
    sw	$at,4484($zero)
    ld	$gp,16($sp)
    # Line 3460
    ld	$ra,0($sp)
    # Line 3459
    sw	$s8,4484($zero)
    # Line 3460
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_Flush

# Function: __glce_PopAttrib
# Declared: Line 3465 (Source lines: 3466-3476)
# Address: 0x0dbc97e0 - 0x0dbc9844 (Size: 100 bytes, Frame: 32)
.globl __glce_PopAttrib
.ent __glce_PopAttrib
__glce_PopAttrib:
    # Line 3466
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 3470
    lw	$v0,4488($zero)
    sd	$gp,16($sp)
    # Line 3466
    lui	$v1,0x3
    addiu	$v1,$v1,20152
    sd	$s8,8($sp)
    # Line 3468
    lw	$s8,__glCurrentContext
    # Line 3466
    addu	$gp,$t9,$v1
    # Line 3472
    # lw $t9, -16832($gp) # &glPopAttrib
    # Line 3471
    lw	$at,5968($s8)
    sd	$v0,24($sp)
    # Line 3472
    jal	glPopAttrib
    # Line 3471
    sw	$at,4488($zero)
    # Line 3474
    # lw $t9, -16832($gp) # &glPopAttrib
    # Line 3473
    lw	$a0,10088($s8)
    # Line 3474
    jal	glPopAttrib
    # Line 3473
    sw	$a0,4488($zero)
    ld	$gp,16($sp)
    # Line 3476
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3475
    sw	$a1,4488($zero)
.end __glce_PopAttrib

# Function: __glce_PushAttrib
# Declared: Line 3481 (Source lines: 3482-3492)
# Address: 0x0dbc9844 - 0x0dbc98b8 (Size: 116 bytes, Frame: 192)
.globl __glce_PushAttrib
.ent __glce_PushAttrib
__glce_PushAttrib:
    # Line 3482
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3484
    lw	$at,__glCurrentContext
    # Line 3482
    lui	$v0,0x3
    addiu	$v0,$v0,20052
    addu	$gp,$t9,$v0
    # Line 3486
    lw	$v0,4492($zero)
    # Line 3488
    # lw $t9, -16828($gp) # &glPushAttrib
    sd	$at,32($sp)
    # Line 3487
    lw	$at,5972($at)
    sd	$v0,24($sp)
    # Line 3488
    jal	glPushAttrib
    # Line 3487
    sw	$at,4492($zero)
    # Line 3489
    ld	$v1,32($sp)
    # Line 3490
    # lw $t9, -16828($gp) # &glPushAttrib
    # Line 3489
    lw	$v1,10092($v1)
    # Line 3490
    move	$a0,$s8
    jal	glPushAttrib
    # Line 3489
    sw	$v1,4492($zero)
    ld	$gp,16($sp)
    # Line 3492
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3491
    sw	$a0,4492($zero)
.end __glce_PushAttrib

# Function: __glce_Map1d
# Declared: Line 3497 (Source lines: 3498-3508)
# Address: 0x0dbc98b8 - 0x0dbc995c (Size: 164 bytes, Frame: 128)
.globl __glce_Map1d
.ent __glce_Map1d
__glce_Map1d:
    # Line 3498
    addiu	$sp,$sp,-128
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sdc1	$f14,8($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f13
    sd	$s8,24($sp)
    move	$s8,$a0
    sd	$ra,16($sp)
    sd	$gp,32($sp)
    # Line 3500
    lw	$at,__glCurrentContext
    # Line 3498
    lui	$v0,0x3
    addiu	$v0,$v0,19936
    addu	$gp,$t9,$v0
    # Line 3502
    lw	$v0,4496($zero)
    # Line 3504
    # lw $t9, -16824($gp) # &glMap1d
    sd	$at,48($sp)
    # Line 3503
    lw	$at,5976($at)
    sd	$v0,40($sp)
    # Line 3504
    jal	glMap1d
    # Line 3503
    sw	$at,4496($zero)
    ld	$a5,56($sp)
    # Line 3506
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ldc1	$f14,8($sp)
    # Line 3505
    ld	$v1,48($sp)
    # Line 3506
    mov.d	$f13,$f30
    # lw $t9, -16824($gp) # &glMap1d
    # Line 3505
    lw	$v1,10096($v1)
    # Line 3506
    move	$a0,$s8
    jal	glMap1d
    # Line 3505
    sw	$v1,4496($zero)
    ld	$gp,32($sp)
    # Line 3508
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a0,40($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 3507
    sw	$a0,4496($zero)
.end __glce_Map1d

# Function: __glce_Map1f
# Declared: Line 3513 (Source lines: 3514-3524)
# Address: 0x0dbc995c - 0x0dbc9a00 (Size: 164 bytes, Frame: 128)
.globl __glce_Map1f
.ent __glce_Map1f
__glce_Map1f:
    # Line 3514
    addiu	$sp,$sp,-128
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sdc1	$f14,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,24($sp)
    move	$s8,$a0
    sd	$ra,16($sp)
    sd	$gp,32($sp)
    # Line 3516
    lw	$at,__glCurrentContext
    # Line 3514
    lui	$v0,0x3
    addiu	$v0,$v0,19772
    addu	$gp,$t9,$v0
    # Line 3518
    lw	$v0,4500($zero)
    # Line 3520
    # lw $t9, -16820($gp) # &glMap1f
    sd	$at,48($sp)
    # Line 3519
    lw	$at,5980($at)
    sd	$v0,40($sp)
    # Line 3520
    jal	glMap1f
    # Line 3519
    sw	$at,4500($zero)
    ld	$a5,56($sp)
    # Line 3522
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ldc1	$f14,8($sp)
    # Line 3521
    ld	$v1,48($sp)
    # Line 3522
    mov.s	$f13,$f30
    # lw $t9, -16820($gp) # &glMap1f
    # Line 3521
    lw	$v1,10100($v1)
    # Line 3522
    move	$a0,$s8
    jal	glMap1f
    # Line 3521
    sw	$v1,4500($zero)
    ld	$gp,32($sp)
    # Line 3524
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a0,40($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 3523
    sw	$a0,4500($zero)
.end __glce_Map1f

# Function: __glce_Map2d
# Declared: Line 3529 (Source lines: 3530-3540)
# Address: 0x0dbc9a00 - 0x0dbc9adc (Size: 220 bytes, Frame: 192)
.globl __glce_Map2d
.ent __glce_Map2d
__glce_Map2d:
    # Line 3530
    addiu	$sp,$sp,-192
    sd	$a7,104($sp)
    sdc1	$f18,24($sp)
    sdc1	$f17,32($sp)
    sd	$a4,112($sp)
    sd	$a3,120($sp)
    sdc1	$f14,40($sp)
    sdc1	$f30,16($sp)
    mov.d	$f30,$f13
    sd	$s8,56($sp)
    move	$s8,$a0
    # Line 3536
    lw	$v0,204($sp)
    lw	$at,196($sp)
    sd	$ra,48($sp)
    sd	$v0,88($sp)
    sd	$at,80($sp)
    sd	$gp,64($sp)
    # Line 3530
    lui	$a1,0x3
    addiu	$a1,$a1,19608
    # Line 3532
    lw	$v1,__glCurrentContext
    # Line 3530
    addu	$gp,$t9,$a1
    # Line 3534
    lw	$a1,4504($zero)
    sd	$v1,96($sp)
    # Line 3535
    lw	$v1,5984($v1)
    sd	$a1,72($sp)
    # Line 3536
    # lw $t9, -16816($gp) # &glMap2d
    # Line 3535
    sw	$v1,4504($zero)
    # Line 3536
    sw	$v0,12($sp)
    jal	glMap2d
    sw	$at,4($sp)
    ld	$a7,104($sp)
    # Line 3538
    ldc1	$f18,24($sp)
    ldc1	$f17,32($sp)
    ld	$a4,112($sp)
    ld	$a3,120($sp)
    ldc1	$f14,40($sp)
    mov.d	$f13,$f30
    # Line 3537
    ld	$a6,96($sp)
    # Line 3538
    move	$a0,$s8
    ld	$a2,80($sp)
    # Line 3537
    lw	$a6,10104($a6)
    # Line 3538
    ld	$a5,88($sp)
    # lw $t9, -16816($gp) # &glMap2d
    # Line 3537
    sw	$a6,4504($zero)
    # Line 3538
    sw	$a5,12($sp)
    jal	glMap2d
    sw	$a2,4($sp)
    ld	$gp,64($sp)
    ld	$s8,72($sp)
    # Line 3540
    ldc1	$f30,16($sp)
    ld	$ra,48($sp)
    # Line 3539
    sw	$s8,4504($zero)
    # Line 3540
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glce_Map2d

# Function: __glce_Map2f
# Declared: Line 3545 (Source lines: 3546-3556)
# Address: 0x0dbc9adc - 0x0dbc9bb8 (Size: 220 bytes, Frame: 192)
.globl __glce_Map2f
.ent __glce_Map2f
__glce_Map2f:
    # Line 3546
    addiu	$sp,$sp,-192
    sd	$a7,104($sp)
    sdc1	$f18,24($sp)
    sdc1	$f17,32($sp)
    sd	$a4,112($sp)
    sd	$a3,120($sp)
    sdc1	$f14,40($sp)
    sdc1	$f30,16($sp)
    mov.s	$f30,$f13
    sd	$s8,56($sp)
    move	$s8,$a0
    # Line 3552
    lw	$v0,204($sp)
    lw	$at,196($sp)
    sd	$ra,48($sp)
    sd	$v0,88($sp)
    sd	$at,80($sp)
    sd	$gp,64($sp)
    # Line 3546
    lui	$a1,0x3
    addiu	$a1,$a1,19388
    # Line 3548
    lw	$v1,__glCurrentContext
    # Line 3546
    addu	$gp,$t9,$a1
    # Line 3550
    lw	$a1,4508($zero)
    sd	$v1,96($sp)
    # Line 3551
    lw	$v1,5988($v1)
    sd	$a1,72($sp)
    # Line 3552
    # lw $t9, -16812($gp) # &glMap2f
    # Line 3551
    sw	$v1,4508($zero)
    # Line 3552
    sw	$v0,12($sp)
    jal	glMap2f
    sw	$at,4($sp)
    ld	$a7,104($sp)
    # Line 3554
    ldc1	$f18,24($sp)
    ldc1	$f17,32($sp)
    ld	$a4,112($sp)
    ld	$a3,120($sp)
    ldc1	$f14,40($sp)
    mov.s	$f13,$f30
    # Line 3553
    ld	$a6,96($sp)
    # Line 3554
    move	$a0,$s8
    ld	$a2,80($sp)
    # Line 3553
    lw	$a6,10108($a6)
    # Line 3554
    ld	$a5,88($sp)
    # lw $t9, -16812($gp) # &glMap2f
    # Line 3553
    sw	$a6,4508($zero)
    # Line 3554
    sw	$a5,12($sp)
    jal	glMap2f
    sw	$a2,4($sp)
    ld	$gp,64($sp)
    ld	$s8,72($sp)
    # Line 3556
    ldc1	$f30,16($sp)
    ld	$ra,48($sp)
    # Line 3555
    sw	$s8,4508($zero)
    # Line 3556
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glce_Map2f

# Function: __glce_MapGrid1d
# Declared: Line 3561 (Source lines: 3562-3572)
# Address: 0x0dbc9bb8 - 0x0dbc9c44 (Size: 140 bytes, Frame: 224)
.globl __glce_MapGrid1d
.ent __glce_MapGrid1d
__glce_MapGrid1d:
    # Line 3562
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f13
    sd	$s8,24($sp)
    move	$s8,$a0
    sd	$ra,16($sp)
    sd	$gp,32($sp)
    # Line 3564
    lw	$at,__glCurrentContext
    # Line 3562
    lui	$v0,0x3
    addiu	$v0,$v0,19168
    addu	$gp,$t9,$v0
    # Line 3566
    lw	$v0,4512($zero)
    # Line 3568
    # lw $t9, -16808($gp) # &glMapGrid1d
    sd	$at,48($sp)
    # Line 3567
    lw	$at,5992($at)
    sd	$v0,40($sp)
    # Line 3568
    jal	glMapGrid1d
    # Line 3567
    sw	$at,4512($zero)
    ldc1	$f14,8($sp)
    # Line 3569
    ld	$v1,48($sp)
    # Line 3570
    mov.d	$f13,$f30
    # lw $t9, -16808($gp) # &glMapGrid1d
    # Line 3569
    lw	$v1,10112($v1)
    # Line 3570
    move	$a0,$s8
    jal	glMapGrid1d
    # Line 3569
    sw	$v1,4512($zero)
    ld	$gp,32($sp)
    # Line 3572
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a0,40($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3571
    sw	$a0,4512($zero)
.end __glce_MapGrid1d

# Function: __glce_MapGrid1f
# Declared: Line 3577 (Source lines: 3578-3588)
# Address: 0x0dbc9c44 - 0x0dbc9cd0 (Size: 140 bytes, Frame: 224)
.globl __glce_MapGrid1f
.ent __glce_MapGrid1f
__glce_MapGrid1f:
    # Line 3578
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,24($sp)
    move	$s8,$a0
    sd	$ra,16($sp)
    sd	$gp,32($sp)
    # Line 3580
    lw	$at,__glCurrentContext
    # Line 3578
    lui	$v0,0x3
    addiu	$v0,$v0,19028
    addu	$gp,$t9,$v0
    # Line 3582
    lw	$v0,4516($zero)
    # Line 3584
    # lw $t9, -16804($gp) # &glMapGrid1f
    sd	$at,48($sp)
    # Line 3583
    lw	$at,5996($at)
    sd	$v0,40($sp)
    # Line 3584
    jal	glMapGrid1f
    # Line 3583
    sw	$at,4516($zero)
    ldc1	$f14,8($sp)
    # Line 3585
    ld	$v1,48($sp)
    # Line 3586
    mov.s	$f13,$f30
    # lw $t9, -16804($gp) # &glMapGrid1f
    # Line 3585
    lw	$v1,10116($v1)
    # Line 3586
    move	$a0,$s8
    jal	glMapGrid1f
    # Line 3585
    sw	$v1,4516($zero)
    ld	$gp,32($sp)
    # Line 3588
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a0,40($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3587
    sw	$a0,4516($zero)
.end __glce_MapGrid1f

# Function: __glce_MapGrid2d
# Declared: Line 3593 (Source lines: 3594-3604)
# Address: 0x0dbc9cd0 - 0x0dbc9d74 (Size: 164 bytes, Frame: 128)
.globl __glce_MapGrid2d
.ent __glce_MapGrid2d
__glce_MapGrid2d:
    # Line 3594
    addiu	$sp,$sp,-128
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sd	$a3,72($sp)
    sdc1	$f14,24($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f13
    sd	$s8,40($sp)
    move	$s8,$a0
    sd	$ra,32($sp)
    sd	$gp,48($sp)
    # Line 3596
    lw	$at,__glCurrentContext
    # Line 3594
    lui	$v0,0x3
    addiu	$v0,$v0,18888
    addu	$gp,$t9,$v0
    # Line 3598
    lw	$v0,4520($zero)
    # Line 3600
    # lw $t9, -16800($gp) # &glMapGrid2d
    sd	$at,64($sp)
    # Line 3599
    lw	$at,6000($at)
    sd	$v0,56($sp)
    # Line 3600
    jal	glMapGrid2d
    # Line 3599
    sw	$at,4520($zero)
    ldc1	$f17,8($sp)
    # Line 3602
    ldc1	$f16,16($sp)
    ld	$a3,72($sp)
    ldc1	$f14,24($sp)
    # Line 3601
    ld	$v1,64($sp)
    # Line 3602
    mov.d	$f13,$f30
    # lw $t9, -16800($gp) # &glMapGrid2d
    # Line 3601
    lw	$v1,10120($v1)
    # Line 3602
    move	$a0,$s8
    jal	glMapGrid2d
    # Line 3601
    sw	$v1,4520($zero)
    ld	$gp,48($sp)
    # Line 3604
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a0,56($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 3603
    sw	$a0,4520($zero)
.end __glce_MapGrid2d

# Function: __glce_MapGrid2f
# Declared: Line 3609 (Source lines: 3610-3620)
# Address: 0x0dbc9d74 - 0x0dbc9e18 (Size: 164 bytes, Frame: 128)
.globl __glce_MapGrid2f
.ent __glce_MapGrid2f
__glce_MapGrid2f:
    # Line 3610
    addiu	$sp,$sp,-128
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sd	$a3,72($sp)
    sdc1	$f14,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,40($sp)
    move	$s8,$a0
    sd	$ra,32($sp)
    sd	$gp,48($sp)
    # Line 3612
    lw	$at,__glCurrentContext
    # Line 3610
    lui	$v0,0x3
    addiu	$v0,$v0,18724
    addu	$gp,$t9,$v0
    # Line 3614
    lw	$v0,4524($zero)
    # Line 3616
    # lw $t9, -16796($gp) # &glMapGrid2f
    sd	$at,64($sp)
    # Line 3615
    lw	$at,6004($at)
    sd	$v0,56($sp)
    # Line 3616
    jal	glMapGrid2f
    # Line 3615
    sw	$at,4524($zero)
    ldc1	$f17,8($sp)
    # Line 3618
    ldc1	$f16,16($sp)
    ld	$a3,72($sp)
    ldc1	$f14,24($sp)
    # Line 3617
    ld	$v1,64($sp)
    # Line 3618
    mov.s	$f13,$f30
    # lw $t9, -16796($gp) # &glMapGrid2f
    # Line 3617
    lw	$v1,10124($v1)
    # Line 3618
    move	$a0,$s8
    jal	glMapGrid2f
    # Line 3617
    sw	$v1,4524($zero)
    ld	$gp,48($sp)
    # Line 3620
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a0,56($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 3619
    sw	$a0,4524($zero)
.end __glce_MapGrid2f

# Function: __glce_EvalCoord1d
# Declared: Line 3625 (Source lines: 3626-3636)
# Address: 0x0dbc9e18 - 0x0dbc9e8c (Size: 116 bytes, Frame: 192)
.globl __glce_EvalCoord1d
.ent __glce_EvalCoord1d
__glce_EvalCoord1d:
    # Line 3626
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,8($sp)
    # Line 3630
    lw	$v0,4528($zero)
    sd	$gp,24($sp)
    # Line 3626
    lui	$v1,0x3
    addiu	$v1,$v1,18560
    sd	$s8,16($sp)
    # Line 3628
    lw	$s8,__glCurrentContext
    # Line 3626
    addu	$gp,$t9,$v1
    # Line 3632
    # lw $t9, -16792($gp) # &glEvalCoord1d
    # Line 3631
    lw	$at,6008($s8)
    sd	$v0,32($sp)
    # Line 3632
    jal	glEvalCoord1d
    # Line 3631
    sw	$at,4528($zero)
    # Line 3634
    # lw $t9, -16792($gp) # &glEvalCoord1d
    # Line 3633
    lw	$a0,10128($s8)
    # Line 3634
    mov.d	$f12,$f30
    jal	glEvalCoord1d
    # Line 3633
    sw	$a0,4528($zero)
    ld	$gp,24($sp)
    # Line 3636
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3635
    sw	$a1,4528($zero)
.end __glce_EvalCoord1d

# Function: __glce_EvalCoord1dv
# Declared: Line 3641 (Source lines: 3642-3652)
# Address: 0x0dbc9e8c - 0x0dbc9f00 (Size: 116 bytes, Frame: 192)
.globl __glce_EvalCoord1dv
.ent __glce_EvalCoord1dv
__glce_EvalCoord1dv:
    # Line 3642
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3644
    lw	$at,__glCurrentContext
    # Line 3642
    lui	$v0,0x3
    addiu	$v0,$v0,18444
    addu	$gp,$t9,$v0
    # Line 3646
    lw	$v0,4532($zero)
    # Line 3648
    # lw $t9, -16788($gp) # &glEvalCoord1dv
    sd	$at,32($sp)
    # Line 3647
    lw	$at,6012($at)
    sd	$v0,24($sp)
    # Line 3648
    jal	glEvalCoord1dv
    # Line 3647
    sw	$at,4532($zero)
    # Line 3649
    ld	$v1,32($sp)
    # Line 3650
    # lw $t9, -16788($gp) # &glEvalCoord1dv
    # Line 3649
    lw	$v1,10132($v1)
    # Line 3650
    move	$a0,$s8
    jal	glEvalCoord1dv
    # Line 3649
    sw	$v1,4532($zero)
    ld	$gp,16($sp)
    # Line 3652
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3651
    sw	$a0,4532($zero)
.end __glce_EvalCoord1dv

# Function: __glce_EvalCoord1f
# Declared: Line 3657 (Source lines: 3658-3668)
# Address: 0x0dbc9f00 - 0x0dbc9f74 (Size: 116 bytes, Frame: 192)
.globl __glce_EvalCoord1f
.ent __glce_EvalCoord1f
__glce_EvalCoord1f:
    # Line 3658
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,8($sp)
    # Line 3662
    lw	$v0,4536($zero)
    sd	$gp,24($sp)
    # Line 3658
    lui	$v1,0x3
    addiu	$v1,$v1,18328
    sd	$s8,16($sp)
    # Line 3660
    lw	$s8,__glCurrentContext
    # Line 3658
    addu	$gp,$t9,$v1
    # Line 3664
    # lw $t9, -16784($gp) # &glEvalCoord1f
    # Line 3663
    lw	$at,6016($s8)
    sd	$v0,32($sp)
    # Line 3664
    jal	glEvalCoord1f
    # Line 3663
    sw	$at,4536($zero)
    # Line 3666
    # lw $t9, -16784($gp) # &glEvalCoord1f
    # Line 3665
    lw	$a0,10136($s8)
    # Line 3666
    mov.s	$f12,$f30
    jal	glEvalCoord1f
    # Line 3665
    sw	$a0,4536($zero)
    ld	$gp,24($sp)
    # Line 3668
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a1,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3667
    sw	$a1,4536($zero)
.end __glce_EvalCoord1f

# Function: __glce_EvalCoord1fv
# Declared: Line 3673 (Source lines: 3674-3684)
# Address: 0x0dbc9f74 - 0x0dbc9fe8 (Size: 116 bytes, Frame: 192)
.globl __glce_EvalCoord1fv
.ent __glce_EvalCoord1fv
__glce_EvalCoord1fv:
    # Line 3674
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3676
    lw	$at,__glCurrentContext
    # Line 3674
    lui	$v0,0x3
    addiu	$v0,$v0,18212
    addu	$gp,$t9,$v0
    # Line 3678
    lw	$v0,4540($zero)
    # Line 3680
    # lw $t9, -16780($gp) # &glEvalCoord1fv
    sd	$at,32($sp)
    # Line 3679
    lw	$at,6020($at)
    sd	$v0,24($sp)
    # Line 3680
    jal	glEvalCoord1fv
    # Line 3679
    sw	$at,4540($zero)
    # Line 3681
    ld	$v1,32($sp)
    # Line 3682
    # lw $t9, -16780($gp) # &glEvalCoord1fv
    # Line 3681
    lw	$v1,10140($v1)
    # Line 3682
    move	$a0,$s8
    jal	glEvalCoord1fv
    # Line 3681
    sw	$v1,4540($zero)
    ld	$gp,16($sp)
    # Line 3684
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3683
    sw	$a0,4540($zero)
.end __glce_EvalCoord1fv

# Function: __glce_EvalCoord2d
# Declared: Line 3689 (Source lines: 3690-3700)
# Address: 0x0dbc9fe8 - 0x0dbca064 (Size: 124 bytes, Frame: 192)
.globl __glce_EvalCoord2d
.ent __glce_EvalCoord2d
__glce_EvalCoord2d:
    # Line 3690
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,16($sp)
    # Line 3694
    lw	$v0,4544($zero)
    sd	$gp,32($sp)
    # Line 3690
    lui	$v1,0x3
    addiu	$v1,$v1,18096
    sd	$s8,24($sp)
    # Line 3692
    lw	$s8,__glCurrentContext
    # Line 3690
    addu	$gp,$t9,$v1
    # Line 3696
    # lw $t9, -16776($gp) # &glEvalCoord2d
    # Line 3695
    lw	$at,6024($s8)
    sd	$v0,40($sp)
    # Line 3696
    jal	glEvalCoord2d
    # Line 3695
    sw	$at,4544($zero)
    ldc1	$f13,8($sp)
    # Line 3698
    # lw $t9, -16776($gp) # &glEvalCoord2d
    # Line 3697
    lw	$a0,10144($s8)
    # Line 3698
    mov.d	$f12,$f30
    jal	glEvalCoord2d
    # Line 3697
    sw	$a0,4544($zero)
    ld	$gp,32($sp)
    # Line 3700
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3699
    sw	$a1,4544($zero)
.end __glce_EvalCoord2d

# Function: __glce_EvalCoord2dv
# Declared: Line 3705 (Source lines: 3706-3716)
# Address: 0x0dbca064 - 0x0dbca0d8 (Size: 116 bytes, Frame: 192)
.globl __glce_EvalCoord2dv
.ent __glce_EvalCoord2dv
__glce_EvalCoord2dv:
    # Line 3706
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3708
    lw	$at,__glCurrentContext
    # Line 3706
    lui	$v0,0x3
    addiu	$v0,$v0,17972
    addu	$gp,$t9,$v0
    # Line 3710
    lw	$v0,4548($zero)
    # Line 3712
    # lw $t9, -16772($gp) # &glEvalCoord2dv
    sd	$at,32($sp)
    # Line 3711
    lw	$at,6028($at)
    sd	$v0,24($sp)
    # Line 3712
    jal	glEvalCoord2dv
    # Line 3711
    sw	$at,4548($zero)
    # Line 3713
    ld	$v1,32($sp)
    # Line 3714
    # lw $t9, -16772($gp) # &glEvalCoord2dv
    # Line 3713
    lw	$v1,10148($v1)
    # Line 3714
    move	$a0,$s8
    jal	glEvalCoord2dv
    # Line 3713
    sw	$v1,4548($zero)
    ld	$gp,16($sp)
    # Line 3716
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3715
    sw	$a0,4548($zero)
.end __glce_EvalCoord2dv

# Function: __glce_EvalCoord2f
# Declared: Line 3721 (Source lines: 3722-3732)
# Address: 0x0dbca0d8 - 0x0dbca154 (Size: 124 bytes, Frame: 192)
.globl __glce_EvalCoord2f
.ent __glce_EvalCoord2f
__glce_EvalCoord2f:
    # Line 3722
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,16($sp)
    # Line 3726
    lw	$v0,4552($zero)
    sd	$gp,32($sp)
    # Line 3722
    lui	$v1,0x3
    addiu	$v1,$v1,17856
    sd	$s8,24($sp)
    # Line 3724
    lw	$s8,__glCurrentContext
    # Line 3722
    addu	$gp,$t9,$v1
    # Line 3728
    # lw $t9, -16768($gp) # &glEvalCoord2f
    # Line 3727
    lw	$at,6032($s8)
    sd	$v0,40($sp)
    # Line 3728
    jal	glEvalCoord2f
    # Line 3727
    sw	$at,4552($zero)
    ldc1	$f13,8($sp)
    # Line 3730
    # lw $t9, -16768($gp) # &glEvalCoord2f
    # Line 3729
    lw	$a0,10152($s8)
    # Line 3730
    mov.s	$f12,$f30
    jal	glEvalCoord2f
    # Line 3729
    sw	$a0,4552($zero)
    ld	$gp,32($sp)
    # Line 3732
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3731
    sw	$a1,4552($zero)
.end __glce_EvalCoord2f

# Function: __glce_EvalCoord2fv
# Declared: Line 3737 (Source lines: 3738-3748)
# Address: 0x0dbca154 - 0x0dbca1c8 (Size: 116 bytes, Frame: 192)
.globl __glce_EvalCoord2fv
.ent __glce_EvalCoord2fv
__glce_EvalCoord2fv:
    # Line 3738
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3740
    lw	$at,__glCurrentContext
    # Line 3738
    lui	$v0,0x3
    addiu	$v0,$v0,17732
    addu	$gp,$t9,$v0
    # Line 3742
    lw	$v0,4556($zero)
    # Line 3744
    # lw $t9, -16764($gp) # &glEvalCoord2fv
    sd	$at,32($sp)
    # Line 3743
    lw	$at,6036($at)
    sd	$v0,24($sp)
    # Line 3744
    jal	glEvalCoord2fv
    # Line 3743
    sw	$at,4556($zero)
    # Line 3745
    ld	$v1,32($sp)
    # Line 3746
    # lw $t9, -16764($gp) # &glEvalCoord2fv
    # Line 3745
    lw	$v1,10156($v1)
    # Line 3746
    move	$a0,$s8
    jal	glEvalCoord2fv
    # Line 3745
    sw	$v1,4556($zero)
    ld	$gp,16($sp)
    # Line 3748
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3747
    sw	$a0,4556($zero)
.end __glce_EvalCoord2fv

# Function: __glce_EvalMesh1
# Declared: Line 3753 (Source lines: 3754-3764)
# Address: 0x0dbca1c8 - 0x0dbca24c (Size: 132 bytes, Frame: 224)
.globl __glce_EvalMesh1
.ent __glce_EvalMesh1
__glce_EvalMesh1:
    # Line 3754
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3756
    lw	$at,__glCurrentContext
    # Line 3754
    lui	$v0,0x3
    addiu	$v0,$v0,17616
    addu	$gp,$t9,$v0
    # Line 3758
    lw	$v0,4560($zero)
    # Line 3760
    # lw $t9, -16760($gp) # &glEvalMesh1
    sd	$at,32($sp)
    # Line 3759
    lw	$at,6040($at)
    sd	$v0,24($sp)
    # Line 3760
    jal	glEvalMesh1
    # Line 3759
    sw	$at,4560($zero)
    ld	$a2,40($sp)
    # Line 3761
    ld	$v1,32($sp)
    # Line 3762
    ld	$a1,48($sp)
    # lw $t9, -16760($gp) # &glEvalMesh1
    # Line 3761
    lw	$v1,10160($v1)
    # Line 3762
    move	$a0,$s8
    jal	glEvalMesh1
    # Line 3761
    sw	$v1,4560($zero)
    ld	$gp,16($sp)
    # Line 3764
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3763
    sw	$a0,4560($zero)
.end __glce_EvalMesh1

# Function: __glce_EvalPoint1
# Declared: Line 3769 (Source lines: 3770-3780)
# Address: 0x0dbca24c - 0x0dbca2c0 (Size: 116 bytes, Frame: 192)
.globl __glce_EvalPoint1
.ent __glce_EvalPoint1
__glce_EvalPoint1:
    # Line 3770
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3772
    lw	$at,__glCurrentContext
    # Line 3770
    lui	$v0,0x3
    addiu	$v0,$v0,17484
    addu	$gp,$t9,$v0
    # Line 3774
    lw	$v0,4564($zero)
    # Line 3776
    # lw $t9, -16756($gp) # &glEvalPoint1
    sd	$at,32($sp)
    # Line 3775
    lw	$at,6044($at)
    sd	$v0,24($sp)
    # Line 3776
    jal	glEvalPoint1
    # Line 3775
    sw	$at,4564($zero)
    # Line 3777
    ld	$v1,32($sp)
    # Line 3778
    # lw $t9, -16756($gp) # &glEvalPoint1
    # Line 3777
    lw	$v1,10164($v1)
    # Line 3778
    move	$a0,$s8
    jal	glEvalPoint1
    # Line 3777
    sw	$v1,4564($zero)
    ld	$gp,16($sp)
    # Line 3780
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3779
    sw	$a0,4564($zero)
.end __glce_EvalPoint1

# Function: __glce_EvalMesh2
# Declared: Line 3785 (Source lines: 3786-3796)
# Address: 0x0dbca2c0 - 0x0dbca354 (Size: 148 bytes, Frame: 128)
.globl __glce_EvalMesh2
.ent __glce_EvalMesh2
__glce_EvalMesh2:
    # Line 3786
    addiu	$sp,$sp,-128
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3788
    lw	$at,__glCurrentContext
    # Line 3786
    lui	$v0,0x3
    addiu	$v0,$v0,17368
    addu	$gp,$t9,$v0
    # Line 3790
    lw	$v0,4568($zero)
    # Line 3792
    # lw $t9, -16752($gp) # &glEvalMesh2
    sd	$at,32($sp)
    # Line 3791
    lw	$at,6048($at)
    sd	$v0,24($sp)
    # Line 3792
    jal	glEvalMesh2
    # Line 3791
    sw	$at,4568($zero)
    ld	$a4,40($sp)
    # Line 3794
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # Line 3793
    ld	$v1,32($sp)
    # Line 3794
    ld	$a1,64($sp)
    # lw $t9, -16752($gp) # &glEvalMesh2
    # Line 3793
    lw	$v1,10168($v1)
    # Line 3794
    move	$a0,$s8
    jal	glEvalMesh2
    # Line 3793
    sw	$v1,4568($zero)
    ld	$gp,16($sp)
    # Line 3796
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 3795
    sw	$a0,4568($zero)
.end __glce_EvalMesh2

# Function: __glce_EvalPoint2
# Declared: Line 3801 (Source lines: 3802-3812)
# Address: 0x0dbca354 - 0x0dbca3d0 (Size: 124 bytes, Frame: 192)
.globl __glce_EvalPoint2
.ent __glce_EvalPoint2
__glce_EvalPoint2:
    # Line 3802
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3804
    lw	$at,__glCurrentContext
    # Line 3802
    lui	$v0,0x3
    addiu	$v0,$v0,17220
    addu	$gp,$t9,$v0
    # Line 3806
    lw	$v0,4572($zero)
    # Line 3808
    # lw $t9, -16748($gp) # &glEvalPoint2
    sd	$at,32($sp)
    # Line 3807
    lw	$at,6052($at)
    sd	$v0,24($sp)
    # Line 3808
    jal	glEvalPoint2
    # Line 3807
    sw	$at,4572($zero)
    # Line 3809
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 3810
    # lw $t9, -16748($gp) # &glEvalPoint2
    # Line 3809
    lw	$v1,10172($v1)
    # Line 3810
    move	$a0,$s8
    jal	glEvalPoint2
    # Line 3809
    sw	$v1,4572($zero)
    ld	$gp,16($sp)
    # Line 3812
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3811
    sw	$a0,4572($zero)
.end __glce_EvalPoint2

# Function: __glce_AlphaFunc
# Declared: Line 3817 (Source lines: 3818-3828)
# Address: 0x0dbca3d0 - 0x0dbca454 (Size: 132 bytes, Frame: 192)
.globl __glce_AlphaFunc
.ent __glce_AlphaFunc
__glce_AlphaFunc:
    # Line 3818
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 3820
    lw	$at,__glCurrentContext
    # Line 3818
    lui	$v0,0x3
    addiu	$v0,$v0,17096
    addu	$gp,$t9,$v0
    # Line 3822
    lw	$v0,4576($zero)
    # Line 3824
    # lw $t9, -16744($gp) # &glAlphaFunc
    sd	$at,40($sp)
    # Line 3823
    lw	$at,6056($at)
    sd	$v0,32($sp)
    # Line 3824
    jal	glAlphaFunc
    # Line 3823
    sw	$at,4576($zero)
    # Line 3825
    ld	$v1,40($sp)
    # Line 3826
    mov.s	$f13,$f30
    # lw $t9, -16744($gp) # &glAlphaFunc
    # Line 3825
    lw	$v1,10176($v1)
    # Line 3826
    move	$a0,$s8
    jal	glAlphaFunc
    # Line 3825
    sw	$v1,4576($zero)
    ld	$gp,24($sp)
    # Line 3828
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3827
    sw	$a0,4576($zero)
.end __glce_AlphaFunc

# Function: __glce_BlendFunc
# Declared: Line 3833 (Source lines: 3834-3844)
# Address: 0x0dbca454 - 0x0dbca4d0 (Size: 124 bytes, Frame: 192)
.globl __glce_BlendFunc
.ent __glce_BlendFunc
__glce_BlendFunc:
    # Line 3834
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3836
    lw	$at,__glCurrentContext
    # Line 3834
    lui	$v0,0x3
    addiu	$v0,$v0,16964
    addu	$gp,$t9,$v0
    # Line 3838
    lw	$v0,4580($zero)
    # Line 3840
    # lw $t9, -16740($gp) # &glBlendFunc
    sd	$at,32($sp)
    # Line 3839
    lw	$at,6060($at)
    sd	$v0,24($sp)
    # Line 3840
    jal	glBlendFunc
    # Line 3839
    sw	$at,4580($zero)
    # Line 3841
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 3842
    # lw $t9, -16740($gp) # &glBlendFunc
    # Line 3841
    lw	$v1,10180($v1)
    # Line 3842
    move	$a0,$s8
    jal	glBlendFunc
    # Line 3841
    sw	$v1,4580($zero)
    ld	$gp,16($sp)
    # Line 3844
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3843
    sw	$a0,4580($zero)
.end __glce_BlendFunc

# Function: __glce_LogicOp
# Declared: Line 3849 (Source lines: 3850-3860)
# Address: 0x0dbca4d0 - 0x0dbca544 (Size: 116 bytes, Frame: 192)
.globl __glce_LogicOp
.ent __glce_LogicOp
__glce_LogicOp:
    # Line 3850
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3852
    lw	$at,__glCurrentContext
    # Line 3850
    lui	$v0,0x3
    addiu	$v0,$v0,16840
    addu	$gp,$t9,$v0
    # Line 3854
    lw	$v0,4584($zero)
    # Line 3856
    # lw $t9, -16736($gp) # &glLogicOp
    sd	$at,32($sp)
    # Line 3855
    lw	$at,6064($at)
    sd	$v0,24($sp)
    # Line 3856
    jal	glLogicOp
    # Line 3855
    sw	$at,4584($zero)
    # Line 3857
    ld	$v1,32($sp)
    # Line 3858
    # lw $t9, -16736($gp) # &glLogicOp
    # Line 3857
    lw	$v1,10184($v1)
    # Line 3858
    move	$a0,$s8
    jal	glLogicOp
    # Line 3857
    sw	$v1,4584($zero)
    ld	$gp,16($sp)
    # Line 3860
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3859
    sw	$a0,4584($zero)
.end __glce_LogicOp

# Function: __glce_StencilFunc
# Declared: Line 3865 (Source lines: 3866-3876)
# Address: 0x0dbca544 - 0x0dbca5c8 (Size: 132 bytes, Frame: 224)
.globl __glce_StencilFunc
.ent __glce_StencilFunc
__glce_StencilFunc:
    # Line 3866
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3868
    lw	$at,__glCurrentContext
    # Line 3866
    lui	$v0,0x3
    addiu	$v0,$v0,16724
    addu	$gp,$t9,$v0
    # Line 3870
    lw	$v0,4588($zero)
    # Line 3872
    # lw $t9, -16732($gp) # &glStencilFunc
    sd	$at,32($sp)
    # Line 3871
    lw	$at,6068($at)
    sd	$v0,24($sp)
    # Line 3872
    jal	glStencilFunc
    # Line 3871
    sw	$at,4588($zero)
    ld	$a2,40($sp)
    # Line 3873
    ld	$v1,32($sp)
    # Line 3874
    ld	$a1,48($sp)
    # lw $t9, -16732($gp) # &glStencilFunc
    # Line 3873
    lw	$v1,10188($v1)
    # Line 3874
    move	$a0,$s8
    jal	glStencilFunc
    # Line 3873
    sw	$v1,4588($zero)
    ld	$gp,16($sp)
    # Line 3876
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3875
    sw	$a0,4588($zero)
.end __glce_StencilFunc

# Function: __glce_StencilOp
# Declared: Line 3881 (Source lines: 3882-3892)
# Address: 0x0dbca5c8 - 0x0dbca64c (Size: 132 bytes, Frame: 224)
.globl __glce_StencilOp
.ent __glce_StencilOp
__glce_StencilOp:
    # Line 3882
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3884
    lw	$at,__glCurrentContext
    # Line 3882
    lui	$v0,0x3
    addiu	$v0,$v0,16592
    addu	$gp,$t9,$v0
    # Line 3886
    lw	$v0,4592($zero)
    # Line 3888
    # lw $t9, -16728($gp) # &glStencilOp
    sd	$at,32($sp)
    # Line 3887
    lw	$at,6072($at)
    sd	$v0,24($sp)
    # Line 3888
    jal	glStencilOp
    # Line 3887
    sw	$at,4592($zero)
    ld	$a2,40($sp)
    # Line 3889
    ld	$v1,32($sp)
    # Line 3890
    ld	$a1,48($sp)
    # lw $t9, -16728($gp) # &glStencilOp
    # Line 3889
    lw	$v1,10192($v1)
    # Line 3890
    move	$a0,$s8
    jal	glStencilOp
    # Line 3889
    sw	$v1,4592($zero)
    ld	$gp,16($sp)
    # Line 3892
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3891
    sw	$a0,4592($zero)
.end __glce_StencilOp

# Function: __glce_DepthFunc
# Declared: Line 3897 (Source lines: 3898-3908)
# Address: 0x0dbca64c - 0x0dbca6c0 (Size: 116 bytes, Frame: 192)
.globl __glce_DepthFunc
.ent __glce_DepthFunc
__glce_DepthFunc:
    # Line 3898
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3900
    lw	$at,__glCurrentContext
    # Line 3898
    lui	$v0,0x3
    addiu	$v0,$v0,16460
    addu	$gp,$t9,$v0
    # Line 3902
    lw	$v0,4596($zero)
    # Line 3904
    # lw $t9, -16724($gp) # &glDepthFunc
    sd	$at,32($sp)
    # Line 3903
    lw	$at,6076($at)
    sd	$v0,24($sp)
    # Line 3904
    jal	glDepthFunc
    # Line 3903
    sw	$at,4596($zero)
    # Line 3905
    ld	$v1,32($sp)
    # Line 3906
    # lw $t9, -16724($gp) # &glDepthFunc
    # Line 3905
    lw	$v1,10196($v1)
    # Line 3906
    move	$a0,$s8
    jal	glDepthFunc
    # Line 3905
    sw	$v1,4596($zero)
    ld	$gp,16($sp)
    # Line 3908
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3907
    sw	$a0,4596($zero)
.end __glce_DepthFunc

# Function: __glce_PixelZoom
# Declared: Line 3913 (Source lines: 3914-3924)
# Address: 0x0dbca6c0 - 0x0dbca73c (Size: 124 bytes, Frame: 192)
.globl __glce_PixelZoom
.ent __glce_PixelZoom
__glce_PixelZoom:
    # Line 3914
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,16($sp)
    # Line 3918
    lw	$v0,4600($zero)
    sd	$gp,32($sp)
    # Line 3914
    lui	$v1,0x3
    addiu	$v1,$v1,16344
    sd	$s8,24($sp)
    # Line 3916
    lw	$s8,__glCurrentContext
    # Line 3914
    addu	$gp,$t9,$v1
    # Line 3920
    # lw $t9, -16720($gp) # &glPixelZoom
    # Line 3919
    lw	$at,6080($s8)
    sd	$v0,40($sp)
    # Line 3920
    jal	glPixelZoom
    # Line 3919
    sw	$at,4600($zero)
    ldc1	$f13,8($sp)
    # Line 3922
    # lw $t9, -16720($gp) # &glPixelZoom
    # Line 3921
    lw	$a0,10200($s8)
    # Line 3922
    mov.s	$f12,$f30
    jal	glPixelZoom
    # Line 3921
    sw	$a0,4600($zero)
    ld	$gp,32($sp)
    # Line 3924
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3923
    sw	$a1,4600($zero)
.end __glce_PixelZoom

# Function: __glce_PixelTransferf
# Declared: Line 3929 (Source lines: 3930-3940)
# Address: 0x0dbca73c - 0x0dbca7c0 (Size: 132 bytes, Frame: 192)
.globl __glce_PixelTransferf
.ent __glce_PixelTransferf
__glce_PixelTransferf:
    # Line 3930
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 3932
    lw	$at,__glCurrentContext
    # Line 3930
    lui	$v0,0x3
    addiu	$v0,$v0,16220
    addu	$gp,$t9,$v0
    # Line 3934
    lw	$v0,4604($zero)
    # Line 3936
    # lw $t9, -16716($gp) # &glPixelTransferf
    sd	$at,40($sp)
    # Line 3935
    lw	$at,6084($at)
    sd	$v0,32($sp)
    # Line 3936
    jal	glPixelTransferf
    # Line 3935
    sw	$at,4604($zero)
    # Line 3937
    ld	$v1,40($sp)
    # Line 3938
    mov.s	$f13,$f30
    # lw $t9, -16716($gp) # &glPixelTransferf
    # Line 3937
    lw	$v1,10204($v1)
    # Line 3938
    move	$a0,$s8
    jal	glPixelTransferf
    # Line 3937
    sw	$v1,4604($zero)
    ld	$gp,24($sp)
    # Line 3940
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3939
    sw	$a0,4604($zero)
.end __glce_PixelTransferf

# Function: __glce_PixelTransferi
# Declared: Line 3945 (Source lines: 3946-3956)
# Address: 0x0dbca7c0 - 0x0dbca83c (Size: 124 bytes, Frame: 192)
.globl __glce_PixelTransferi
.ent __glce_PixelTransferi
__glce_PixelTransferi:
    # Line 3946
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3948
    lw	$at,__glCurrentContext
    # Line 3946
    lui	$v0,0x3
    addiu	$v0,$v0,16088
    addu	$gp,$t9,$v0
    # Line 3950
    lw	$v0,4608($zero)
    # Line 3952
    # lw $t9, -16712($gp) # &glPixelTransferi
    sd	$at,32($sp)
    # Line 3951
    lw	$at,6088($at)
    sd	$v0,24($sp)
    # Line 3952
    jal	glPixelTransferi
    # Line 3951
    sw	$at,4608($zero)
    # Line 3953
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 3954
    # lw $t9, -16712($gp) # &glPixelTransferi
    # Line 3953
    lw	$v1,10208($v1)
    # Line 3954
    move	$a0,$s8
    jal	glPixelTransferi
    # Line 3953
    sw	$v1,4608($zero)
    ld	$gp,16($sp)
    # Line 3956
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3955
    sw	$a0,4608($zero)
.end __glce_PixelTransferi

# Function: __glce_PixelStoref
# Declared: Line 3961 (Source lines: 3962-3970)
# Address: 0x0dbca83c - 0x0dbca888 (Size: 76 bytes, Frame: 48)
.globl __glce_PixelStoref
.ent __glce_PixelStoref
__glce_PixelStoref:
    # Line 3962
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 3966
    lw	$s8,4612($zero)
    sd	$gp,16($sp)
    # Line 3967
    lw	$at,__glCurrentContext
    # Line 3962
    lui	$v0,0x3
    addiu	$v0,$v0,15964
    addu	$gp,$t9,$v0
    # Line 3968
    # lw $t9, -16708($gp) # &glPixelStoref
    # Line 3967
    lw	$at,10212($at)
    sd	$ra,0($sp)
    # Line 3968
    jal	glPixelStoref
    # Line 3967
    sw	$at,4612($zero)
    ld	$gp,16($sp)
    # Line 3970
    ld	$ra,0($sp)
    # Line 3969
    sw	$s8,4612($zero)
    # Line 3970
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_PixelStoref

# Function: __glce_PixelStorei
# Declared: Line 3975 (Source lines: 3976-3984)
# Address: 0x0dbca888 - 0x0dbca8d4 (Size: 76 bytes, Frame: 48)
.globl __glce_PixelStorei
.ent __glce_PixelStorei
__glce_PixelStorei:
    # Line 3976
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 3980
    lw	$s8,4616($zero)
    sd	$gp,16($sp)
    # Line 3981
    lw	$at,__glCurrentContext
    # Line 3976
    lui	$v0,0x3
    addiu	$v0,$v0,15888
    addu	$gp,$t9,$v0
    # Line 3982
    # lw $t9, -16704($gp) # &glPixelStorei
    # Line 3981
    lw	$at,10216($at)
    sd	$ra,0($sp)
    # Line 3982
    jal	glPixelStorei
    # Line 3981
    sw	$at,4616($zero)
    ld	$gp,16($sp)
    # Line 3984
    ld	$ra,0($sp)
    # Line 3983
    sw	$s8,4616($zero)
    # Line 3984
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_PixelStorei

# Function: __glce_PixelMapfv
# Declared: Line 3989 (Source lines: 3990-4000)
# Address: 0x0dbca8d4 - 0x0dbca958 (Size: 132 bytes, Frame: 224)
.globl __glce_PixelMapfv
.ent __glce_PixelMapfv
__glce_PixelMapfv:
    # Line 3990
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 3992
    lw	$at,__glCurrentContext
    # Line 3990
    lui	$v0,0x3
    addiu	$v0,$v0,15812
    addu	$gp,$t9,$v0
    # Line 3994
    lw	$v0,4620($zero)
    # Line 3996
    # lw $t9, -16700($gp) # &glPixelMapfv
    sd	$at,32($sp)
    # Line 3995
    lw	$at,6100($at)
    sd	$v0,24($sp)
    # Line 3996
    jal	glPixelMapfv
    # Line 3995
    sw	$at,4620($zero)
    ld	$a2,40($sp)
    # Line 3997
    ld	$v1,32($sp)
    # Line 3998
    ld	$a1,48($sp)
    # lw $t9, -16700($gp) # &glPixelMapfv
    # Line 3997
    lw	$v1,10220($v1)
    # Line 3998
    move	$a0,$s8
    jal	glPixelMapfv
    # Line 3997
    sw	$v1,4620($zero)
    ld	$gp,16($sp)
    # Line 4000
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 3999
    sw	$a0,4620($zero)
.end __glce_PixelMapfv

# Function: __glce_PixelMapuiv
# Declared: Line 4005 (Source lines: 4006-4016)
# Address: 0x0dbca958 - 0x0dbca9dc (Size: 132 bytes, Frame: 224)
.globl __glce_PixelMapuiv
.ent __glce_PixelMapuiv
__glce_PixelMapuiv:
    # Line 4006
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4008
    lw	$at,__glCurrentContext
    # Line 4006
    lui	$v0,0x3
    addiu	$v0,$v0,15680
    addu	$gp,$t9,$v0
    # Line 4010
    lw	$v0,4624($zero)
    # Line 4012
    # lw $t9, -16696($gp) # &glPixelMapuiv
    sd	$at,32($sp)
    # Line 4011
    lw	$at,6104($at)
    sd	$v0,24($sp)
    # Line 4012
    jal	glPixelMapuiv
    # Line 4011
    sw	$at,4624($zero)
    ld	$a2,40($sp)
    # Line 4013
    ld	$v1,32($sp)
    # Line 4014
    ld	$a1,48($sp)
    # lw $t9, -16696($gp) # &glPixelMapuiv
    # Line 4013
    lw	$v1,10224($v1)
    # Line 4014
    move	$a0,$s8
    jal	glPixelMapuiv
    # Line 4013
    sw	$v1,4624($zero)
    ld	$gp,16($sp)
    # Line 4016
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4015
    sw	$a0,4624($zero)
.end __glce_PixelMapuiv

# Function: __glce_PixelMapusv
# Declared: Line 4021 (Source lines: 4022-4032)
# Address: 0x0dbca9dc - 0x0dbcaa60 (Size: 132 bytes, Frame: 224)
.globl __glce_PixelMapusv
.ent __glce_PixelMapusv
__glce_PixelMapusv:
    # Line 4022
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4024
    lw	$at,__glCurrentContext
    # Line 4022
    lui	$v0,0x3
    addiu	$v0,$v0,15548
    addu	$gp,$t9,$v0
    # Line 4026
    lw	$v0,4628($zero)
    # Line 4028
    # lw $t9, -16692($gp) # &glPixelMapusv
    sd	$at,32($sp)
    # Line 4027
    lw	$at,6108($at)
    sd	$v0,24($sp)
    # Line 4028
    jal	glPixelMapusv
    # Line 4027
    sw	$at,4628($zero)
    ld	$a2,40($sp)
    # Line 4029
    ld	$v1,32($sp)
    # Line 4030
    ld	$a1,48($sp)
    # lw $t9, -16692($gp) # &glPixelMapusv
    # Line 4029
    lw	$v1,10228($v1)
    # Line 4030
    move	$a0,$s8
    jal	glPixelMapusv
    # Line 4029
    sw	$v1,4628($zero)
    ld	$gp,16($sp)
    # Line 4032
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4031
    sw	$a0,4628($zero)
.end __glce_PixelMapusv

# Function: __glce_ReadBuffer
# Declared: Line 4037 (Source lines: 4038-4048)
# Address: 0x0dbcaa60 - 0x0dbcaad4 (Size: 116 bytes, Frame: 192)
.globl __glce_ReadBuffer
.ent __glce_ReadBuffer
__glce_ReadBuffer:
    # Line 4038
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4040
    lw	$at,__glCurrentContext
    # Line 4038
    lui	$v0,0x3
    addiu	$v0,$v0,15416
    addu	$gp,$t9,$v0
    # Line 4042
    lw	$v0,4632($zero)
    # Line 4044
    # lw $t9, -16688($gp) # &glReadBuffer
    sd	$at,32($sp)
    # Line 4043
    lw	$at,6112($at)
    sd	$v0,24($sp)
    # Line 4044
    jal	glReadBuffer
    # Line 4043
    sw	$at,4632($zero)
    # Line 4045
    ld	$v1,32($sp)
    # Line 4046
    # lw $t9, -16688($gp) # &glReadBuffer
    # Line 4045
    lw	$v1,10232($v1)
    # Line 4046
    move	$a0,$s8
    jal	glReadBuffer
    # Line 4045
    sw	$v1,4632($zero)
    ld	$gp,16($sp)
    # Line 4048
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4047
    sw	$a0,4632($zero)
.end __glce_ReadBuffer

# Function: __glce_CopyPixels
# Declared: Line 4053 (Source lines: 4054-4064)
# Address: 0x0dbcaad4 - 0x0dbcab68 (Size: 148 bytes, Frame: 128)
.globl __glce_CopyPixels
.ent __glce_CopyPixels
__glce_CopyPixels:
    # Line 4054
    addiu	$sp,$sp,-128
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4056
    lw	$at,__glCurrentContext
    # Line 4054
    lui	$v0,0x3
    addiu	$v0,$v0,15300
    addu	$gp,$t9,$v0
    # Line 4058
    lw	$v0,4636($zero)
    # Line 4060
    # lw $t9, -16684($gp) # &glCopyPixels
    sd	$at,32($sp)
    # Line 4059
    lw	$at,6116($at)
    sd	$v0,24($sp)
    # Line 4060
    jal	glCopyPixels
    # Line 4059
    sw	$at,4636($zero)
    ld	$a4,40($sp)
    # Line 4062
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # Line 4061
    ld	$v1,32($sp)
    # Line 4062
    ld	$a1,64($sp)
    # lw $t9, -16684($gp) # &glCopyPixels
    # Line 4061
    lw	$v1,10236($v1)
    # Line 4062
    move	$a0,$s8
    jal	glCopyPixels
    # Line 4061
    sw	$v1,4636($zero)
    ld	$gp,16($sp)
    # Line 4064
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 4063
    sw	$a0,4636($zero)
.end __glce_CopyPixels

# Function: __glce_ReadPixels
# Declared: Line 4069 (Source lines: 4070-4078)
# Address: 0x0dbcab68 - 0x0dbcabb4 (Size: 76 bytes, Frame: 224)
.globl __glce_ReadPixels
.ent __glce_ReadPixels
__glce_ReadPixels:
    # Line 4070
    addiu	$sp,$sp,-96
    sd	$s8,8($sp)
    # Line 4074
    lw	$s8,4640($zero)
    sd	$gp,16($sp)
    # Line 4075
    lw	$at,__glCurrentContext
    # Line 4070
    lui	$v0,0x3
    addiu	$v0,$v0,15152
    addu	$gp,$t9,$v0
    # Line 4076
    # lw $t9, -16680($gp) # &glReadPixels
    # Line 4075
    lw	$at,10240($at)
    sd	$ra,0($sp)
    # Line 4076
    jal	glReadPixels
    # Line 4075
    sw	$at,4640($zero)
    ld	$gp,16($sp)
    # Line 4078
    ld	$ra,0($sp)
    # Line 4077
    sw	$s8,4640($zero)
    # Line 4078
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glce_ReadPixels

# Function: __glce_DrawPixels
# Declared: Line 4083 (Source lines: 4084-4094)
# Address: 0x0dbcabb4 - 0x0dbcac48 (Size: 148 bytes, Frame: 128)
.globl __glce_DrawPixels
.ent __glce_DrawPixels
__glce_DrawPixels:
    # Line 4084
    addiu	$sp,$sp,-128
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4086
    lw	$at,__glCurrentContext
    # Line 4084
    lui	$v0,0x3
    addiu	$v0,$v0,15076
    addu	$gp,$t9,$v0
    # Line 4088
    lw	$v0,4644($zero)
    # Line 4090
    # lw $t9, -16676($gp) # &glDrawPixels
    sd	$at,32($sp)
    # Line 4089
    lw	$at,6124($at)
    sd	$v0,24($sp)
    # Line 4090
    jal	glDrawPixels
    # Line 4089
    sw	$at,4644($zero)
    ld	$a4,40($sp)
    # Line 4092
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # Line 4091
    ld	$v1,32($sp)
    # Line 4092
    ld	$a1,64($sp)
    # lw $t9, -16676($gp) # &glDrawPixels
    # Line 4091
    lw	$v1,10244($v1)
    # Line 4092
    move	$a0,$s8
    jal	glDrawPixels
    # Line 4091
    sw	$v1,4644($zero)
    ld	$gp,16($sp)
    # Line 4094
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 4093
    sw	$a0,4644($zero)
.end __glce_DrawPixels

# Function: __glce_GetBooleanv
# Declared: Line 4099 (Source lines: 4100-4108)
# Address: 0x0dbcac48 - 0x0dbcac94 (Size: 76 bytes, Frame: 48)
.globl __glce_GetBooleanv
.ent __glce_GetBooleanv
__glce_GetBooleanv:
    # Line 4100
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4104
    lw	$s8,4648($zero)
    sd	$gp,16($sp)
    # Line 4105
    lw	$at,__glCurrentContext
    # Line 4100
    lui	$v0,0x3
    addiu	$v0,$v0,14928
    addu	$gp,$t9,$v0
    # Line 4106
    # lw $t9, -16672($gp) # &glGetBooleanv
    # Line 4105
    lw	$at,10248($at)
    sd	$ra,0($sp)
    # Line 4106
    jal	glGetBooleanv
    # Line 4105
    sw	$at,4648($zero)
    ld	$gp,16($sp)
    # Line 4108
    ld	$ra,0($sp)
    # Line 4107
    sw	$s8,4648($zero)
    # Line 4108
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetBooleanv

# Function: __glce_GetClipPlane
# Declared: Line 4113 (Source lines: 4114-4122)
# Address: 0x0dbcac94 - 0x0dbcace0 (Size: 76 bytes, Frame: 48)
.globl __glce_GetClipPlane
.ent __glce_GetClipPlane
__glce_GetClipPlane:
    # Line 4114
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4118
    lw	$s8,4652($zero)
    sd	$gp,16($sp)
    # Line 4119
    lw	$at,__glCurrentContext
    # Line 4114
    lui	$v0,0x3
    addiu	$v0,$v0,14852
    addu	$gp,$t9,$v0
    # Line 4120
    # lw $t9, -16668($gp) # &glGetClipPlane
    # Line 4119
    lw	$at,10252($at)
    sd	$ra,0($sp)
    # Line 4120
    jal	glGetClipPlane
    # Line 4119
    sw	$at,4652($zero)
    ld	$gp,16($sp)
    # Line 4122
    ld	$ra,0($sp)
    # Line 4121
    sw	$s8,4652($zero)
    # Line 4122
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetClipPlane

# Function: __glce_GetDoublev
# Declared: Line 4127 (Source lines: 4128-4136)
# Address: 0x0dbcace0 - 0x0dbcad2c (Size: 76 bytes, Frame: 48)
.globl __glce_GetDoublev
.ent __glce_GetDoublev
__glce_GetDoublev:
    # Line 4128
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4132
    lw	$s8,4656($zero)
    sd	$gp,16($sp)
    # Line 4133
    lw	$at,__glCurrentContext
    # Line 4128
    lui	$v0,0x3
    addiu	$v0,$v0,14776
    addu	$gp,$t9,$v0
    # Line 4134
    # lw $t9, -16664($gp) # &glGetDoublev
    # Line 4133
    lw	$at,10256($at)
    sd	$ra,0($sp)
    # Line 4134
    jal	glGetDoublev
    # Line 4133
    sw	$at,4656($zero)
    ld	$gp,16($sp)
    # Line 4136
    ld	$ra,0($sp)
    # Line 4135
    sw	$s8,4656($zero)
    # Line 4136
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetDoublev

# Function: __glce_GetError
# Declared: Line 4141 (Source lines: 4142-4151)
# Address: 0x0dbcad2c - 0x0dbcad78 (Size: 76 bytes, Frame: 32)
.globl __glce_GetError
.ent __glce_GetError
__glce_GetError:
    # Line 4142
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 4147
    lw	$s8,4660($zero)
    sd	$gp,16($sp)
    # Line 4148
    lw	$at,__glCurrentContext
    # Line 4142
    lui	$v0,0x3
    addiu	$v0,$v0,14700
    addu	$gp,$t9,$v0
    # Line 4149
    # lw $t9, -16660($gp) # &glGetError
    # Line 4148
    lw	$at,10260($at)
    sd	$ra,0($sp)
    # Line 4149
    jal	glGetError
    # Line 4148
    sw	$at,4660($zero)
    ld	$gp,16($sp)
    # Line 4151
    ld	$ra,0($sp)
    # Line 4150
    sw	$s8,4660($zero)
    # Line 4151
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetError

# Function: __glce_GetFloatv
# Declared: Line 4157 (Source lines: 4158-4166)
# Address: 0x0dbcad78 - 0x0dbcadc4 (Size: 76 bytes, Frame: 48)
.globl __glce_GetFloatv
.ent __glce_GetFloatv
__glce_GetFloatv:
    # Line 4158
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4162
    lw	$s8,4664($zero)
    sd	$gp,16($sp)
    # Line 4163
    lw	$at,__glCurrentContext
    # Line 4158
    lui	$v0,0x3
    addiu	$v0,$v0,14624
    addu	$gp,$t9,$v0
    # Line 4164
    # lw $t9, -16656($gp) # &glGetFloatv
    # Line 4163
    lw	$at,10264($at)
    sd	$ra,0($sp)
    # Line 4164
    jal	glGetFloatv
    # Line 4163
    sw	$at,4664($zero)
    ld	$gp,16($sp)
    # Line 4166
    ld	$ra,0($sp)
    # Line 4165
    sw	$s8,4664($zero)
    # Line 4166
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetFloatv

# Function: __glce_GetIntegerv
# Declared: Line 4171 (Source lines: 4172-4180)
# Address: 0x0dbcadc4 - 0x0dbcae10 (Size: 76 bytes, Frame: 48)
.globl __glce_GetIntegerv
.ent __glce_GetIntegerv
__glce_GetIntegerv:
    # Line 4172
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4176
    lw	$s8,4668($zero)
    sd	$gp,16($sp)
    # Line 4177
    lw	$at,__glCurrentContext
    # Line 4172
    lui	$v0,0x3
    addiu	$v0,$v0,14548
    addu	$gp,$t9,$v0
    # Line 4178
    # lw $t9, -16652($gp) # &glGetIntegerv
    # Line 4177
    lw	$at,10268($at)
    sd	$ra,0($sp)
    # Line 4178
    jal	glGetIntegerv
    # Line 4177
    sw	$at,4668($zero)
    ld	$gp,16($sp)
    # Line 4180
    ld	$ra,0($sp)
    # Line 4179
    sw	$s8,4668($zero)
    # Line 4180
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetIntegerv

# Function: __glce_GetLightfv
# Declared: Line 4185 (Source lines: 4186-4194)
# Address: 0x0dbcae10 - 0x0dbcae5c (Size: 76 bytes, Frame: 192)
.globl __glce_GetLightfv
.ent __glce_GetLightfv
__glce_GetLightfv:
    # Line 4186
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4190
    lw	$s8,4672($zero)
    sd	$gp,16($sp)
    # Line 4191
    lw	$at,__glCurrentContext
    # Line 4186
    lui	$v0,0x3
    addiu	$v0,$v0,14472
    addu	$gp,$t9,$v0
    # Line 4192
    # lw $t9, -16648($gp) # &glGetLightfv
    # Line 4191
    lw	$at,10272($at)
    sd	$ra,0($sp)
    # Line 4192
    jal	glGetLightfv
    # Line 4191
    sw	$at,4672($zero)
    ld	$gp,16($sp)
    # Line 4194
    ld	$ra,0($sp)
    # Line 4193
    sw	$s8,4672($zero)
    # Line 4194
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetLightfv

# Function: __glce_GetLightiv
# Declared: Line 4199 (Source lines: 4200-4208)
# Address: 0x0dbcae5c - 0x0dbcaea8 (Size: 76 bytes, Frame: 192)
.globl __glce_GetLightiv
.ent __glce_GetLightiv
__glce_GetLightiv:
    # Line 4200
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4204
    lw	$s8,4676($zero)
    sd	$gp,16($sp)
    # Line 4205
    lw	$at,__glCurrentContext
    # Line 4200
    lui	$v0,0x3
    addiu	$v0,$v0,14396
    addu	$gp,$t9,$v0
    # Line 4206
    # lw $t9, -16644($gp) # &glGetLightiv
    # Line 4205
    lw	$at,10276($at)
    sd	$ra,0($sp)
    # Line 4206
    jal	glGetLightiv
    # Line 4205
    sw	$at,4676($zero)
    ld	$gp,16($sp)
    # Line 4208
    ld	$ra,0($sp)
    # Line 4207
    sw	$s8,4676($zero)
    # Line 4208
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetLightiv

# Function: __glce_GetMapdv
# Declared: Line 4213 (Source lines: 4214-4222)
# Address: 0x0dbcaea8 - 0x0dbcaef4 (Size: 76 bytes, Frame: 192)
.globl __glce_GetMapdv
.ent __glce_GetMapdv
__glce_GetMapdv:
    # Line 4214
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4218
    lw	$s8,4680($zero)
    sd	$gp,16($sp)
    # Line 4219
    lw	$at,__glCurrentContext
    # Line 4214
    lui	$v0,0x3
    addiu	$v0,$v0,14320
    addu	$gp,$t9,$v0
    # Line 4220
    # lw $t9, -16640($gp) # &glGetMapdv
    # Line 4219
    lw	$at,10280($at)
    sd	$ra,0($sp)
    # Line 4220
    jal	glGetMapdv
    # Line 4219
    sw	$at,4680($zero)
    ld	$gp,16($sp)
    # Line 4222
    ld	$ra,0($sp)
    # Line 4221
    sw	$s8,4680($zero)
    # Line 4222
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetMapdv

# Function: __glce_GetMapfv
# Declared: Line 4227 (Source lines: 4228-4236)
# Address: 0x0dbcaef4 - 0x0dbcaf40 (Size: 76 bytes, Frame: 192)
.globl __glce_GetMapfv
.ent __glce_GetMapfv
__glce_GetMapfv:
    # Line 4228
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4232
    lw	$s8,4684($zero)
    sd	$gp,16($sp)
    # Line 4233
    lw	$at,__glCurrentContext
    # Line 4228
    lui	$v0,0x3
    addiu	$v0,$v0,14244
    addu	$gp,$t9,$v0
    # Line 4234
    # lw $t9, -16636($gp) # &glGetMapfv
    # Line 4233
    lw	$at,10284($at)
    sd	$ra,0($sp)
    # Line 4234
    jal	glGetMapfv
    # Line 4233
    sw	$at,4684($zero)
    ld	$gp,16($sp)
    # Line 4236
    ld	$ra,0($sp)
    # Line 4235
    sw	$s8,4684($zero)
    # Line 4236
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetMapfv

# Function: __glce_GetMapiv
# Declared: Line 4241 (Source lines: 4242-4250)
# Address: 0x0dbcaf40 - 0x0dbcaf8c (Size: 76 bytes, Frame: 192)
.globl __glce_GetMapiv
.ent __glce_GetMapiv
__glce_GetMapiv:
    # Line 4242
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4246
    lw	$s8,4688($zero)
    sd	$gp,16($sp)
    # Line 4247
    lw	$at,__glCurrentContext
    # Line 4242
    lui	$v0,0x3
    addiu	$v0,$v0,14168
    addu	$gp,$t9,$v0
    # Line 4248
    # lw $t9, -16632($gp) # &glGetMapiv
    # Line 4247
    lw	$at,10288($at)
    sd	$ra,0($sp)
    # Line 4248
    jal	glGetMapiv
    # Line 4247
    sw	$at,4688($zero)
    ld	$gp,16($sp)
    # Line 4250
    ld	$ra,0($sp)
    # Line 4249
    sw	$s8,4688($zero)
    # Line 4250
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetMapiv

# Function: __glce_GetMaterialfv
# Declared: Line 4255 (Source lines: 4256-4264)
# Address: 0x0dbcaf8c - 0x0dbcafd8 (Size: 76 bytes, Frame: 192)
.globl __glce_GetMaterialfv
.ent __glce_GetMaterialfv
__glce_GetMaterialfv:
    # Line 4256
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4260
    lw	$s8,4692($zero)
    sd	$gp,16($sp)
    # Line 4261
    lw	$at,__glCurrentContext
    # Line 4256
    lui	$v0,0x3
    addiu	$v0,$v0,14092
    addu	$gp,$t9,$v0
    # Line 4262
    # lw $t9, -16628($gp) # &glGetMaterialfv
    # Line 4261
    lw	$at,10292($at)
    sd	$ra,0($sp)
    # Line 4262
    jal	glGetMaterialfv
    # Line 4261
    sw	$at,4692($zero)
    ld	$gp,16($sp)
    # Line 4264
    ld	$ra,0($sp)
    # Line 4263
    sw	$s8,4692($zero)
    # Line 4264
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetMaterialfv

# Function: __glce_GetMaterialiv
# Declared: Line 4269 (Source lines: 4270-4278)
# Address: 0x0dbcafd8 - 0x0dbcb024 (Size: 76 bytes, Frame: 192)
.globl __glce_GetMaterialiv
.ent __glce_GetMaterialiv
__glce_GetMaterialiv:
    # Line 4270
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4274
    lw	$s8,4696($zero)
    sd	$gp,16($sp)
    # Line 4275
    lw	$at,__glCurrentContext
    # Line 4270
    lui	$v0,0x3
    addiu	$v0,$v0,14016
    addu	$gp,$t9,$v0
    # Line 4276
    # lw $t9, -16624($gp) # &glGetMaterialiv
    # Line 4275
    lw	$at,10296($at)
    sd	$ra,0($sp)
    # Line 4276
    jal	glGetMaterialiv
    # Line 4275
    sw	$at,4696($zero)
    ld	$gp,16($sp)
    # Line 4278
    ld	$ra,0($sp)
    # Line 4277
    sw	$s8,4696($zero)
    # Line 4278
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetMaterialiv

# Function: __glce_GetPixelMapfv
# Declared: Line 4283 (Source lines: 4284-4292)
# Address: 0x0dbcb024 - 0x0dbcb070 (Size: 76 bytes, Frame: 48)
.globl __glce_GetPixelMapfv
.ent __glce_GetPixelMapfv
__glce_GetPixelMapfv:
    # Line 4284
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4288
    lw	$s8,4700($zero)
    sd	$gp,16($sp)
    # Line 4289
    lw	$at,__glCurrentContext
    # Line 4284
    lui	$v0,0x3
    addiu	$v0,$v0,13940
    addu	$gp,$t9,$v0
    # Line 4290
    # lw $t9, -16620($gp) # &glGetPixelMapfv
    # Line 4289
    lw	$at,10300($at)
    sd	$ra,0($sp)
    # Line 4290
    jal	glGetPixelMapfv
    # Line 4289
    sw	$at,4700($zero)
    ld	$gp,16($sp)
    # Line 4292
    ld	$ra,0($sp)
    # Line 4291
    sw	$s8,4700($zero)
    # Line 4292
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetPixelMapfv

# Function: __glce_GetPixelMapuiv
# Declared: Line 4297 (Source lines: 4298-4306)
# Address: 0x0dbcb070 - 0x0dbcb0bc (Size: 76 bytes, Frame: 48)
.globl __glce_GetPixelMapuiv
.ent __glce_GetPixelMapuiv
__glce_GetPixelMapuiv:
    # Line 4298
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4302
    lw	$s8,4704($zero)
    sd	$gp,16($sp)
    # Line 4303
    lw	$at,__glCurrentContext
    # Line 4298
    lui	$v0,0x3
    addiu	$v0,$v0,13864
    addu	$gp,$t9,$v0
    # Line 4304
    # lw $t9, -16616($gp) # &glGetPixelMapuiv
    # Line 4303
    lw	$at,10304($at)
    sd	$ra,0($sp)
    # Line 4304
    jal	glGetPixelMapuiv
    # Line 4303
    sw	$at,4704($zero)
    ld	$gp,16($sp)
    # Line 4306
    ld	$ra,0($sp)
    # Line 4305
    sw	$s8,4704($zero)
    # Line 4306
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetPixelMapuiv

# Function: __glce_GetPixelMapusv
# Declared: Line 4311 (Source lines: 4312-4320)
# Address: 0x0dbcb0bc - 0x0dbcb108 (Size: 76 bytes, Frame: 48)
.globl __glce_GetPixelMapusv
.ent __glce_GetPixelMapusv
__glce_GetPixelMapusv:
    # Line 4312
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4316
    lw	$s8,4708($zero)
    sd	$gp,16($sp)
    # Line 4317
    lw	$at,__glCurrentContext
    # Line 4312
    lui	$v0,0x3
    addiu	$v0,$v0,13788
    addu	$gp,$t9,$v0
    # Line 4318
    # lw $t9, -16612($gp) # &glGetPixelMapusv
    # Line 4317
    lw	$at,10308($at)
    sd	$ra,0($sp)
    # Line 4318
    jal	glGetPixelMapusv
    # Line 4317
    sw	$at,4708($zero)
    ld	$gp,16($sp)
    # Line 4320
    ld	$ra,0($sp)
    # Line 4319
    sw	$s8,4708($zero)
    # Line 4320
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetPixelMapusv

# Function: __glce_GetPolygonStipple
# Declared: Line 4325 (Source lines: 4326-4334)
# Address: 0x0dbcb108 - 0x0dbcb154 (Size: 76 bytes, Frame: 48)
.globl __glce_GetPolygonStipple
.ent __glce_GetPolygonStipple
__glce_GetPolygonStipple:
    # Line 4326
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4330
    lw	$s8,4712($zero)
    sd	$gp,16($sp)
    # Line 4331
    lw	$at,__glCurrentContext
    # Line 4326
    lui	$v0,0x3
    addiu	$v0,$v0,13712
    addu	$gp,$t9,$v0
    # Line 4332
    # lw $t9, -16608($gp) # &glGetPolygonStipple
    # Line 4331
    lw	$at,10312($at)
    sd	$ra,0($sp)
    # Line 4332
    jal	glGetPolygonStipple
    # Line 4331
    sw	$at,4712($zero)
    ld	$gp,16($sp)
    # Line 4334
    ld	$ra,0($sp)
    # Line 4333
    sw	$s8,4712($zero)
    # Line 4334
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetPolygonStipple

# Function: __glce_GetString
# Declared: Line 4339 (Source lines: 4340-4349)
# Address: 0x0dbcb154 - 0x0dbcb1a0 (Size: 76 bytes, Frame: 48)
.globl __glce_GetString
.ent __glce_GetString
__glce_GetString:
    # Line 4340
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4345
    lw	$s8,4716($zero)
    sd	$gp,16($sp)
    # Line 4346
    lw	$at,__glCurrentContext
    # Line 4340
    lui	$v0,0x3
    addiu	$v0,$v0,13636
    addu	$gp,$t9,$v0
    # Line 4347
    # lw $t9, -16604($gp) # &glGetString
    # Line 4346
    lw	$at,10316($at)
    sd	$ra,0($sp)
    # Line 4347
    jal	glGetString
    # Line 4346
    sw	$at,4716($zero)
    ld	$gp,16($sp)
    # Line 4349
    ld	$ra,0($sp)
    # Line 4348
    sw	$s8,4716($zero)
    # Line 4349
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetString

# Function: __glce_GetTexEnvfv
# Declared: Line 4355 (Source lines: 4356-4364)
# Address: 0x0dbcb1a0 - 0x0dbcb1ec (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexEnvfv
.ent __glce_GetTexEnvfv
__glce_GetTexEnvfv:
    # Line 4356
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4360
    lw	$s8,4720($zero)
    sd	$gp,16($sp)
    # Line 4361
    lw	$at,__glCurrentContext
    # Line 4356
    lui	$v0,0x3
    addiu	$v0,$v0,13560
    addu	$gp,$t9,$v0
    # Line 4362
    # lw $t9, -16600($gp) # &glGetTexEnvfv
    # Line 4361
    lw	$at,10320($at)
    sd	$ra,0($sp)
    # Line 4362
    jal	glGetTexEnvfv
    # Line 4361
    sw	$at,4720($zero)
    ld	$gp,16($sp)
    # Line 4364
    ld	$ra,0($sp)
    # Line 4363
    sw	$s8,4720($zero)
    # Line 4364
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexEnvfv

# Function: __glce_GetTexEnviv
# Declared: Line 4369 (Source lines: 4370-4378)
# Address: 0x0dbcb1ec - 0x0dbcb238 (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexEnviv
.ent __glce_GetTexEnviv
__glce_GetTexEnviv:
    # Line 4370
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4374
    lw	$s8,4724($zero)
    sd	$gp,16($sp)
    # Line 4375
    lw	$at,__glCurrentContext
    # Line 4370
    lui	$v0,0x3
    addiu	$v0,$v0,13484
    addu	$gp,$t9,$v0
    # Line 4376
    # lw $t9, -16596($gp) # &glGetTexEnviv
    # Line 4375
    lw	$at,10324($at)
    sd	$ra,0($sp)
    # Line 4376
    jal	glGetTexEnviv
    # Line 4375
    sw	$at,4724($zero)
    ld	$gp,16($sp)
    # Line 4378
    ld	$ra,0($sp)
    # Line 4377
    sw	$s8,4724($zero)
    # Line 4378
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexEnviv

# Function: __glce_GetTexGendv
# Declared: Line 4383 (Source lines: 4384-4392)
# Address: 0x0dbcb238 - 0x0dbcb284 (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexGendv
.ent __glce_GetTexGendv
__glce_GetTexGendv:
    # Line 4384
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4388
    lw	$s8,4728($zero)
    sd	$gp,16($sp)
    # Line 4389
    lw	$at,__glCurrentContext
    # Line 4384
    lui	$v0,0x3
    addiu	$v0,$v0,13408
    addu	$gp,$t9,$v0
    # Line 4390
    # lw $t9, -16592($gp) # &glGetTexGendv
    # Line 4389
    lw	$at,10328($at)
    sd	$ra,0($sp)
    # Line 4390
    jal	glGetTexGendv
    # Line 4389
    sw	$at,4728($zero)
    ld	$gp,16($sp)
    # Line 4392
    ld	$ra,0($sp)
    # Line 4391
    sw	$s8,4728($zero)
    # Line 4392
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexGendv

# Function: __glce_GetTexGenfv
# Declared: Line 4397 (Source lines: 4398-4406)
# Address: 0x0dbcb284 - 0x0dbcb2d0 (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexGenfv
.ent __glce_GetTexGenfv
__glce_GetTexGenfv:
    # Line 4398
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4402
    lw	$s8,4732($zero)
    sd	$gp,16($sp)
    # Line 4403
    lw	$at,__glCurrentContext
    # Line 4398
    lui	$v0,0x3
    addiu	$v0,$v0,13332
    addu	$gp,$t9,$v0
    # Line 4404
    # lw $t9, -16588($gp) # &glGetTexGenfv
    # Line 4403
    lw	$at,10332($at)
    sd	$ra,0($sp)
    # Line 4404
    jal	glGetTexGenfv
    # Line 4403
    sw	$at,4732($zero)
    ld	$gp,16($sp)
    # Line 4406
    ld	$ra,0($sp)
    # Line 4405
    sw	$s8,4732($zero)
    # Line 4406
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexGenfv

# Function: __glce_GetTexGeniv
# Declared: Line 4411 (Source lines: 4412-4420)
# Address: 0x0dbcb2d0 - 0x0dbcb31c (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexGeniv
.ent __glce_GetTexGeniv
__glce_GetTexGeniv:
    # Line 4412
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4416
    lw	$s8,4736($zero)
    sd	$gp,16($sp)
    # Line 4417
    lw	$at,__glCurrentContext
    # Line 4412
    lui	$v0,0x3
    addiu	$v0,$v0,13256
    addu	$gp,$t9,$v0
    # Line 4418
    # lw $t9, -16584($gp) # &glGetTexGeniv
    # Line 4417
    lw	$at,10336($at)
    sd	$ra,0($sp)
    # Line 4418
    jal	glGetTexGeniv
    # Line 4417
    sw	$at,4736($zero)
    ld	$gp,16($sp)
    # Line 4420
    ld	$ra,0($sp)
    # Line 4419
    sw	$s8,4736($zero)
    # Line 4420
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexGeniv

# Function: __glce_GetTexImage
# Declared: Line 4425 (Source lines: 4426-4434)
# Address: 0x0dbcb31c - 0x0dbcb368 (Size: 76 bytes, Frame: 208)
.globl __glce_GetTexImage
.ent __glce_GetTexImage
__glce_GetTexImage:
    # Line 4426
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 4430
    lw	$s8,4740($zero)
    sd	$gp,16($sp)
    # Line 4431
    lw	$at,__glCurrentContext
    # Line 4426
    lui	$v0,0x3
    addiu	$v0,$v0,13180
    addu	$gp,$t9,$v0
    # Line 4432
    # lw $t9, -16580($gp) # &glGetTexImage
    # Line 4431
    lw	$at,10340($at)
    sd	$ra,0($sp)
    # Line 4432
    jal	glGetTexImage
    # Line 4431
    sw	$at,4740($zero)
    ld	$gp,16($sp)
    # Line 4434
    ld	$ra,0($sp)
    # Line 4433
    sw	$s8,4740($zero)
    # Line 4434
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_GetTexImage

# Function: __glce_GetTexParameterfv
# Declared: Line 4439 (Source lines: 4440-4448)
# Address: 0x0dbcb368 - 0x0dbcb3b4 (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexParameterfv
.ent __glce_GetTexParameterfv
__glce_GetTexParameterfv:
    # Line 4440
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4444
    lw	$s8,4744($zero)
    sd	$gp,16($sp)
    # Line 4445
    lw	$at,__glCurrentContext
    # Line 4440
    lui	$v0,0x3
    addiu	$v0,$v0,13104
    addu	$gp,$t9,$v0
    # Line 4446
    # lw $t9, -16576($gp) # &glGetTexParameterfv
    # Line 4445
    lw	$at,10344($at)
    sd	$ra,0($sp)
    # Line 4446
    jal	glGetTexParameterfv
    # Line 4445
    sw	$at,4744($zero)
    ld	$gp,16($sp)
    # Line 4448
    ld	$ra,0($sp)
    # Line 4447
    sw	$s8,4744($zero)
    # Line 4448
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexParameterfv

# Function: __glce_GetTexParameteriv
# Declared: Line 4453 (Source lines: 4454-4462)
# Address: 0x0dbcb3b4 - 0x0dbcb400 (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexParameteriv
.ent __glce_GetTexParameteriv
__glce_GetTexParameteriv:
    # Line 4454
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4458
    lw	$s8,4748($zero)
    sd	$gp,16($sp)
    # Line 4459
    lw	$at,__glCurrentContext
    # Line 4454
    lui	$v0,0x3
    addiu	$v0,$v0,13028
    addu	$gp,$t9,$v0
    # Line 4460
    # lw $t9, -16572($gp) # &glGetTexParameteriv
    # Line 4459
    lw	$at,10348($at)
    sd	$ra,0($sp)
    # Line 4460
    jal	glGetTexParameteriv
    # Line 4459
    sw	$at,4748($zero)
    ld	$gp,16($sp)
    # Line 4462
    ld	$ra,0($sp)
    # Line 4461
    sw	$s8,4748($zero)
    # Line 4462
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexParameteriv

# Function: __glce_GetTexLevelParameterfv
# Declared: Line 4467 (Source lines: 4468-4476)
# Address: 0x0dbcb400 - 0x0dbcb44c (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexLevelParameterfv
.ent __glce_GetTexLevelParameterfv
__glce_GetTexLevelParameterfv:
    # Line 4468
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4472
    lw	$s8,4752($zero)
    sd	$gp,16($sp)
    # Line 4473
    lw	$at,__glCurrentContext
    # Line 4468
    lui	$v0,0x3
    addiu	$v0,$v0,12952
    addu	$gp,$t9,$v0
    # Line 4474
    # lw $t9, -16568($gp) # &glGetTexLevelParameterfv
    # Line 4473
    lw	$at,10352($at)
    sd	$ra,0($sp)
    # Line 4474
    jal	glGetTexLevelParameterfv
    # Line 4473
    sw	$at,4752($zero)
    ld	$gp,16($sp)
    # Line 4476
    ld	$ra,0($sp)
    # Line 4475
    sw	$s8,4752($zero)
    # Line 4476
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexLevelParameterfv

# Function: __glce_GetTexLevelParameteriv
# Declared: Line 4481 (Source lines: 4482-4490)
# Address: 0x0dbcb44c - 0x0dbcb498 (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexLevelParameteriv
.ent __glce_GetTexLevelParameteriv
__glce_GetTexLevelParameteriv:
    # Line 4482
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 4486
    lw	$s8,4756($zero)
    sd	$gp,16($sp)
    # Line 4487
    lw	$at,__glCurrentContext
    # Line 4482
    lui	$v0,0x3
    addiu	$v0,$v0,12876
    addu	$gp,$t9,$v0
    # Line 4488
    # lw $t9, -16564($gp) # &glGetTexLevelParameteriv
    # Line 4487
    lw	$at,10356($at)
    sd	$ra,0($sp)
    # Line 4488
    jal	glGetTexLevelParameteriv
    # Line 4487
    sw	$at,4756($zero)
    ld	$gp,16($sp)
    # Line 4490
    ld	$ra,0($sp)
    # Line 4489
    sw	$s8,4756($zero)
    # Line 4490
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexLevelParameteriv

# Function: __glce_IsEnabled
# Declared: Line 4495 (Source lines: 4496-4505)
# Address: 0x0dbcb498 - 0x0dbcb4e8 (Size: 80 bytes, Frame: 48)
.globl __glce_IsEnabled
.ent __glce_IsEnabled
__glce_IsEnabled:
    # Line 4496
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4501
    lw	$s8,4760($zero)
    sd	$gp,16($sp)
    # Line 4502
    lw	$at,__glCurrentContext
    # Line 4496
    lui	$v0,0x3
    addiu	$v0,$v0,12800
    addu	$gp,$t9,$v0
    # Line 4503
    # lw $t9, -16560($gp) # &glIsEnabled
    # Line 4502
    lw	$at,10360($at)
    sd	$ra,0($sp)
    # Line 4503
    jal	glIsEnabled
    # Line 4502
    sw	$at,4760($zero)
    # Line 4505
    andi	$v0,$v0,0xff
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    # Line 4504
    sw	$s8,4760($zero)
    # Line 4505
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_IsEnabled

# Function: __glce_IsList
# Declared: Line 4511 (Source lines: 4512-4521)
# Address: 0x0dbcb4e8 - 0x0dbcb538 (Size: 80 bytes, Frame: 48)
.globl __glce_IsList
.ent __glce_IsList
__glce_IsList:
    # Line 4512
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 4517
    lw	$s8,4764($zero)
    sd	$gp,16($sp)
    # Line 4518
    lw	$at,__glCurrentContext
    # Line 4512
    lui	$v0,0x3
    addiu	$v0,$v0,12720
    addu	$gp,$t9,$v0
    # Line 4519
    # lw $t9, -16556($gp) # &glIsList
    # Line 4518
    lw	$at,10364($at)
    sd	$ra,0($sp)
    # Line 4519
    jal	glIsList
    # Line 4518
    sw	$at,4764($zero)
    # Line 4521
    andi	$v0,$v0,0xff
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    # Line 4520
    sw	$s8,4764($zero)
    # Line 4521
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_IsList

# Function: __glce_DepthRange
# Declared: Line 4527 (Source lines: 4528-4538)
# Address: 0x0dbcb538 - 0x0dbcb5b4 (Size: 124 bytes, Frame: 192)
.globl __glce_DepthRange
.ent __glce_DepthRange
__glce_DepthRange:
    # Line 4528
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,16($sp)
    # Line 4532
    lw	$v0,4768($zero)
    sd	$gp,32($sp)
    # Line 4528
    lui	$v1,0x3
    addiu	$v1,$v1,12640
    sd	$s8,24($sp)
    # Line 4530
    lw	$s8,__glCurrentContext
    # Line 4528
    addu	$gp,$t9,$v1
    # Line 4534
    # lw $t9, -16552($gp) # &glDepthRange
    # Line 4533
    lw	$at,6248($s8)
    sd	$v0,40($sp)
    # Line 4534
    jal	glDepthRange
    # Line 4533
    sw	$at,4768($zero)
    ldc1	$f13,8($sp)
    # Line 4536
    # lw $t9, -16552($gp) # &glDepthRange
    # Line 4535
    lw	$a0,10368($s8)
    # Line 4536
    mov.d	$f12,$f30
    jal	glDepthRange
    # Line 4535
    sw	$a0,4768($zero)
    ld	$gp,32($sp)
    # Line 4538
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4537
    sw	$a1,4768($zero)
.end __glce_DepthRange

# Function: __glce_Frustum
# Declared: Line 4543 (Source lines: 4544-4554)
# Address: 0x0dbcb5b4 - 0x0dbcb650 (Size: 156 bytes, Frame: 128)
.globl __glce_Frustum
.ent __glce_Frustum
__glce_Frustum:
    # Line 4544
    addiu	$sp,$sp,-128
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,24($sp)
    sdc1	$f14,32($sp)
    sdc1	$f13,40($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,48($sp)
    # Line 4548
    lw	$v0,4772($zero)
    sd	$gp,64($sp)
    # Line 4544
    lui	$v1,0x3
    addiu	$v1,$v1,12516
    sd	$s8,56($sp)
    # Line 4546
    lw	$s8,__glCurrentContext
    # Line 4544
    addu	$gp,$t9,$v1
    # Line 4550
    # lw $t9, -16548($gp) # &glFrustum
    # Line 4549
    lw	$at,6252($s8)
    sd	$v0,72($sp)
    # Line 4550
    jal	glFrustum
    # Line 4549
    sw	$at,4772($zero)
    ldc1	$f17,8($sp)
    # Line 4552
    ldc1	$f16,16($sp)
    ldc1	$f15,24($sp)
    ldc1	$f14,32($sp)
    ldc1	$f13,40($sp)
    # lw $t9, -16548($gp) # &glFrustum
    # Line 4551
    lw	$a0,10372($s8)
    # Line 4552
    mov.d	$f12,$f30
    jal	glFrustum
    # Line 4551
    sw	$a0,4772($zero)
    ld	$gp,64($sp)
    # Line 4554
    ld	$s8,56($sp)
    ldc1	$f30,0($sp)
    ld	$ra,48($sp)
    ld	$a1,72($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 4553
    sw	$a1,4772($zero)
.end __glce_Frustum

# Function: __glce_LoadIdentity
# Declared: Line 4559 (Source lines: 4560-4570)
# Address: 0x0dbcb650 - 0x0dbcb6b4 (Size: 100 bytes, Frame: 32)
.globl __glce_LoadIdentity
.ent __glce_LoadIdentity
__glce_LoadIdentity:
    # Line 4560
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 4564
    lw	$v0,4776($zero)
    sd	$gp,16($sp)
    # Line 4560
    lui	$v1,0x3
    addiu	$v1,$v1,12360
    sd	$s8,8($sp)
    # Line 4562
    lw	$s8,__glCurrentContext
    # Line 4560
    addu	$gp,$t9,$v1
    # Line 4566
    # lw $t9, -16544($gp) # &glLoadIdentity
    # Line 4565
    lw	$at,6256($s8)
    sd	$v0,24($sp)
    # Line 4566
    jal	glLoadIdentity
    # Line 4565
    sw	$at,4776($zero)
    # Line 4568
    # lw $t9, -16544($gp) # &glLoadIdentity
    # Line 4567
    lw	$a0,10376($s8)
    # Line 4568
    jal	glLoadIdentity
    # Line 4567
    sw	$a0,4776($zero)
    ld	$gp,16($sp)
    # Line 4570
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4569
    sw	$a1,4776($zero)
.end __glce_LoadIdentity

# Function: __glce_LoadMatrixf
# Declared: Line 4575 (Source lines: 4576-4586)
# Address: 0x0dbcb6b4 - 0x0dbcb728 (Size: 116 bytes, Frame: 192)
.globl __glce_LoadMatrixf
.ent __glce_LoadMatrixf
__glce_LoadMatrixf:
    # Line 4576
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4578
    lw	$at,__glCurrentContext
    # Line 4576
    lui	$v0,0x3
    addiu	$v0,$v0,12260
    addu	$gp,$t9,$v0
    # Line 4580
    lw	$v0,4780($zero)
    # Line 4582
    # lw $t9, -16540($gp) # &glLoadMatrixf
    sd	$at,32($sp)
    # Line 4581
    lw	$at,6260($at)
    sd	$v0,24($sp)
    # Line 4582
    jal	glLoadMatrixf
    # Line 4581
    sw	$at,4780($zero)
    # Line 4583
    ld	$v1,32($sp)
    # Line 4584
    # lw $t9, -16540($gp) # &glLoadMatrixf
    # Line 4583
    lw	$v1,10380($v1)
    # Line 4584
    move	$a0,$s8
    jal	glLoadMatrixf
    # Line 4583
    sw	$v1,4780($zero)
    ld	$gp,16($sp)
    # Line 4586
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4585
    sw	$a0,4780($zero)
.end __glce_LoadMatrixf

# Function: __glce_LoadMatrixd
# Declared: Line 4591 (Source lines: 4592-4602)
# Address: 0x0dbcb728 - 0x0dbcb79c (Size: 116 bytes, Frame: 192)
.globl __glce_LoadMatrixd
.ent __glce_LoadMatrixd
__glce_LoadMatrixd:
    # Line 4592
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4594
    lw	$at,__glCurrentContext
    # Line 4592
    lui	$v0,0x3
    addiu	$v0,$v0,12144
    addu	$gp,$t9,$v0
    # Line 4596
    lw	$v0,4784($zero)
    # Line 4598
    # lw $t9, -16536($gp) # &glLoadMatrixd
    sd	$at,32($sp)
    # Line 4597
    lw	$at,6264($at)
    sd	$v0,24($sp)
    # Line 4598
    jal	glLoadMatrixd
    # Line 4597
    sw	$at,4784($zero)
    # Line 4599
    ld	$v1,32($sp)
    # Line 4600
    # lw $t9, -16536($gp) # &glLoadMatrixd
    # Line 4599
    lw	$v1,10384($v1)
    # Line 4600
    move	$a0,$s8
    jal	glLoadMatrixd
    # Line 4599
    sw	$v1,4784($zero)
    ld	$gp,16($sp)
    # Line 4602
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4601
    sw	$a0,4784($zero)
.end __glce_LoadMatrixd

# Function: __glce_MatrixMode
# Declared: Line 4607 (Source lines: 4608-4618)
# Address: 0x0dbcb79c - 0x0dbcb810 (Size: 116 bytes, Frame: 192)
.globl __glce_MatrixMode
.ent __glce_MatrixMode
__glce_MatrixMode:
    # Line 4608
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4610
    lw	$at,__glCurrentContext
    # Line 4608
    lui	$v0,0x3
    addiu	$v0,$v0,12028
    addu	$gp,$t9,$v0
    # Line 4612
    lw	$v0,4788($zero)
    # Line 4614
    # lw $t9, -16532($gp) # &glMatrixMode
    sd	$at,32($sp)
    # Line 4613
    lw	$at,6268($at)
    sd	$v0,24($sp)
    # Line 4614
    jal	glMatrixMode
    # Line 4613
    sw	$at,4788($zero)
    # Line 4615
    ld	$v1,32($sp)
    # Line 4616
    # lw $t9, -16532($gp) # &glMatrixMode
    # Line 4615
    lw	$v1,10388($v1)
    # Line 4616
    move	$a0,$s8
    jal	glMatrixMode
    # Line 4615
    sw	$v1,4788($zero)
    ld	$gp,16($sp)
    # Line 4618
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4617
    sw	$a0,4788($zero)
.end __glce_MatrixMode

# Function: __glce_MultMatrixf
# Declared: Line 4623 (Source lines: 4624-4634)
# Address: 0x0dbcb810 - 0x0dbcb884 (Size: 116 bytes, Frame: 192)
.globl __glce_MultMatrixf
.ent __glce_MultMatrixf
__glce_MultMatrixf:
    # Line 4624
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4626
    lw	$at,__glCurrentContext
    # Line 4624
    lui	$v0,0x3
    addiu	$v0,$v0,11912
    addu	$gp,$t9,$v0
    # Line 4628
    lw	$v0,4792($zero)
    # Line 4630
    # lw $t9, -16528($gp) # &glMultMatrixf
    sd	$at,32($sp)
    # Line 4629
    lw	$at,6272($at)
    sd	$v0,24($sp)
    # Line 4630
    jal	glMultMatrixf
    # Line 4629
    sw	$at,4792($zero)
    # Line 4631
    ld	$v1,32($sp)
    # Line 4632
    # lw $t9, -16528($gp) # &glMultMatrixf
    # Line 4631
    lw	$v1,10392($v1)
    # Line 4632
    move	$a0,$s8
    jal	glMultMatrixf
    # Line 4631
    sw	$v1,4792($zero)
    ld	$gp,16($sp)
    # Line 4634
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4633
    sw	$a0,4792($zero)
.end __glce_MultMatrixf

# Function: __glce_MultMatrixd
# Declared: Line 4639 (Source lines: 4640-4650)
# Address: 0x0dbcb884 - 0x0dbcb8f8 (Size: 116 bytes, Frame: 192)
.globl __glce_MultMatrixd
.ent __glce_MultMatrixd
__glce_MultMatrixd:
    # Line 4640
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4642
    lw	$at,__glCurrentContext
    # Line 4640
    lui	$v0,0x3
    addiu	$v0,$v0,11796
    addu	$gp,$t9,$v0
    # Line 4644
    lw	$v0,4796($zero)
    # Line 4646
    # lw $t9, -16524($gp) # &glMultMatrixd
    sd	$at,32($sp)
    # Line 4645
    lw	$at,6276($at)
    sd	$v0,24($sp)
    # Line 4646
    jal	glMultMatrixd
    # Line 4645
    sw	$at,4796($zero)
    # Line 4647
    ld	$v1,32($sp)
    # Line 4648
    # lw $t9, -16524($gp) # &glMultMatrixd
    # Line 4647
    lw	$v1,10396($v1)
    # Line 4648
    move	$a0,$s8
    jal	glMultMatrixd
    # Line 4647
    sw	$v1,4796($zero)
    ld	$gp,16($sp)
    # Line 4650
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4649
    sw	$a0,4796($zero)
.end __glce_MultMatrixd

# Function: __glce_Ortho
# Declared: Line 4655 (Source lines: 4656-4666)
# Address: 0x0dbcb8f8 - 0x0dbcb994 (Size: 156 bytes, Frame: 128)
.globl __glce_Ortho
.ent __glce_Ortho
__glce_Ortho:
    # Line 4656
    addiu	$sp,$sp,-128
    sdc1	$f17,8($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,24($sp)
    sdc1	$f14,32($sp)
    sdc1	$f13,40($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,48($sp)
    # Line 4660
    lw	$v0,4800($zero)
    sd	$gp,64($sp)
    # Line 4656
    lui	$v1,0x3
    addiu	$v1,$v1,11680
    sd	$s8,56($sp)
    # Line 4658
    lw	$s8,__glCurrentContext
    # Line 4656
    addu	$gp,$t9,$v1
    # Line 4662
    # lw $t9, -16520($gp) # &glOrtho
    # Line 4661
    lw	$at,6280($s8)
    sd	$v0,72($sp)
    # Line 4662
    jal	glOrtho
    # Line 4661
    sw	$at,4800($zero)
    ldc1	$f17,8($sp)
    # Line 4664
    ldc1	$f16,16($sp)
    ldc1	$f15,24($sp)
    ldc1	$f14,32($sp)
    ldc1	$f13,40($sp)
    # lw $t9, -16520($gp) # &glOrtho
    # Line 4663
    lw	$a0,10400($s8)
    # Line 4664
    mov.d	$f12,$f30
    jal	glOrtho
    # Line 4663
    sw	$a0,4800($zero)
    ld	$gp,64($sp)
    # Line 4666
    ld	$s8,56($sp)
    ldc1	$f30,0($sp)
    ld	$ra,48($sp)
    ld	$a1,72($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 4665
    sw	$a1,4800($zero)
.end __glce_Ortho

# Function: __glce_PopMatrix
# Declared: Line 4671 (Source lines: 4672-4682)
# Address: 0x0dbcb994 - 0x0dbcb9f8 (Size: 100 bytes, Frame: 32)
.globl __glce_PopMatrix
.ent __glce_PopMatrix
__glce_PopMatrix:
    # Line 4672
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 4676
    lw	$v0,4804($zero)
    sd	$gp,16($sp)
    # Line 4672
    lui	$v1,0x3
    addiu	$v1,$v1,11524
    sd	$s8,8($sp)
    # Line 4674
    lw	$s8,__glCurrentContext
    # Line 4672
    addu	$gp,$t9,$v1
    # Line 4678
    # lw $t9, -16516($gp) # &glPopMatrix
    # Line 4677
    lw	$at,6284($s8)
    sd	$v0,24($sp)
    # Line 4678
    jal	glPopMatrix
    # Line 4677
    sw	$at,4804($zero)
    # Line 4680
    # lw $t9, -16516($gp) # &glPopMatrix
    # Line 4679
    lw	$a0,10404($s8)
    # Line 4680
    jal	glPopMatrix
    # Line 4679
    sw	$a0,4804($zero)
    ld	$gp,16($sp)
    # Line 4682
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4681
    sw	$a1,4804($zero)
.end __glce_PopMatrix

# Function: __glce_PushMatrix
# Declared: Line 4687 (Source lines: 4688-4698)
# Address: 0x0dbcb9f8 - 0x0dbcba5c (Size: 100 bytes, Frame: 32)
.globl __glce_PushMatrix
.ent __glce_PushMatrix
__glce_PushMatrix:
    # Line 4688
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 4692
    lw	$v0,4808($zero)
    sd	$gp,16($sp)
    # Line 4688
    lui	$v1,0x3
    addiu	$v1,$v1,11424
    sd	$s8,8($sp)
    # Line 4690
    lw	$s8,__glCurrentContext
    # Line 4688
    addu	$gp,$t9,$v1
    # Line 4694
    # lw $t9, -16512($gp) # &glPushMatrix
    # Line 4693
    lw	$at,6288($s8)
    sd	$v0,24($sp)
    # Line 4694
    jal	glPushMatrix
    # Line 4693
    sw	$at,4808($zero)
    # Line 4696
    # lw $t9, -16512($gp) # &glPushMatrix
    # Line 4695
    lw	$a0,10408($s8)
    # Line 4696
    jal	glPushMatrix
    # Line 4695
    sw	$a0,4808($zero)
    ld	$gp,16($sp)
    # Line 4698
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4697
    sw	$a1,4808($zero)
.end __glce_PushMatrix

# Function: __glce_Rotated
# Declared: Line 4703 (Source lines: 4704-4714)
# Address: 0x0dbcba5c - 0x0dbcbae8 (Size: 140 bytes, Frame: 224)
.globl __glce_Rotated
.ent __glce_Rotated
__glce_Rotated:
    # Line 4704
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,32($sp)
    # Line 4708
    lw	$v0,4812($zero)
    sd	$gp,48($sp)
    # Line 4704
    lui	$v1,0x3
    addiu	$v1,$v1,11324
    sd	$s8,40($sp)
    # Line 4706
    lw	$s8,__glCurrentContext
    # Line 4704
    addu	$gp,$t9,$v1
    # Line 4710
    # lw $t9, -16508($gp) # &glRotated
    # Line 4709
    lw	$at,6292($s8)
    sd	$v0,56($sp)
    # Line 4710
    jal	glRotated
    # Line 4709
    sw	$at,4812($zero)
    ldc1	$f15,8($sp)
    # Line 4712
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -16508($gp) # &glRotated
    # Line 4711
    lw	$a0,10412($s8)
    # Line 4712
    mov.d	$f12,$f30
    jal	glRotated
    # Line 4711
    sw	$a0,4812($zero)
    ld	$gp,48($sp)
    # Line 4714
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4713
    sw	$a1,4812($zero)
.end __glce_Rotated

# Function: __glce_Rotatef
# Declared: Line 4719 (Source lines: 4720-4730)
# Address: 0x0dbcbae8 - 0x0dbcbb74 (Size: 140 bytes, Frame: 224)
.globl __glce_Rotatef
.ent __glce_Rotatef
__glce_Rotatef:
    # Line 4720
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 4724
    lw	$v0,4816($zero)
    sd	$gp,48($sp)
    # Line 4720
    lui	$v1,0x3
    addiu	$v1,$v1,11184
    sd	$s8,40($sp)
    # Line 4722
    lw	$s8,__glCurrentContext
    # Line 4720
    addu	$gp,$t9,$v1
    # Line 4726
    # lw $t9, -16504($gp) # &glRotatef
    # Line 4725
    lw	$at,6296($s8)
    sd	$v0,56($sp)
    # Line 4726
    jal	glRotatef
    # Line 4725
    sw	$at,4816($zero)
    ldc1	$f15,8($sp)
    # Line 4728
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -16504($gp) # &glRotatef
    # Line 4727
    lw	$a0,10416($s8)
    # Line 4728
    mov.s	$f12,$f30
    jal	glRotatef
    # Line 4727
    sw	$a0,4816($zero)
    ld	$gp,48($sp)
    # Line 4730
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4729
    sw	$a1,4816($zero)
.end __glce_Rotatef

# Function: __glce_Scaled
# Declared: Line 4735 (Source lines: 4736-4746)
# Address: 0x0dbcbb74 - 0x0dbcbbf8 (Size: 132 bytes, Frame: 224)
.globl __glce_Scaled
.ent __glce_Scaled
__glce_Scaled:
    # Line 4736
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,24($sp)
    # Line 4740
    lw	$v0,4820($zero)
    sd	$gp,40($sp)
    # Line 4736
    lui	$v1,0x3
    addiu	$v1,$v1,11044
    sd	$s8,32($sp)
    # Line 4738
    lw	$s8,__glCurrentContext
    # Line 4736
    addu	$gp,$t9,$v1
    # Line 4742
    # lw $t9, -16500($gp) # &glScaled
    # Line 4741
    lw	$at,6300($s8)
    sd	$v0,48($sp)
    # Line 4742
    jal	glScaled
    # Line 4741
    sw	$at,4820($zero)
    ldc1	$f14,8($sp)
    # Line 4744
    ldc1	$f13,16($sp)
    # lw $t9, -16500($gp) # &glScaled
    # Line 4743
    lw	$a0,10420($s8)
    # Line 4744
    mov.d	$f12,$f30
    jal	glScaled
    # Line 4743
    sw	$a0,4820($zero)
    ld	$gp,40($sp)
    # Line 4746
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4745
    sw	$a1,4820($zero)
.end __glce_Scaled

# Function: __glce_Scalef
# Declared: Line 4751 (Source lines: 4752-4762)
# Address: 0x0dbcbbf8 - 0x0dbcbc7c (Size: 132 bytes, Frame: 224)
.globl __glce_Scalef
.ent __glce_Scalef
__glce_Scalef:
    # Line 4752
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,24($sp)
    # Line 4756
    lw	$v0,4824($zero)
    sd	$gp,40($sp)
    # Line 4752
    lui	$v1,0x3
    addiu	$v1,$v1,10912
    sd	$s8,32($sp)
    # Line 4754
    lw	$s8,__glCurrentContext
    # Line 4752
    addu	$gp,$t9,$v1
    # Line 4758
    # lw $t9, -16496($gp) # &glScalef
    # Line 4757
    lw	$at,6304($s8)
    sd	$v0,48($sp)
    # Line 4758
    jal	glScalef
    # Line 4757
    sw	$at,4824($zero)
    ldc1	$f14,8($sp)
    # Line 4760
    ldc1	$f13,16($sp)
    # lw $t9, -16496($gp) # &glScalef
    # Line 4759
    lw	$a0,10424($s8)
    # Line 4760
    mov.s	$f12,$f30
    jal	glScalef
    # Line 4759
    sw	$a0,4824($zero)
    ld	$gp,40($sp)
    # Line 4762
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4761
    sw	$a1,4824($zero)
.end __glce_Scalef

# Function: __glce_Translated
# Declared: Line 4767 (Source lines: 4768-4778)
# Address: 0x0dbcbc7c - 0x0dbcbd00 (Size: 132 bytes, Frame: 224)
.globl __glce_Translated
.ent __glce_Translated
__glce_Translated:
    # Line 4768
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.d	$f30,$f12
    sd	$ra,24($sp)
    # Line 4772
    lw	$v0,4828($zero)
    sd	$gp,40($sp)
    # Line 4768
    lui	$v1,0x3
    addiu	$v1,$v1,10780
    sd	$s8,32($sp)
    # Line 4770
    lw	$s8,__glCurrentContext
    # Line 4768
    addu	$gp,$t9,$v1
    # Line 4774
    # lw $t9, -16492($gp) # &glTranslated
    # Line 4773
    lw	$at,6308($s8)
    sd	$v0,48($sp)
    # Line 4774
    jal	glTranslated
    # Line 4773
    sw	$at,4828($zero)
    ldc1	$f14,8($sp)
    # Line 4776
    ldc1	$f13,16($sp)
    # lw $t9, -16492($gp) # &glTranslated
    # Line 4775
    lw	$a0,10428($s8)
    # Line 4776
    mov.d	$f12,$f30
    jal	glTranslated
    # Line 4775
    sw	$a0,4828($zero)
    ld	$gp,40($sp)
    # Line 4778
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4777
    sw	$a1,4828($zero)
.end __glce_Translated

# Function: __glce_Translatef
# Declared: Line 4783 (Source lines: 4784-4794)
# Address: 0x0dbcbd00 - 0x0dbcbd84 (Size: 132 bytes, Frame: 224)
.globl __glce_Translatef
.ent __glce_Translatef
__glce_Translatef:
    # Line 4784
    addiu	$sp,$sp,-96
    sdc1	$f14,8($sp)
    sdc1	$f13,16($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,24($sp)
    # Line 4788
    lw	$v0,4832($zero)
    sd	$gp,40($sp)
    # Line 4784
    lui	$v1,0x3
    addiu	$v1,$v1,10648
    sd	$s8,32($sp)
    # Line 4786
    lw	$s8,__glCurrentContext
    # Line 4784
    addu	$gp,$t9,$v1
    # Line 4790
    # lw $t9, -16488($gp) # &glTranslatef
    # Line 4789
    lw	$at,6312($s8)
    sd	$v0,48($sp)
    # Line 4790
    jal	glTranslatef
    # Line 4789
    sw	$at,4832($zero)
    ldc1	$f14,8($sp)
    # Line 4792
    ldc1	$f13,16($sp)
    # lw $t9, -16488($gp) # &glTranslatef
    # Line 4791
    lw	$a0,10432($s8)
    # Line 4792
    mov.s	$f12,$f30
    jal	glTranslatef
    # Line 4791
    sw	$a0,4832($zero)
    ld	$gp,40($sp)
    # Line 4794
    ld	$s8,32($sp)
    ldc1	$f30,0($sp)
    ld	$ra,24($sp)
    ld	$a1,48($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4793
    sw	$a1,4832($zero)
.end __glce_Translatef

# Function: __glce_Viewport
# Declared: Line 4799 (Source lines: 4800-4810)
# Address: 0x0dbcbd84 - 0x0dbcbe10 (Size: 140 bytes, Frame: 224)
.globl __glce_Viewport
.ent __glce_Viewport
__glce_Viewport:
    # Line 4800
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4802
    lw	$at,__glCurrentContext
    # Line 4800
    lui	$v0,0x3
    addiu	$v0,$v0,10516
    addu	$gp,$t9,$v0
    # Line 4804
    lw	$v0,4836($zero)
    # Line 4806
    # lw $t9, -16484($gp) # &glViewport
    sd	$at,32($sp)
    # Line 4805
    lw	$at,6316($at)
    sd	$v0,24($sp)
    # Line 4806
    jal	glViewport
    # Line 4805
    sw	$at,4836($zero)
    ld	$a3,40($sp)
    # Line 4808
    ld	$a2,48($sp)
    # Line 4807
    ld	$v1,32($sp)
    # Line 4808
    ld	$a1,56($sp)
    # lw $t9, -16484($gp) # &glViewport
    # Line 4807
    lw	$v1,10436($v1)
    # Line 4808
    move	$a0,$s8
    jal	glViewport
    # Line 4807
    sw	$v1,4836($zero)
    ld	$gp,16($sp)
    # Line 4810
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4809
    sw	$a0,4836($zero)
.end __glce_Viewport

# Function: __glce_BlendColorEXT
# Declared: Line 4815 (Source lines: 4816-4826)
# Address: 0x0dbcbe10 - 0x0dbcbe9c (Size: 140 bytes, Frame: 224)
.globl __glce_BlendColorEXT
.ent __glce_BlendColorEXT
__glce_BlendColorEXT:
    # Line 4816
    addiu	$sp,$sp,-96
    sdc1	$f15,8($sp)
    sdc1	$f14,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,32($sp)
    # Line 4820
    lw	$v0,4840($zero)
    sd	$gp,48($sp)
    # Line 4816
    lui	$v1,0x3
    addiu	$v1,$v1,10376
    sd	$s8,40($sp)
    # Line 4818
    lw	$s8,__glCurrentContext
    # Line 4816
    addu	$gp,$t9,$v1
    # Line 4822
    # lw $t9, -16480($gp) # &glBlendColorEXT
    # Line 4821
    lw	$at,6320($s8)
    sd	$v0,56($sp)
    # Line 4822
    jal	glBlendColorEXT
    # Line 4821
    sw	$at,4840($zero)
    ldc1	$f15,8($sp)
    # Line 4824
    ldc1	$f14,16($sp)
    ldc1	$f13,24($sp)
    # lw $t9, -16480($gp) # &glBlendColorEXT
    # Line 4823
    lw	$a0,10440($s8)
    # Line 4824
    mov.s	$f12,$f30
    jal	glBlendColorEXT
    # Line 4823
    sw	$a0,4840($zero)
    ld	$gp,48($sp)
    # Line 4826
    ld	$s8,40($sp)
    ldc1	$f30,0($sp)
    ld	$ra,32($sp)
    ld	$a1,56($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4825
    sw	$a1,4840($zero)
.end __glce_BlendColorEXT

# Function: __glce_BlendEquationEXT
# Declared: Line 4831 (Source lines: 4832-4842)
# Address: 0x0dbcbe9c - 0x0dbcbf10 (Size: 116 bytes, Frame: 192)
.globl __glce_BlendEquationEXT
.ent __glce_BlendEquationEXT
__glce_BlendEquationEXT:
    # Line 4832
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4834
    lw	$at,__glCurrentContext
    # Line 4832
    lui	$v0,0x3
    addiu	$v0,$v0,10236
    addu	$gp,$t9,$v0
    # Line 4836
    lw	$v0,4844($zero)
    # Line 4838
    # lw $t9, -16476($gp) # &glBlendEquationEXT
    sd	$at,32($sp)
    # Line 4837
    lw	$at,6324($at)
    sd	$v0,24($sp)
    # Line 4838
    jal	glBlendEquationEXT
    # Line 4837
    sw	$at,4844($zero)
    # Line 4839
    ld	$v1,32($sp)
    # Line 4840
    # lw $t9, -16476($gp) # &glBlendEquationEXT
    # Line 4839
    lw	$v1,10444($v1)
    # Line 4840
    move	$a0,$s8
    jal	glBlendEquationEXT
    # Line 4839
    sw	$v1,4844($zero)
    ld	$gp,16($sp)
    # Line 4842
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4841
    sw	$a0,4844($zero)
.end __glce_BlendEquationEXT

# Function: __glce_PolygonOffsetEXT
# Declared: Line 4847 (Source lines: 4848-4858)
# Address: 0x0dbcbf10 - 0x0dbcbf8c (Size: 124 bytes, Frame: 192)
.globl __glce_PolygonOffsetEXT
.ent __glce_PolygonOffsetEXT
__glce_PolygonOffsetEXT:
    # Line 4848
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,16($sp)
    # Line 4852
    lw	$v0,4848($zero)
    sd	$gp,32($sp)
    # Line 4848
    lui	$v1,0x3
    addiu	$v1,$v1,10120
    sd	$s8,24($sp)
    # Line 4850
    lw	$s8,__glCurrentContext
    # Line 4848
    addu	$gp,$t9,$v1
    # Line 4854
    # lw $t9, -16472($gp) # &glPolygonOffsetEXT
    # Line 4853
    lw	$at,6328($s8)
    sd	$v0,40($sp)
    # Line 4854
    jal	glPolygonOffsetEXT
    # Line 4853
    sw	$at,4848($zero)
    ldc1	$f13,8($sp)
    # Line 4856
    # lw $t9, -16472($gp) # &glPolygonOffsetEXT
    # Line 4855
    lw	$a0,10448($s8)
    # Line 4856
    mov.s	$f12,$f30
    jal	glPolygonOffsetEXT
    # Line 4855
    sw	$a0,4848($zero)
    ld	$gp,32($sp)
    # Line 4858
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 4857
    sw	$a1,4848($zero)
.end __glce_PolygonOffsetEXT

# Function: __glce_TexSubImage1DEXT
# Declared: Line 4863 (Source lines: 4864-4874)
# Address: 0x0dbcbf8c - 0x0dbcc030 (Size: 164 bytes, Frame: 160)
.globl __glce_TexSubImage1DEXT
.ent __glce_TexSubImage1DEXT
__glce_TexSubImage1DEXT:
    # Line 4864
    addiu	$sp,$sp,-160
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    sd	$a3,64($sp)
    sd	$a2,72($sp)
    sd	$a1,80($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4866
    lw	$at,__glCurrentContext
    # Line 4864
    lui	$v0,0x3
    addiu	$v0,$v0,9996
    addu	$gp,$t9,$v0
    # Line 4868
    lw	$v0,4852($zero)
    # Line 4870
    # lw $t9, -16468($gp) # &glTexSubImage1DEXT
    sd	$at,32($sp)
    # Line 4869
    lw	$at,6332($at)
    sd	$v0,24($sp)
    # Line 4870
    jal	glTexSubImage1DEXT
    # Line 4869
    sw	$at,4852($zero)
    ld	$a6,40($sp)
    # Line 4872
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a2,72($sp)
    # Line 4871
    ld	$v1,32($sp)
    # Line 4872
    ld	$a1,80($sp)
    # lw $t9, -16468($gp) # &glTexSubImage1DEXT
    # Line 4871
    lw	$v1,10452($v1)
    # Line 4872
    move	$a0,$s8
    jal	glTexSubImage1DEXT
    # Line 4871
    sw	$v1,4852($zero)
    ld	$gp,16($sp)
    # Line 4874
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 4873
    sw	$a0,4852($zero)
.end __glce_TexSubImage1DEXT

# Function: __glce_TexSubImage2DEXT
# Declared: Line 4879 (Source lines: 4880-4890)
# Address: 0x0dbcc030 - 0x0dbcc0f0 (Size: 192 bytes, Frame: 192)
.globl __glce_TexSubImage2DEXT
.ent __glce_TexSubImage2DEXT
__glce_TexSubImage2DEXT:
    # Line 4880
    addiu	$sp,$sp,-192
    sd	$a7,64($sp)
    sd	$a6,72($sp)
    sd	$a5,80($sp)
    sd	$a4,88($sp)
    sd	$a3,96($sp)
    sd	$a2,104($sp)
    sd	$a1,112($sp)
    sd	$s8,24($sp)
    # Line 4886
    lw	$at,196($sp)
    # Line 4880
    move	$s8,$a0
    sd	$ra,16($sp)
    sd	$at,48($sp)
    sd	$gp,32($sp)
    lui	$v1,0x3
    addiu	$v1,$v1,9832
    # Line 4882
    lw	$v0,__glCurrentContext
    # Line 4880
    addu	$gp,$t9,$v1
    # Line 4884
    lw	$v1,4856($zero)
    sd	$v0,56($sp)
    # Line 4885
    lw	$v0,6336($v0)
    # Line 4886
    # lw $t9, -16464($gp) # &glTexSubImage2DEXT
    sd	$v1,40($sp)
    # Line 4885
    sw	$v0,4856($zero)
    # Line 4886
    jal	glTexSubImage2DEXT
    sw	$at,4($sp)
    ld	$a7,64($sp)
    # Line 4888
    ld	$a6,72($sp)
    ld	$a5,80($sp)
    ld	$a4,88($sp)
    ld	$a3,96($sp)
    ld	$a2,104($sp)
    # Line 4887
    ld	$t1,56($sp)
    # Line 4888
    ld	$a1,112($sp)
    move	$a0,$s8
    # Line 4887
    lw	$t1,10456($t1)
    # Line 4888
    # lw $t9, -16464($gp) # &glTexSubImage2DEXT
    ld	$t0,48($sp)
    # Line 4887
    sw	$t1,4856($zero)
    # Line 4888
    jal	glTexSubImage2DEXT
    sw	$t0,4($sp)
    ld	$s8,40($sp)
    ld	$gp,32($sp)
    # Line 4890
    ld	$ra,16($sp)
    # Line 4889
    sw	$s8,4856($zero)
    # Line 4890
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glce_TexSubImage2DEXT

# Function: __glce_ConvolutionFilter1DEXT
# Declared: Line 4895 (Source lines: 4896-4906)
# Address: 0x0dbcc0f0 - 0x0dbcc18c (Size: 156 bytes, Frame: 128)
.globl __glce_ConvolutionFilter1DEXT
.ent __glce_ConvolutionFilter1DEXT
__glce_ConvolutionFilter1DEXT:
    # Line 4896
    addiu	$sp,$sp,-128
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4898
    lw	$at,__glCurrentContext
    # Line 4896
    lui	$v0,0x3
    addiu	$v0,$v0,9640
    addu	$gp,$t9,$v0
    # Line 4900
    lw	$v0,4860($zero)
    # Line 4902
    # lw $t9, -16460($gp) # &glConvolutionFilter1DEXT
    sd	$at,32($sp)
    # Line 4901
    lw	$at,6340($at)
    sd	$v0,24($sp)
    # Line 4902
    jal	glConvolutionFilter1DEXT
    # Line 4901
    sw	$at,4860($zero)
    ld	$a5,40($sp)
    # Line 4904
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # Line 4903
    ld	$v1,32($sp)
    # Line 4904
    ld	$a1,72($sp)
    # lw $t9, -16460($gp) # &glConvolutionFilter1DEXT
    # Line 4903
    lw	$v1,10460($v1)
    # Line 4904
    move	$a0,$s8
    jal	glConvolutionFilter1DEXT
    # Line 4903
    sw	$v1,4860($zero)
    ld	$gp,16($sp)
    # Line 4906
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 4905
    sw	$a0,4860($zero)
.end __glce_ConvolutionFilter1DEXT

# Function: __glce_ConvolutionFilter2DEXT
# Declared: Line 4911 (Source lines: 4912-4922)
# Address: 0x0dbcc18c - 0x0dbcc230 (Size: 164 bytes, Frame: 160)
.globl __glce_ConvolutionFilter2DEXT
.ent __glce_ConvolutionFilter2DEXT
__glce_ConvolutionFilter2DEXT:
    # Line 4912
    addiu	$sp,$sp,-160
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    sd	$a3,64($sp)
    sd	$a2,72($sp)
    sd	$a1,80($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4914
    lw	$at,__glCurrentContext
    # Line 4912
    lui	$v0,0x3
    addiu	$v0,$v0,9484
    addu	$gp,$t9,$v0
    # Line 4916
    lw	$v0,4864($zero)
    # Line 4918
    # lw $t9, -16456($gp) # &glConvolutionFilter2DEXT
    sd	$at,32($sp)
    # Line 4917
    lw	$at,6344($at)
    sd	$v0,24($sp)
    # Line 4918
    jal	glConvolutionFilter2DEXT
    # Line 4917
    sw	$at,4864($zero)
    ld	$a6,40($sp)
    # Line 4920
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a2,72($sp)
    # Line 4919
    ld	$v1,32($sp)
    # Line 4920
    ld	$a1,80($sp)
    # lw $t9, -16456($gp) # &glConvolutionFilter2DEXT
    # Line 4919
    lw	$v1,10464($v1)
    # Line 4920
    move	$a0,$s8
    jal	glConvolutionFilter2DEXT
    # Line 4919
    sw	$v1,4864($zero)
    ld	$gp,16($sp)
    # Line 4922
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 4921
    sw	$a0,4864($zero)
.end __glce_ConvolutionFilter2DEXT

# Function: __glce_ConvolutionParameterfEXT
# Declared: Line 4927 (Source lines: 4928-4938)
# Address: 0x0dbcc230 - 0x0dbcc2bc (Size: 140 bytes, Frame: 224)
.globl __glce_ConvolutionParameterfEXT
.ent __glce_ConvolutionParameterfEXT
__glce_ConvolutionParameterfEXT:
    # Line 4928
    addiu	$sp,$sp,-96
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$a1,48($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 4930
    lw	$at,__glCurrentContext
    # Line 4928
    lui	$v0,0x3
    addiu	$v0,$v0,9320
    addu	$gp,$t9,$v0
    # Line 4932
    lw	$v0,4868($zero)
    # Line 4934
    # lw $t9, -16452($gp) # &glConvolutionParameterfEXT
    sd	$at,40($sp)
    # Line 4933
    lw	$at,6348($at)
    sd	$v0,32($sp)
    # Line 4934
    jal	glConvolutionParameterfEXT
    # Line 4933
    sw	$at,4868($zero)
    # Line 4936
    mov.s	$f14,$f30
    # Line 4935
    ld	$v1,40($sp)
    # Line 4936
    ld	$a1,48($sp)
    # lw $t9, -16452($gp) # &glConvolutionParameterfEXT
    # Line 4935
    lw	$v1,10468($v1)
    # Line 4936
    move	$a0,$s8
    jal	glConvolutionParameterfEXT
    # Line 4935
    sw	$v1,4868($zero)
    ld	$gp,24($sp)
    # Line 4938
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4937
    sw	$a0,4868($zero)
.end __glce_ConvolutionParameterfEXT

# Function: __glce_ConvolutionParameterfvEXT
# Declared: Line 4943 (Source lines: 4944-4954)
# Address: 0x0dbcc2bc - 0x0dbcc340 (Size: 132 bytes, Frame: 224)
.globl __glce_ConvolutionParameterfvEXT
.ent __glce_ConvolutionParameterfvEXT
__glce_ConvolutionParameterfvEXT:
    # Line 4944
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4946
    lw	$at,__glCurrentContext
    # Line 4944
    lui	$v0,0x3
    addiu	$v0,$v0,9180
    addu	$gp,$t9,$v0
    # Line 4948
    lw	$v0,4872($zero)
    # Line 4950
    # lw $t9, -16448($gp) # &glConvolutionParameterfvEXT
    sd	$at,32($sp)
    # Line 4949
    lw	$at,6352($at)
    sd	$v0,24($sp)
    # Line 4950
    jal	glConvolutionParameterfvEXT
    # Line 4949
    sw	$at,4872($zero)
    ld	$a2,40($sp)
    # Line 4951
    ld	$v1,32($sp)
    # Line 4952
    ld	$a1,48($sp)
    # lw $t9, -16448($gp) # &glConvolutionParameterfvEXT
    # Line 4951
    lw	$v1,10472($v1)
    # Line 4952
    move	$a0,$s8
    jal	glConvolutionParameterfvEXT
    # Line 4951
    sw	$v1,4872($zero)
    ld	$gp,16($sp)
    # Line 4954
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4953
    sw	$a0,4872($zero)
.end __glce_ConvolutionParameterfvEXT

# Function: __glce_ConvolutionParameteriEXT
# Declared: Line 4959 (Source lines: 4960-4970)
# Address: 0x0dbcc340 - 0x0dbcc3c4 (Size: 132 bytes, Frame: 224)
.globl __glce_ConvolutionParameteriEXT
.ent __glce_ConvolutionParameteriEXT
__glce_ConvolutionParameteriEXT:
    # Line 4960
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4962
    lw	$at,__glCurrentContext
    # Line 4960
    lui	$v0,0x3
    addiu	$v0,$v0,9048
    addu	$gp,$t9,$v0
    # Line 4964
    lw	$v0,4876($zero)
    # Line 4966
    # lw $t9, -16444($gp) # &glConvolutionParameteriEXT
    sd	$at,32($sp)
    # Line 4965
    lw	$at,6356($at)
    sd	$v0,24($sp)
    # Line 4966
    jal	glConvolutionParameteriEXT
    # Line 4965
    sw	$at,4876($zero)
    ld	$a2,40($sp)
    # Line 4967
    ld	$v1,32($sp)
    # Line 4968
    ld	$a1,48($sp)
    # lw $t9, -16444($gp) # &glConvolutionParameteriEXT
    # Line 4967
    lw	$v1,10476($v1)
    # Line 4968
    move	$a0,$s8
    jal	glConvolutionParameteriEXT
    # Line 4967
    sw	$v1,4876($zero)
    ld	$gp,16($sp)
    # Line 4970
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4969
    sw	$a0,4876($zero)
.end __glce_ConvolutionParameteriEXT

# Function: __glce_ConvolutionParameterivEXT
# Declared: Line 4975 (Source lines: 4976-4986)
# Address: 0x0dbcc3c4 - 0x0dbcc448 (Size: 132 bytes, Frame: 224)
.globl __glce_ConvolutionParameterivEXT
.ent __glce_ConvolutionParameterivEXT
__glce_ConvolutionParameterivEXT:
    # Line 4976
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4978
    lw	$at,__glCurrentContext
    # Line 4976
    lui	$v0,0x3
    addiu	$v0,$v0,8916
    addu	$gp,$t9,$v0
    # Line 4980
    lw	$v0,4880($zero)
    # Line 4982
    # lw $t9, -16440($gp) # &glConvolutionParameterivEXT
    sd	$at,32($sp)
    # Line 4981
    lw	$at,6360($at)
    sd	$v0,24($sp)
    # Line 4982
    jal	glConvolutionParameterivEXT
    # Line 4981
    sw	$at,4880($zero)
    ld	$a2,40($sp)
    # Line 4983
    ld	$v1,32($sp)
    # Line 4984
    ld	$a1,48($sp)
    # lw $t9, -16440($gp) # &glConvolutionParameterivEXT
    # Line 4983
    lw	$v1,10480($v1)
    # Line 4984
    move	$a0,$s8
    jal	glConvolutionParameterivEXT
    # Line 4983
    sw	$v1,4880($zero)
    ld	$gp,16($sp)
    # Line 4986
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 4985
    sw	$a0,4880($zero)
.end __glce_ConvolutionParameterivEXT

# Function: __glce_CopyConvolutionFilter1DEXT
# Declared: Line 4991 (Source lines: 4992-5002)
# Address: 0x0dbcc448 - 0x0dbcc4dc (Size: 148 bytes, Frame: 128)
.globl __glce_CopyConvolutionFilter1DEXT
.ent __glce_CopyConvolutionFilter1DEXT
__glce_CopyConvolutionFilter1DEXT:
    # Line 4992
    addiu	$sp,$sp,-128
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 4994
    lw	$at,__glCurrentContext
    # Line 4992
    lui	$v0,0x3
    addiu	$v0,$v0,8784
    addu	$gp,$t9,$v0
    # Line 4996
    lw	$v0,4884($zero)
    # Line 4998
    # lw $t9, -16436($gp) # &glCopyConvolutionFilter1DEXT
    sd	$at,32($sp)
    # Line 4997
    lw	$at,6364($at)
    sd	$v0,24($sp)
    # Line 4998
    jal	glCopyConvolutionFilter1DEXT
    # Line 4997
    sw	$at,4884($zero)
    ld	$a4,40($sp)
    # Line 5000
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # Line 4999
    ld	$v1,32($sp)
    # Line 5000
    ld	$a1,64($sp)
    # lw $t9, -16436($gp) # &glCopyConvolutionFilter1DEXT
    # Line 4999
    lw	$v1,10484($v1)
    # Line 5000
    move	$a0,$s8
    jal	glCopyConvolutionFilter1DEXT
    # Line 4999
    sw	$v1,4884($zero)
    ld	$gp,16($sp)
    # Line 5002
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 5001
    sw	$a0,4884($zero)
.end __glce_CopyConvolutionFilter1DEXT

# Function: __glce_CopyConvolutionFilter2DEXT
# Declared: Line 5007 (Source lines: 5008-5018)
# Address: 0x0dbcc4dc - 0x0dbcc578 (Size: 156 bytes, Frame: 128)
.globl __glce_CopyConvolutionFilter2DEXT
.ent __glce_CopyConvolutionFilter2DEXT
__glce_CopyConvolutionFilter2DEXT:
    # Line 5008
    addiu	$sp,$sp,-128
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5010
    lw	$at,__glCurrentContext
    # Line 5008
    lui	$v0,0x3
    addiu	$v0,$v0,8636
    addu	$gp,$t9,$v0
    # Line 5012
    lw	$v0,4888($zero)
    # Line 5014
    # lw $t9, -16432($gp) # &glCopyConvolutionFilter2DEXT
    sd	$at,32($sp)
    # Line 5013
    lw	$at,6368($at)
    sd	$v0,24($sp)
    # Line 5014
    jal	glCopyConvolutionFilter2DEXT
    # Line 5013
    sw	$at,4888($zero)
    ld	$a5,40($sp)
    # Line 5016
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # Line 5015
    ld	$v1,32($sp)
    # Line 5016
    ld	$a1,72($sp)
    # lw $t9, -16432($gp) # &glCopyConvolutionFilter2DEXT
    # Line 5015
    lw	$v1,10488($v1)
    # Line 5016
    move	$a0,$s8
    jal	glCopyConvolutionFilter2DEXT
    # Line 5015
    sw	$v1,4888($zero)
    ld	$gp,16($sp)
    # Line 5018
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 5017
    sw	$a0,4888($zero)
.end __glce_CopyConvolutionFilter2DEXT

# Function: __glce_GetConvolutionFilterEXT
# Declared: Line 5023 (Source lines: 5024-5032)
# Address: 0x0dbcc578 - 0x0dbcc5c4 (Size: 76 bytes, Frame: 192)
.globl __glce_GetConvolutionFilterEXT
.ent __glce_GetConvolutionFilterEXT
__glce_GetConvolutionFilterEXT:
    # Line 5024
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5028
    lw	$s8,4892($zero)
    sd	$gp,16($sp)
    # Line 5029
    lw	$at,__glCurrentContext
    # Line 5024
    lui	$v0,0x3
    addiu	$v0,$v0,8480
    addu	$gp,$t9,$v0
    # Line 5030
    # lw $t9, -16428($gp) # &glGetConvolutionFilterEXT
    # Line 5029
    lw	$at,10492($at)
    sd	$ra,0($sp)
    # Line 5030
    jal	glGetConvolutionFilterEXT
    # Line 5029
    sw	$at,4892($zero)
    ld	$gp,16($sp)
    # Line 5032
    ld	$ra,0($sp)
    # Line 5031
    sw	$s8,4892($zero)
    # Line 5032
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetConvolutionFilterEXT

# Function: __glce_GetConvolutionParameterfvEXT
# Declared: Line 5037 (Source lines: 5038-5046)
# Address: 0x0dbcc5c4 - 0x0dbcc610 (Size: 76 bytes, Frame: 192)
.globl __glce_GetConvolutionParameterfvEXT
.ent __glce_GetConvolutionParameterfvEXT
__glce_GetConvolutionParameterfvEXT:
    # Line 5038
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5042
    lw	$s8,4896($zero)
    sd	$gp,16($sp)
    # Line 5043
    lw	$at,__glCurrentContext
    # Line 5038
    lui	$v0,0x3
    addiu	$v0,$v0,8404
    addu	$gp,$t9,$v0
    # Line 5044
    # lw $t9, -16424($gp) # &glGetConvolutionParameterfvEXT
    # Line 5043
    lw	$at,10496($at)
    sd	$ra,0($sp)
    # Line 5044
    jal	glGetConvolutionParameterfvEXT
    # Line 5043
    sw	$at,4896($zero)
    ld	$gp,16($sp)
    # Line 5046
    ld	$ra,0($sp)
    # Line 5045
    sw	$s8,4896($zero)
    # Line 5046
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetConvolutionParameterfvEXT

# Function: __glce_GetConvolutionParameterivEXT
# Declared: Line 5051 (Source lines: 5052-5060)
# Address: 0x0dbcc610 - 0x0dbcc65c (Size: 76 bytes, Frame: 192)
.globl __glce_GetConvolutionParameterivEXT
.ent __glce_GetConvolutionParameterivEXT
__glce_GetConvolutionParameterivEXT:
    # Line 5052
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5056
    lw	$s8,4900($zero)
    sd	$gp,16($sp)
    # Line 5057
    lw	$at,__glCurrentContext
    # Line 5052
    lui	$v0,0x3
    addiu	$v0,$v0,8328
    addu	$gp,$t9,$v0
    # Line 5058
    # lw $t9, -16420($gp) # &glGetConvolutionParameterivEXT
    # Line 5057
    lw	$at,10500($at)
    sd	$ra,0($sp)
    # Line 5058
    jal	glGetConvolutionParameterivEXT
    # Line 5057
    sw	$at,4900($zero)
    ld	$gp,16($sp)
    # Line 5060
    ld	$ra,0($sp)
    # Line 5059
    sw	$s8,4900($zero)
    # Line 5060
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetConvolutionParameterivEXT

# Function: __glce_GetSeparableFilterEXT
# Declared: Line 5065 (Source lines: 5066-5074)
# Address: 0x0dbcc65c - 0x0dbcc6a8 (Size: 76 bytes, Frame: 208)
.globl __glce_GetSeparableFilterEXT
.ent __glce_GetSeparableFilterEXT
__glce_GetSeparableFilterEXT:
    # Line 5066
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 5070
    lw	$s8,4904($zero)
    sd	$gp,16($sp)
    # Line 5071
    lw	$at,__glCurrentContext
    # Line 5066
    lui	$v0,0x3
    addiu	$v0,$v0,8252
    addu	$gp,$t9,$v0
    # Line 5072
    # lw $t9, -16416($gp) # &glGetSeparableFilterEXT
    # Line 5071
    lw	$at,10504($at)
    sd	$ra,0($sp)
    # Line 5072
    jal	glGetSeparableFilterEXT
    # Line 5071
    sw	$at,4904($zero)
    ld	$gp,16($sp)
    # Line 5074
    ld	$ra,0($sp)
    # Line 5073
    sw	$s8,4904($zero)
    # Line 5074
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_GetSeparableFilterEXT

# Function: __glce_SeparableFilter2DEXT
# Declared: Line 5079 (Source lines: 5080-5090)
# Address: 0x0dbcc6a8 - 0x0dbcc754 (Size: 172 bytes, Frame: 160)
.globl __glce_SeparableFilter2DEXT
.ent __glce_SeparableFilter2DEXT
__glce_SeparableFilter2DEXT:
    # Line 5080
    addiu	$sp,$sp,-160
    sd	$a7,40($sp)
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5082
    lw	$at,__glCurrentContext
    # Line 5080
    lui	$v0,0x3
    addiu	$v0,$v0,8176
    addu	$gp,$t9,$v0
    # Line 5084
    lw	$v0,4908($zero)
    # Line 5086
    # lw $t9, -16412($gp) # &glSeparableFilter2DEXT
    sd	$at,32($sp)
    # Line 5085
    lw	$at,6388($at)
    sd	$v0,24($sp)
    # Line 5086
    jal	glSeparableFilter2DEXT
    # Line 5085
    sw	$at,4908($zero)
    ld	$a7,40($sp)
    # Line 5088
    ld	$a6,48($sp)
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # Line 5087
    ld	$v1,32($sp)
    # Line 5088
    ld	$a1,88($sp)
    # lw $t9, -16412($gp) # &glSeparableFilter2DEXT
    # Line 5087
    lw	$v1,10508($v1)
    # Line 5088
    move	$a0,$s8
    jal	glSeparableFilter2DEXT
    # Line 5087
    sw	$v1,4908($zero)
    ld	$gp,16($sp)
    # Line 5090
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 5089
    sw	$a0,4908($zero)
.end __glce_SeparableFilter2DEXT

# Function: __glce_GetHistogramEXT
# Declared: Line 5095 (Source lines: 5096-5104)
# Address: 0x0dbcc754 - 0x0dbcc7a0 (Size: 76 bytes, Frame: 208)
.globl __glce_GetHistogramEXT
.ent __glce_GetHistogramEXT
__glce_GetHistogramEXT:
    # Line 5096
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 5100
    lw	$s8,4912($zero)
    sd	$gp,16($sp)
    # Line 5101
    lw	$at,__glCurrentContext
    # Line 5096
    lui	$v0,0x3
    addiu	$v0,$v0,8004
    addu	$gp,$t9,$v0
    # Line 5102
    # lw $t9, -16408($gp) # &glGetHistogramEXT
    # Line 5101
    lw	$at,10512($at)
    sd	$ra,0($sp)
    # Line 5102
    jal	glGetHistogramEXT
    # Line 5101
    sw	$at,4912($zero)
    ld	$gp,16($sp)
    # Line 5104
    ld	$ra,0($sp)
    # Line 5103
    sw	$s8,4912($zero)
    # Line 5104
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_GetHistogramEXT

# Function: __glce_GetHistogramParameterfvEXT
# Declared: Line 5109 (Source lines: 5110-5118)
# Address: 0x0dbcc7a0 - 0x0dbcc7ec (Size: 76 bytes, Frame: 192)
.globl __glce_GetHistogramParameterfvEXT
.ent __glce_GetHistogramParameterfvEXT
__glce_GetHistogramParameterfvEXT:
    # Line 5110
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5114
    lw	$s8,4916($zero)
    sd	$gp,16($sp)
    # Line 5115
    lw	$at,__glCurrentContext
    # Line 5110
    lui	$v0,0x3
    addiu	$v0,$v0,7928
    addu	$gp,$t9,$v0
    # Line 5116
    # lw $t9, -16404($gp) # &glGetHistogramParameterfvEXT
    # Line 5115
    lw	$at,10516($at)
    sd	$ra,0($sp)
    # Line 5116
    jal	glGetHistogramParameterfvEXT
    # Line 5115
    sw	$at,4916($zero)
    ld	$gp,16($sp)
    # Line 5118
    ld	$ra,0($sp)
    # Line 5117
    sw	$s8,4916($zero)
    # Line 5118
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetHistogramParameterfvEXT

# Function: __glce_GetHistogramParameterivEXT
# Declared: Line 5123 (Source lines: 5124-5132)
# Address: 0x0dbcc7ec - 0x0dbcc838 (Size: 76 bytes, Frame: 192)
.globl __glce_GetHistogramParameterivEXT
.ent __glce_GetHistogramParameterivEXT
__glce_GetHistogramParameterivEXT:
    # Line 5124
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5128
    lw	$s8,4920($zero)
    sd	$gp,16($sp)
    # Line 5129
    lw	$at,__glCurrentContext
    # Line 5124
    lui	$v0,0x3
    addiu	$v0,$v0,7852
    addu	$gp,$t9,$v0
    # Line 5130
    # lw $t9, -16400($gp) # &glGetHistogramParameterivEXT
    # Line 5129
    lw	$at,10520($at)
    sd	$ra,0($sp)
    # Line 5130
    jal	glGetHistogramParameterivEXT
    # Line 5129
    sw	$at,4920($zero)
    ld	$gp,16($sp)
    # Line 5132
    ld	$ra,0($sp)
    # Line 5131
    sw	$s8,4920($zero)
    # Line 5132
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetHistogramParameterivEXT

# Function: __glce_GetMinmaxEXT
# Declared: Line 5137 (Source lines: 5138-5146)
# Address: 0x0dbcc838 - 0x0dbcc884 (Size: 76 bytes, Frame: 208)
.globl __glce_GetMinmaxEXT
.ent __glce_GetMinmaxEXT
__glce_GetMinmaxEXT:
    # Line 5138
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 5142
    lw	$s8,4924($zero)
    sd	$gp,16($sp)
    # Line 5143
    lw	$at,__glCurrentContext
    # Line 5138
    lui	$v0,0x3
    addiu	$v0,$v0,7776
    addu	$gp,$t9,$v0
    # Line 5144
    # lw $t9, -16396($gp) # &glGetMinmaxEXT
    # Line 5143
    lw	$at,10524($at)
    sd	$ra,0($sp)
    # Line 5144
    jal	glGetMinmaxEXT
    # Line 5143
    sw	$at,4924($zero)
    ld	$gp,16($sp)
    # Line 5146
    ld	$ra,0($sp)
    # Line 5145
    sw	$s8,4924($zero)
    # Line 5146
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_GetMinmaxEXT

# Function: __glce_GetMinmaxParameterfvEXT
# Declared: Line 5151 (Source lines: 5152-5160)
# Address: 0x0dbcc884 - 0x0dbcc8d0 (Size: 76 bytes, Frame: 192)
.globl __glce_GetMinmaxParameterfvEXT
.ent __glce_GetMinmaxParameterfvEXT
__glce_GetMinmaxParameterfvEXT:
    # Line 5152
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5156
    lw	$s8,4928($zero)
    sd	$gp,16($sp)
    # Line 5157
    lw	$at,__glCurrentContext
    # Line 5152
    lui	$v0,0x3
    addiu	$v0,$v0,7700
    addu	$gp,$t9,$v0
    # Line 5158
    # lw $t9, -16392($gp) # &glGetMinmaxParameterfvEXT
    # Line 5157
    lw	$at,10528($at)
    sd	$ra,0($sp)
    # Line 5158
    jal	glGetMinmaxParameterfvEXT
    # Line 5157
    sw	$at,4928($zero)
    ld	$gp,16($sp)
    # Line 5160
    ld	$ra,0($sp)
    # Line 5159
    sw	$s8,4928($zero)
    # Line 5160
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetMinmaxParameterfvEXT

# Function: __glce_GetMinmaxParameterivEXT
# Declared: Line 5165 (Source lines: 5166-5174)
# Address: 0x0dbcc8d0 - 0x0dbcc91c (Size: 76 bytes, Frame: 192)
.globl __glce_GetMinmaxParameterivEXT
.ent __glce_GetMinmaxParameterivEXT
__glce_GetMinmaxParameterivEXT:
    # Line 5166
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5170
    lw	$s8,4932($zero)
    sd	$gp,16($sp)
    # Line 5171
    lw	$at,__glCurrentContext
    # Line 5166
    lui	$v0,0x3
    addiu	$v0,$v0,7624
    addu	$gp,$t9,$v0
    # Line 5172
    # lw $t9, -16388($gp) # &glGetMinmaxParameterivEXT
    # Line 5171
    lw	$at,10532($at)
    sd	$ra,0($sp)
    # Line 5172
    jal	glGetMinmaxParameterivEXT
    # Line 5171
    sw	$at,4932($zero)
    ld	$gp,16($sp)
    # Line 5174
    ld	$ra,0($sp)
    # Line 5173
    sw	$s8,4932($zero)
    # Line 5174
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetMinmaxParameterivEXT

# Function: __glce_HistogramEXT
# Declared: Line 5179 (Source lines: 5180-5190)
# Address: 0x0dbcc91c - 0x0dbcc9a8 (Size: 140 bytes, Frame: 224)
.globl __glce_HistogramEXT
.ent __glce_HistogramEXT
__glce_HistogramEXT:
    # Line 5180
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5182
    lw	$at,__glCurrentContext
    # Line 5180
    lui	$v0,0x3
    addiu	$v0,$v0,7548
    addu	$gp,$t9,$v0
    # Line 5184
    lw	$v0,4936($zero)
    # Line 5186
    # lw $t9, -16384($gp) # &glHistogramEXT
    sd	$at,32($sp)
    # Line 5185
    lw	$at,6416($at)
    sd	$v0,24($sp)
    # Line 5186
    jal	glHistogramEXT
    # Line 5185
    sw	$at,4936($zero)
    ld	$a3,40($sp)
    # Line 5188
    ld	$a2,48($sp)
    # Line 5187
    ld	$v1,32($sp)
    # Line 5188
    ld	$a1,56($sp)
    # lw $t9, -16384($gp) # &glHistogramEXT
    # Line 5187
    lw	$v1,10536($v1)
    # Line 5188
    move	$a0,$s8
    jal	glHistogramEXT
    # Line 5187
    sw	$v1,4936($zero)
    ld	$gp,16($sp)
    # Line 5190
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5189
    sw	$a0,4936($zero)
.end __glce_HistogramEXT

# Function: __glce_MinmaxEXT
# Declared: Line 5195 (Source lines: 5196-5206)
# Address: 0x0dbcc9a8 - 0x0dbcca2c (Size: 132 bytes, Frame: 224)
.globl __glce_MinmaxEXT
.ent __glce_MinmaxEXT
__glce_MinmaxEXT:
    # Line 5196
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5198
    lw	$at,__glCurrentContext
    # Line 5196
    lui	$v0,0x3
    addiu	$v0,$v0,7408
    addu	$gp,$t9,$v0
    # Line 5200
    lw	$v0,4940($zero)
    # Line 5202
    # lw $t9, -16380($gp) # &glMinmaxEXT
    sd	$at,32($sp)
    # Line 5201
    lw	$at,6420($at)
    sd	$v0,24($sp)
    # Line 5202
    jal	glMinmaxEXT
    # Line 5201
    sw	$at,4940($zero)
    ld	$a2,40($sp)
    # Line 5203
    ld	$v1,32($sp)
    # Line 5204
    ld	$a1,48($sp)
    # lw $t9, -16380($gp) # &glMinmaxEXT
    # Line 5203
    lw	$v1,10540($v1)
    # Line 5204
    move	$a0,$s8
    jal	glMinmaxEXT
    # Line 5203
    sw	$v1,4940($zero)
    ld	$gp,16($sp)
    # Line 5206
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5205
    sw	$a0,4940($zero)
.end __glce_MinmaxEXT

# Function: __glce_ResetHistogramEXT
# Declared: Line 5211 (Source lines: 5212-5222)
# Address: 0x0dbcca2c - 0x0dbccaa0 (Size: 116 bytes, Frame: 192)
.globl __glce_ResetHistogramEXT
.ent __glce_ResetHistogramEXT
__glce_ResetHistogramEXT:
    # Line 5212
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5214
    lw	$at,__glCurrentContext
    # Line 5212
    lui	$v0,0x3
    addiu	$v0,$v0,7276
    addu	$gp,$t9,$v0
    # Line 5216
    lw	$v0,4944($zero)
    # Line 5218
    # lw $t9, -16376($gp) # &glResetHistogramEXT
    sd	$at,32($sp)
    # Line 5217
    lw	$at,6424($at)
    sd	$v0,24($sp)
    # Line 5218
    jal	glResetHistogramEXT
    # Line 5217
    sw	$at,4944($zero)
    # Line 5219
    ld	$v1,32($sp)
    # Line 5220
    # lw $t9, -16376($gp) # &glResetHistogramEXT
    # Line 5219
    lw	$v1,10544($v1)
    # Line 5220
    move	$a0,$s8
    jal	glResetHistogramEXT
    # Line 5219
    sw	$v1,4944($zero)
    ld	$gp,16($sp)
    # Line 5222
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5221
    sw	$a0,4944($zero)
.end __glce_ResetHistogramEXT

# Function: __glce_ResetMinmaxEXT
# Declared: Line 5227 (Source lines: 5228-5238)
# Address: 0x0dbccaa0 - 0x0dbccb14 (Size: 116 bytes, Frame: 192)
.globl __glce_ResetMinmaxEXT
.ent __glce_ResetMinmaxEXT
__glce_ResetMinmaxEXT:
    # Line 5228
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5230
    lw	$at,__glCurrentContext
    # Line 5228
    lui	$v0,0x3
    addiu	$v0,$v0,7160
    addu	$gp,$t9,$v0
    # Line 5232
    lw	$v0,4948($zero)
    # Line 5234
    # lw $t9, -16372($gp) # &glResetMinmaxEXT
    sd	$at,32($sp)
    # Line 5233
    lw	$at,6428($at)
    sd	$v0,24($sp)
    # Line 5234
    jal	glResetMinmaxEXT
    # Line 5233
    sw	$at,4948($zero)
    # Line 5235
    ld	$v1,32($sp)
    # Line 5236
    # lw $t9, -16372($gp) # &glResetMinmaxEXT
    # Line 5235
    lw	$v1,10548($v1)
    # Line 5236
    move	$a0,$s8
    jal	glResetMinmaxEXT
    # Line 5235
    sw	$v1,4948($zero)
    ld	$gp,16($sp)
    # Line 5238
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5237
    sw	$a0,4948($zero)
.end __glce_ResetMinmaxEXT

# Function: __glce_TexImage3DEXT
# Declared: Line 5243 (Source lines: 5244-5254)
# Address: 0x0dbccb14 - 0x0dbccbe8 (Size: 212 bytes, Frame: 192)
.globl __glce_TexImage3DEXT
.ent __glce_TexImage3DEXT
__glce_TexImage3DEXT:
    # Line 5244
    addiu	$sp,$sp,-192
    sd	$a7,72($sp)
    sd	$a6,80($sp)
    sd	$a5,88($sp)
    sd	$a4,96($sp)
    sd	$a3,104($sp)
    sd	$a2,112($sp)
    sd	$a1,120($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 5250
    lw	$v0,204($sp)
    lw	$at,196($sp)
    sd	$ra,16($sp)
    sd	$v0,56($sp)
    sd	$at,48($sp)
    sd	$gp,32($sp)
    # Line 5244
    lui	$t0,0x3
    addiu	$t0,$t0,7044
    # Line 5246
    lw	$v1,__glCurrentContext
    # Line 5244
    addu	$gp,$t9,$t0
    # Line 5248
    lw	$t0,4952($zero)
    sd	$v1,64($sp)
    # Line 5249
    lw	$v1,6432($v1)
    sd	$t0,40($sp)
    # Line 5250
    # lw $t9, -16368($gp) # &glTexImage3DEXT
    # Line 5249
    sw	$v1,4952($zero)
    # Line 5250
    sw	$v0,12($sp)
    jal	glTexImage3DEXT
    sw	$at,4($sp)
    ld	$a7,72($sp)
    # Line 5252
    ld	$a6,80($sp)
    ld	$a5,88($sp)
    ld	$a4,96($sp)
    ld	$a3,104($sp)
    ld	$a2,112($sp)
    ld	$a1,120($sp)
    # Line 5251
    ld	$t3,64($sp)
    # Line 5252
    move	$a0,$s8
    ld	$t1,48($sp)
    # Line 5251
    lw	$t3,10552($t3)
    # Line 5252
    ld	$t2,56($sp)
    # lw $t9, -16368($gp) # &glTexImage3DEXT
    # Line 5251
    sw	$t3,4952($zero)
    # Line 5252
    sw	$t2,12($sp)
    jal	glTexImage3DEXT
    sw	$t1,4($sp)
    ld	$s8,40($sp)
    ld	$gp,32($sp)
    # Line 5254
    ld	$ra,16($sp)
    # Line 5253
    sw	$s8,4952($zero)
    # Line 5254
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glce_TexImage3DEXT

# Function: __glce_TexSubImage3DEXT
# Declared: Line 5259 (Source lines: 5260-5270)
# Address: 0x0dbccbe8 - 0x0dbcccd0 (Size: 232 bytes, Frame: 224)
.globl __glce_TexSubImage3DEXT
.ent __glce_TexSubImage3DEXT
__glce_TexSubImage3DEXT:
    # Line 5260
    addiu	$sp,$sp,-224
    sd	$a7,96($sp)
    sd	$a6,104($sp)
    sd	$a5,112($sp)
    sd	$a4,120($sp)
    sd	$a3,128($sp)
    sd	$a2,136($sp)
    sd	$a1,144($sp)
    sd	$s8,40($sp)
    move	$s8,$a0
    sd	$ra,32($sp)
    # Line 5266
    lw	$v1,244($sp)
    lw	$v0,236($sp)
    lw	$at,228($sp)
    sd	$v1,80($sp)
    sd	$v0,72($sp)
    sd	$at,64($sp)
    sd	$gp,48($sp)
    # Line 5260
    lui	$t1,0x3
    addiu	$t1,$t1,6832
    # Line 5262
    lw	$t0,__glCurrentContext
    # Line 5260
    addu	$gp,$t9,$t1
    # Line 5264
    lw	$t1,4956($zero)
    sd	$t0,88($sp)
    # Line 5265
    lw	$t0,6436($t0)
    sd	$t1,56($sp)
    # Line 5266
    # lw $t9, -16364($gp) # &glTexSubImage3DEXT
    # Line 5265
    sw	$t0,4956($zero)
    # Line 5266
    sw	$v1,20($sp)
    sw	$v0,12($sp)
    jal	glTexSubImage3DEXT
    sw	$at,4($sp)
    ld	$a7,96($sp)
    # Line 5268
    ld	$a6,104($sp)
    ld	$a5,112($sp)
    ld	$a4,120($sp)
    ld	$a3,128($sp)
    ld	$a2,136($sp)
    ld	$a1,144($sp)
    move	$a0,$s8
    # Line 5267
    ld	$ra,88($sp)
    # Line 5268
    ld	$t2,64($sp)
    # lw $t9, -16364($gp) # &glTexSubImage3DEXT
    # Line 5267
    lw	$ra,10556($ra)
    # Line 5268
    ld	$t8,80($sp)
    ld	$t3,72($sp)
    # Line 5267
    sw	$ra,4956($zero)
    # Line 5268
    sw	$t8,20($sp)
    sw	$t3,12($sp)
    jal	glTexSubImage3DEXT
    sw	$t2,4($sp)
    ld	$gp,48($sp)
    # Line 5270
    ld	$s8,40($sp)
    ld	$ra,32($sp)
    ld	$at,56($sp)
    addiu	$sp,$sp,224
    jr	$ra
    # Line 5269
    sw	$at,4956($zero)
.end __glce_TexSubImage3DEXT

# Function: __glce_ColorPointerEXT
# Declared: Line 5276 (Source lines: 5277-5285)
# Address: 0x0dbcccd0 - 0x0dbccd1c (Size: 76 bytes, Frame: 208)
.globl __glce_ColorPointerEXT
.ent __glce_ColorPointerEXT
__glce_ColorPointerEXT:
    # Line 5277
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 5281
    lw	$s8,4964($zero)
    sd	$gp,16($sp)
    # Line 5282
    lw	$at,__glCurrentContext
    # Line 5277
    lui	$v0,0x3
    addiu	$v0,$v0,6600
    addu	$gp,$t9,$v0
    # Line 5283
    # lw $t9, -16352($gp) # &glColorPointerEXT
    # Line 5282
    lw	$at,10564($at)
    sd	$ra,0($sp)
    # Line 5283
    jal	glColorPointerEXT
    # Line 5282
    sw	$at,4964($zero)
    ld	$gp,16($sp)
    # Line 5285
    ld	$ra,0($sp)
    # Line 5284
    sw	$s8,4964($zero)
    # Line 5285
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_ColorPointerEXT

# Function: __glce_EdgeFlagPointerEXT
# Declared: Line 5291 (Source lines: 5292-5300)
# Address: 0x0dbccd1c - 0x0dbccd68 (Size: 76 bytes, Frame: 192)
.globl __glce_EdgeFlagPointerEXT
.ent __glce_EdgeFlagPointerEXT
__glce_EdgeFlagPointerEXT:
    # Line 5292
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5296
    lw	$s8,4972($zero)
    sd	$gp,16($sp)
    # Line 5297
    lw	$at,__glCurrentContext
    # Line 5292
    lui	$v0,0x3
    addiu	$v0,$v0,6524
    addu	$gp,$t9,$v0
    # Line 5298
    # lw $t9, -16344($gp) # &glEdgeFlagPointerEXT
    # Line 5297
    lw	$at,10572($at)
    sd	$ra,0($sp)
    # Line 5298
    jal	glEdgeFlagPointerEXT
    # Line 5297
    sw	$at,4972($zero)
    ld	$gp,16($sp)
    # Line 5300
    ld	$ra,0($sp)
    # Line 5299
    sw	$s8,4972($zero)
    # Line 5300
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_EdgeFlagPointerEXT

# Function: __glce_GetPointervEXT
# Declared: Line 5305 (Source lines: 5306-5314)
# Address: 0x0dbccd68 - 0x0dbccdb4 (Size: 76 bytes, Frame: 48)
.globl __glce_GetPointervEXT
.ent __glce_GetPointervEXT
__glce_GetPointervEXT:
    # Line 5306
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5310
    lw	$s8,4976($zero)
    sd	$gp,16($sp)
    # Line 5311
    lw	$at,__glCurrentContext
    # Line 5306
    lui	$v0,0x3
    addiu	$v0,$v0,6448
    addu	$gp,$t9,$v0
    # Line 5312
    # lw $t9, -16340($gp) # &glGetPointervEXT
    # Line 5311
    lw	$at,10576($at)
    sd	$ra,0($sp)
    # Line 5312
    jal	glGetPointervEXT
    # Line 5311
    sw	$at,4976($zero)
    ld	$gp,16($sp)
    # Line 5314
    ld	$ra,0($sp)
    # Line 5313
    sw	$s8,4976($zero)
    # Line 5314
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetPointervEXT

# Function: __glce_IndexPointerEXT
# Declared: Line 5319 (Source lines: 5320-5328)
# Address: 0x0dbccdb4 - 0x0dbcce00 (Size: 76 bytes, Frame: 192)
.globl __glce_IndexPointerEXT
.ent __glce_IndexPointerEXT
__glce_IndexPointerEXT:
    # Line 5320
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5324
    lw	$s8,4980($zero)
    sd	$gp,16($sp)
    # Line 5325
    lw	$at,__glCurrentContext
    # Line 5320
    lui	$v0,0x3
    addiu	$v0,$v0,6372
    addu	$gp,$t9,$v0
    # Line 5326
    # lw $t9, -16336($gp) # &glIndexPointerEXT
    # Line 5325
    lw	$at,10580($at)
    sd	$ra,0($sp)
    # Line 5326
    jal	glIndexPointerEXT
    # Line 5325
    sw	$at,4980($zero)
    ld	$gp,16($sp)
    # Line 5328
    ld	$ra,0($sp)
    # Line 5327
    sw	$s8,4980($zero)
    # Line 5328
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_IndexPointerEXT

# Function: __glce_NormalPointerEXT
# Declared: Line 5333 (Source lines: 5334-5342)
# Address: 0x0dbcce00 - 0x0dbcce4c (Size: 76 bytes, Frame: 192)
.globl __glce_NormalPointerEXT
.ent __glce_NormalPointerEXT
__glce_NormalPointerEXT:
    # Line 5334
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5338
    lw	$s8,4984($zero)
    sd	$gp,16($sp)
    # Line 5339
    lw	$at,__glCurrentContext
    # Line 5334
    lui	$v0,0x3
    addiu	$v0,$v0,6296
    addu	$gp,$t9,$v0
    # Line 5340
    # lw $t9, -16332($gp) # &glNormalPointerEXT
    # Line 5339
    lw	$at,10584($at)
    sd	$ra,0($sp)
    # Line 5340
    jal	glNormalPointerEXT
    # Line 5339
    sw	$at,4984($zero)
    ld	$gp,16($sp)
    # Line 5342
    ld	$ra,0($sp)
    # Line 5341
    sw	$s8,4984($zero)
    # Line 5342
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_NormalPointerEXT

# Function: __glce_TexCoordPointerEXT
# Declared: Line 5347 (Source lines: 5348-5356)
# Address: 0x0dbcce4c - 0x0dbcce98 (Size: 76 bytes, Frame: 208)
.globl __glce_TexCoordPointerEXT
.ent __glce_TexCoordPointerEXT
__glce_TexCoordPointerEXT:
    # Line 5348
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 5352
    lw	$s8,4988($zero)
    sd	$gp,16($sp)
    # Line 5353
    lw	$at,__glCurrentContext
    # Line 5348
    lui	$v0,0x3
    addiu	$v0,$v0,6220
    addu	$gp,$t9,$v0
    # Line 5354
    # lw $t9, -16328($gp) # &glTexCoordPointerEXT
    # Line 5353
    lw	$at,10588($at)
    sd	$ra,0($sp)
    # Line 5354
    jal	glTexCoordPointerEXT
    # Line 5353
    sw	$at,4988($zero)
    ld	$gp,16($sp)
    # Line 5356
    ld	$ra,0($sp)
    # Line 5355
    sw	$s8,4988($zero)
    # Line 5356
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_TexCoordPointerEXT

# Function: __glce_VertexPointerEXT
# Declared: Line 5361 (Source lines: 5362-5370)
# Address: 0x0dbcce98 - 0x0dbccee4 (Size: 76 bytes, Frame: 208)
.globl __glce_VertexPointerEXT
.ent __glce_VertexPointerEXT
__glce_VertexPointerEXT:
    # Line 5362
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 5366
    lw	$s8,4992($zero)
    sd	$gp,16($sp)
    # Line 5367
    lw	$at,__glCurrentContext
    # Line 5362
    lui	$v0,0x3
    addiu	$v0,$v0,6144
    addu	$gp,$t9,$v0
    # Line 5368
    # lw $t9, -16324($gp) # &glVertexPointerEXT
    # Line 5367
    lw	$at,10592($at)
    sd	$ra,0($sp)
    # Line 5368
    jal	glVertexPointerEXT
    # Line 5367
    sw	$at,4992($zero)
    ld	$gp,16($sp)
    # Line 5370
    ld	$ra,0($sp)
    # Line 5369
    sw	$s8,4992($zero)
    # Line 5370
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_VertexPointerEXT

# Function: __glce_AreTexturesResidentEXT
# Declared: Line 5375 (Source lines: 5376-5385)
# Address: 0x0dbccee4 - 0x0dbccf34 (Size: 80 bytes, Frame: 192)
.globl __glce_AreTexturesResidentEXT
.ent __glce_AreTexturesResidentEXT
__glce_AreTexturesResidentEXT:
    # Line 5376
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5381
    lw	$s8,4996($zero)
    sd	$gp,16($sp)
    # Line 5382
    lw	$at,__glCurrentContext
    # Line 5376
    lui	$v0,0x3
    addiu	$v0,$v0,6068
    addu	$gp,$t9,$v0
    # Line 5383
    # lw $t9, -16320($gp) # &glAreTexturesResidentEXT
    # Line 5382
    lw	$at,10596($at)
    sd	$ra,0($sp)
    # Line 5383
    jal	glAreTexturesResidentEXT
    # Line 5382
    sw	$at,4996($zero)
    # Line 5385
    andi	$v0,$v0,0xff
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    # Line 5384
    sw	$s8,4996($zero)
    # Line 5385
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_AreTexturesResidentEXT

# Function: __glce_BindTextureEXT
# Declared: Line 5391 (Source lines: 5392-5402)
# Address: 0x0dbccf34 - 0x0dbccfb0 (Size: 124 bytes, Frame: 192)
.globl __glce_BindTextureEXT
.ent __glce_BindTextureEXT
__glce_BindTextureEXT:
    # Line 5392
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5394
    lw	$at,__glCurrentContext
    # Line 5392
    lui	$v0,0x3
    addiu	$v0,$v0,5988
    addu	$gp,$t9,$v0
    # Line 5396
    lw	$v0,5000($zero)
    # Line 5398
    # lw $t9, -16316($gp) # &glBindTextureEXT
    sd	$at,32($sp)
    # Line 5397
    lw	$at,6480($at)
    sd	$v0,24($sp)
    # Line 5398
    jal	glBindTextureEXT
    # Line 5397
    sw	$at,5000($zero)
    # Line 5399
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 5400
    # lw $t9, -16316($gp) # &glBindTextureEXT
    # Line 5399
    lw	$v1,10600($v1)
    # Line 5400
    move	$a0,$s8
    jal	glBindTextureEXT
    # Line 5399
    sw	$v1,5000($zero)
    ld	$gp,16($sp)
    # Line 5402
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5401
    sw	$a0,5000($zero)
.end __glce_BindTextureEXT

# Function: __glce_DeleteTexturesEXT
# Declared: Line 5407 (Source lines: 5408-5416)
# Address: 0x0dbccfb0 - 0x0dbccffc (Size: 76 bytes, Frame: 48)
.globl __glce_DeleteTexturesEXT
.ent __glce_DeleteTexturesEXT
__glce_DeleteTexturesEXT:
    # Line 5408
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5412
    lw	$s8,5004($zero)
    sd	$gp,16($sp)
    # Line 5413
    lw	$at,__glCurrentContext
    # Line 5408
    lui	$v0,0x3
    addiu	$v0,$v0,5864
    addu	$gp,$t9,$v0
    # Line 5414
    # lw $t9, -16312($gp) # &glDeleteTexturesEXT
    # Line 5413
    lw	$at,10604($at)
    sd	$ra,0($sp)
    # Line 5414
    jal	glDeleteTexturesEXT
    # Line 5413
    sw	$at,5004($zero)
    ld	$gp,16($sp)
    # Line 5416
    ld	$ra,0($sp)
    # Line 5415
    sw	$s8,5004($zero)
    # Line 5416
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_DeleteTexturesEXT

# Function: __glce_GenTexturesEXT
# Declared: Line 5421 (Source lines: 5422-5430)
# Address: 0x0dbccffc - 0x0dbcd048 (Size: 76 bytes, Frame: 48)
.globl __glce_GenTexturesEXT
.ent __glce_GenTexturesEXT
__glce_GenTexturesEXT:
    # Line 5422
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5426
    lw	$s8,5008($zero)
    sd	$gp,16($sp)
    # Line 5427
    lw	$at,__glCurrentContext
    # Line 5422
    lui	$v0,0x3
    addiu	$v0,$v0,5788
    addu	$gp,$t9,$v0
    # Line 5428
    # lw $t9, -16308($gp) # &glGenTexturesEXT
    # Line 5427
    lw	$at,10608($at)
    sd	$ra,0($sp)
    # Line 5428
    jal	glGenTexturesEXT
    # Line 5427
    sw	$at,5008($zero)
    ld	$gp,16($sp)
    # Line 5430
    ld	$ra,0($sp)
    # Line 5429
    sw	$s8,5008($zero)
    # Line 5430
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GenTexturesEXT

# Function: __glce_IsTextureEXT
# Declared: Line 5435 (Source lines: 5436-5445)
# Address: 0x0dbcd048 - 0x0dbcd098 (Size: 80 bytes, Frame: 48)
.globl __glce_IsTextureEXT
.ent __glce_IsTextureEXT
__glce_IsTextureEXT:
    # Line 5436
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5441
    lw	$s8,5012($zero)
    sd	$gp,16($sp)
    # Line 5442
    lw	$at,__glCurrentContext
    # Line 5436
    lui	$v0,0x3
    addiu	$v0,$v0,5712
    addu	$gp,$t9,$v0
    # Line 5443
    # lw $t9, -16304($gp) # &glIsTextureEXT
    # Line 5442
    lw	$at,10612($at)
    sd	$ra,0($sp)
    # Line 5443
    jal	glIsTextureEXT
    # Line 5442
    sw	$at,5012($zero)
    # Line 5445
    andi	$v0,$v0,0xff
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    # Line 5444
    sw	$s8,5012($zero)
    # Line 5445
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_IsTextureEXT

# Function: __glce_PrioritizeTexturesEXT
# Declared: Line 5451 (Source lines: 5452-5462)
# Address: 0x0dbcd098 - 0x0dbcd11c (Size: 132 bytes, Frame: 224)
.globl __glce_PrioritizeTexturesEXT
.ent __glce_PrioritizeTexturesEXT
__glce_PrioritizeTexturesEXT:
    # Line 5452
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5454
    lw	$at,__glCurrentContext
    # Line 5452
    lui	$v0,0x3
    addiu	$v0,$v0,5632
    addu	$gp,$t9,$v0
    # Line 5456
    lw	$v0,5016($zero)
    # Line 5458
    # lw $t9, -16300($gp) # &glPrioritizeTexturesEXT
    sd	$at,32($sp)
    # Line 5457
    lw	$at,6496($at)
    sd	$v0,24($sp)
    # Line 5458
    jal	glPrioritizeTexturesEXT
    # Line 5457
    sw	$at,5016($zero)
    ld	$a2,40($sp)
    # Line 5459
    ld	$v1,32($sp)
    # Line 5460
    ld	$a1,48($sp)
    # lw $t9, -16300($gp) # &glPrioritizeTexturesEXT
    # Line 5459
    lw	$v1,10616($v1)
    # Line 5460
    move	$a0,$s8
    jal	glPrioritizeTexturesEXT
    # Line 5459
    sw	$v1,5016($zero)
    ld	$gp,16($sp)
    # Line 5462
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5461
    sw	$a0,5016($zero)
.end __glce_PrioritizeTexturesEXT

# Function: __glce_CopyTexImage1DEXT
# Declared: Line 5467 (Source lines: 5468-5478)
# Address: 0x0dbcd11c - 0x0dbcd1c0 (Size: 164 bytes, Frame: 160)
.globl __glce_CopyTexImage1DEXT
.ent __glce_CopyTexImage1DEXT
__glce_CopyTexImage1DEXT:
    # Line 5468
    addiu	$sp,$sp,-160
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    sd	$a3,64($sp)
    sd	$a2,72($sp)
    sd	$a1,80($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5470
    lw	$at,__glCurrentContext
    # Line 5468
    lui	$v0,0x3
    addiu	$v0,$v0,5500
    addu	$gp,$t9,$v0
    # Line 5472
    lw	$v0,5020($zero)
    # Line 5474
    # lw $t9, -16296($gp) # &glCopyTexImage1DEXT
    sd	$at,32($sp)
    # Line 5473
    lw	$at,6500($at)
    sd	$v0,24($sp)
    # Line 5474
    jal	glCopyTexImage1DEXT
    # Line 5473
    sw	$at,5020($zero)
    ld	$a6,40($sp)
    # Line 5476
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a2,72($sp)
    # Line 5475
    ld	$v1,32($sp)
    # Line 5476
    ld	$a1,80($sp)
    # lw $t9, -16296($gp) # &glCopyTexImage1DEXT
    # Line 5475
    lw	$v1,10620($v1)
    # Line 5476
    move	$a0,$s8
    jal	glCopyTexImage1DEXT
    # Line 5475
    sw	$v1,5020($zero)
    ld	$gp,16($sp)
    # Line 5478
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 5477
    sw	$a0,5020($zero)
.end __glce_CopyTexImage1DEXT

# Function: __glce_CopyTexImage2DEXT
# Declared: Line 5483 (Source lines: 5484-5494)
# Address: 0x0dbcd1c0 - 0x0dbcd26c (Size: 172 bytes, Frame: 160)
.globl __glce_CopyTexImage2DEXT
.ent __glce_CopyTexImage2DEXT
__glce_CopyTexImage2DEXT:
    # Line 5484
    addiu	$sp,$sp,-160
    sd	$a7,40($sp)
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5486
    lw	$at,__glCurrentContext
    # Line 5484
    lui	$v0,0x3
    addiu	$v0,$v0,5336
    addu	$gp,$t9,$v0
    # Line 5488
    lw	$v0,5024($zero)
    # Line 5490
    # lw $t9, -16292($gp) # &glCopyTexImage2DEXT
    sd	$at,32($sp)
    # Line 5489
    lw	$at,6504($at)
    sd	$v0,24($sp)
    # Line 5490
    jal	glCopyTexImage2DEXT
    # Line 5489
    sw	$at,5024($zero)
    ld	$a7,40($sp)
    # Line 5492
    ld	$a6,48($sp)
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # Line 5491
    ld	$v1,32($sp)
    # Line 5492
    ld	$a1,88($sp)
    # lw $t9, -16292($gp) # &glCopyTexImage2DEXT
    # Line 5491
    lw	$v1,10624($v1)
    # Line 5492
    move	$a0,$s8
    jal	glCopyTexImage2DEXT
    # Line 5491
    sw	$v1,5024($zero)
    ld	$gp,16($sp)
    # Line 5494
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 5493
    sw	$a0,5024($zero)
.end __glce_CopyTexImage2DEXT

# Function: __glce_CopyTexSubImage1DEXT
# Declared: Line 5499 (Source lines: 5500-5510)
# Address: 0x0dbcd26c - 0x0dbcd308 (Size: 156 bytes, Frame: 128)
.globl __glce_CopyTexSubImage1DEXT
.ent __glce_CopyTexSubImage1DEXT
__glce_CopyTexSubImage1DEXT:
    # Line 5500
    addiu	$sp,$sp,-128
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5502
    lw	$at,__glCurrentContext
    # Line 5500
    lui	$v0,0x3
    addiu	$v0,$v0,5164
    addu	$gp,$t9,$v0
    # Line 5504
    lw	$v0,5028($zero)
    # Line 5506
    # lw $t9, -16288($gp) # &glCopyTexSubImage1DEXT
    sd	$at,32($sp)
    # Line 5505
    lw	$at,6508($at)
    sd	$v0,24($sp)
    # Line 5506
    jal	glCopyTexSubImage1DEXT
    # Line 5505
    sw	$at,5028($zero)
    ld	$a5,40($sp)
    # Line 5508
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # Line 5507
    ld	$v1,32($sp)
    # Line 5508
    ld	$a1,72($sp)
    # lw $t9, -16288($gp) # &glCopyTexSubImage1DEXT
    # Line 5507
    lw	$v1,10628($v1)
    # Line 5508
    move	$a0,$s8
    jal	glCopyTexSubImage1DEXT
    # Line 5507
    sw	$v1,5028($zero)
    ld	$gp,16($sp)
    # Line 5510
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 5509
    sw	$a0,5028($zero)
.end __glce_CopyTexSubImage1DEXT

# Function: __glce_CopyTexSubImage2DEXT
# Declared: Line 5515 (Source lines: 5516-5526)
# Address: 0x0dbcd308 - 0x0dbcd3b4 (Size: 172 bytes, Frame: 160)
.globl __glce_CopyTexSubImage2DEXT
.ent __glce_CopyTexSubImage2DEXT
__glce_CopyTexSubImage2DEXT:
    # Line 5516
    addiu	$sp,$sp,-160
    sd	$a7,40($sp)
    sd	$a6,48($sp)
    sd	$a5,56($sp)
    sd	$a4,64($sp)
    sd	$a3,72($sp)
    sd	$a2,80($sp)
    sd	$a1,88($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5518
    lw	$at,__glCurrentContext
    # Line 5516
    lui	$v0,0x3
    addiu	$v0,$v0,5008
    addu	$gp,$t9,$v0
    # Line 5520
    lw	$v0,5032($zero)
    # Line 5522
    # lw $t9, -16284($gp) # &glCopyTexSubImage2DEXT
    sd	$at,32($sp)
    # Line 5521
    lw	$at,6512($at)
    sd	$v0,24($sp)
    # Line 5522
    jal	glCopyTexSubImage2DEXT
    # Line 5521
    sw	$at,5032($zero)
    ld	$a7,40($sp)
    # Line 5524
    ld	$a6,48($sp)
    ld	$a5,56($sp)
    ld	$a4,64($sp)
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    # Line 5523
    ld	$v1,32($sp)
    # Line 5524
    ld	$a1,88($sp)
    # lw $t9, -16284($gp) # &glCopyTexSubImage2DEXT
    # Line 5523
    lw	$v1,10632($v1)
    # Line 5524
    move	$a0,$s8
    jal	glCopyTexSubImage2DEXT
    # Line 5523
    sw	$v1,5032($zero)
    ld	$gp,16($sp)
    # Line 5526
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 5525
    sw	$a0,5032($zero)
.end __glce_CopyTexSubImage2DEXT

# Function: __glce_CopyTexSubImage3DEXT
# Declared: Line 5531 (Source lines: 5532-5542)
# Address: 0x0dbcd3b4 - 0x0dbcd474 (Size: 192 bytes, Frame: 192)
.globl __glce_CopyTexSubImage3DEXT
.ent __glce_CopyTexSubImage3DEXT
__glce_CopyTexSubImage3DEXT:
    # Line 5532
    addiu	$sp,$sp,-192
    sd	$a7,64($sp)
    sd	$a6,72($sp)
    sd	$a5,80($sp)
    sd	$a4,88($sp)
    sd	$a3,96($sp)
    sd	$a2,104($sp)
    sd	$a1,112($sp)
    sd	$s8,24($sp)
    # Line 5538
    lw	$at,196($sp)
    # Line 5532
    move	$s8,$a0
    sd	$ra,16($sp)
    sd	$at,48($sp)
    sd	$gp,32($sp)
    lui	$v1,0x3
    addiu	$v1,$v1,4836
    # Line 5534
    lw	$v0,__glCurrentContext
    # Line 5532
    addu	$gp,$t9,$v1
    # Line 5536
    lw	$v1,5036($zero)
    sd	$v0,56($sp)
    # Line 5537
    lw	$v0,6516($v0)
    # Line 5538
    # lw $t9, -16280($gp) # &glCopyTexSubImage3DEXT
    sd	$v1,40($sp)
    # Line 5537
    sw	$v0,5036($zero)
    # Line 5538
    jal	glCopyTexSubImage3DEXT
    sw	$at,4($sp)
    ld	$a7,64($sp)
    # Line 5540
    ld	$a6,72($sp)
    ld	$a5,80($sp)
    ld	$a4,88($sp)
    ld	$a3,96($sp)
    ld	$a2,104($sp)
    # Line 5539
    ld	$t1,56($sp)
    # Line 5540
    ld	$a1,112($sp)
    move	$a0,$s8
    # Line 5539
    lw	$t1,10636($t1)
    # Line 5540
    # lw $t9, -16280($gp) # &glCopyTexSubImage3DEXT
    ld	$t0,48($sp)
    # Line 5539
    sw	$t1,5036($zero)
    # Line 5540
    jal	glCopyTexSubImage3DEXT
    sw	$t0,4($sp)
    ld	$s8,40($sp)
    ld	$gp,32($sp)
    # Line 5542
    ld	$ra,16($sp)
    # Line 5541
    sw	$s8,5036($zero)
    # Line 5542
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glce_CopyTexSubImage3DEXT

# Function: __glce_ColorPointer
# Declared: Line 5547 (Source lines: 5548-5556)
# Address: 0x0dbcd474 - 0x0dbcd4c0 (Size: 76 bytes, Frame: 192)
.globl __glce_ColorPointer
.ent __glce_ColorPointer
__glce_ColorPointer:
    # Line 5548
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5552
    lw	$s8,5040($zero)
    sd	$gp,16($sp)
    # Line 5553
    lw	$at,__glCurrentContext
    # Line 5548
    lui	$v0,0x3
    addiu	$v0,$v0,4644
    addu	$gp,$t9,$v0
    # Line 5554
    # lw $t9, -16276($gp) # &glColorPointer
    # Line 5553
    lw	$at,10640($at)
    sd	$ra,0($sp)
    # Line 5554
    jal	glColorPointer
    # Line 5553
    sw	$at,5040($zero)
    ld	$gp,16($sp)
    # Line 5556
    ld	$ra,0($sp)
    # Line 5555
    sw	$s8,5040($zero)
    # Line 5556
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_ColorPointer

# Function: __glce_DisableClientState
# Declared: Line 5561 (Source lines: 5562-5570)
# Address: 0x0dbcd4c0 - 0x0dbcd50c (Size: 76 bytes, Frame: 48)
.globl __glce_DisableClientState
.ent __glce_DisableClientState
__glce_DisableClientState:
    # Line 5562
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5566
    lw	$s8,5044($zero)
    sd	$gp,16($sp)
    # Line 5567
    lw	$at,__glCurrentContext
    # Line 5562
    lui	$v0,0x3
    addiu	$v0,$v0,4568
    addu	$gp,$t9,$v0
    # Line 5568
    # lw $t9, -16272($gp) # &glDisableClientState
    # Line 5567
    lw	$at,10644($at)
    sd	$ra,0($sp)
    # Line 5568
    jal	glDisableClientState
    # Line 5567
    sw	$at,5044($zero)
    ld	$gp,16($sp)
    # Line 5570
    ld	$ra,0($sp)
    # Line 5569
    sw	$s8,5044($zero)
    # Line 5570
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_DisableClientState

# Function: __glce_EdgeFlagPointer
# Declared: Line 5576 (Source lines: 5577-5585)
# Address: 0x0dbcd50c - 0x0dbcd558 (Size: 76 bytes, Frame: 48)
.globl __glce_EdgeFlagPointer
.ent __glce_EdgeFlagPointer
__glce_EdgeFlagPointer:
    # Line 5577
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5581
    lw	$s8,5052($zero)
    sd	$gp,16($sp)
    # Line 5582
    lw	$at,__glCurrentContext
    # Line 5577
    lui	$v0,0x3
    addiu	$v0,$v0,4492
    addu	$gp,$t9,$v0
    # Line 5583
    # lw $t9, -16264($gp) # &glEdgeFlagPointer
    # Line 5582
    lw	$at,10652($at)
    sd	$ra,0($sp)
    # Line 5583
    jal	glEdgeFlagPointer
    # Line 5582
    sw	$at,5052($zero)
    ld	$gp,16($sp)
    # Line 5585
    ld	$ra,0($sp)
    # Line 5584
    sw	$s8,5052($zero)
    # Line 5585
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_EdgeFlagPointer

# Function: __glce_EnableClientState
# Declared: Line 5590 (Source lines: 5591-5599)
# Address: 0x0dbcd558 - 0x0dbcd5a4 (Size: 76 bytes, Frame: 48)
.globl __glce_EnableClientState
.ent __glce_EnableClientState
__glce_EnableClientState:
    # Line 5591
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5595
    lw	$s8,5056($zero)
    sd	$gp,16($sp)
    # Line 5596
    lw	$at,__glCurrentContext
    # Line 5591
    lui	$v0,0x3
    addiu	$v0,$v0,4416
    addu	$gp,$t9,$v0
    # Line 5597
    # lw $t9, -16260($gp) # &glEnableClientState
    # Line 5596
    lw	$at,10656($at)
    sd	$ra,0($sp)
    # Line 5597
    jal	glEnableClientState
    # Line 5596
    sw	$at,5056($zero)
    ld	$gp,16($sp)
    # Line 5599
    ld	$ra,0($sp)
    # Line 5598
    sw	$s8,5056($zero)
    # Line 5599
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_EnableClientState

# Function: __glce_IndexPointer
# Declared: Line 5604 (Source lines: 5605-5613)
# Address: 0x0dbcd5a4 - 0x0dbcd5f0 (Size: 76 bytes, Frame: 192)
.globl __glce_IndexPointer
.ent __glce_IndexPointer
__glce_IndexPointer:
    # Line 5605
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5609
    lw	$s8,5060($zero)
    sd	$gp,16($sp)
    # Line 5610
    lw	$at,__glCurrentContext
    # Line 5605
    lui	$v0,0x3
    addiu	$v0,$v0,4340
    addu	$gp,$t9,$v0
    # Line 5611
    # lw $t9, -16256($gp) # &glIndexPointer
    # Line 5610
    lw	$at,10660($at)
    sd	$ra,0($sp)
    # Line 5611
    jal	glIndexPointer
    # Line 5610
    sw	$at,5060($zero)
    ld	$gp,16($sp)
    # Line 5613
    ld	$ra,0($sp)
    # Line 5612
    sw	$s8,5060($zero)
    # Line 5613
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_IndexPointer

# Function: __glce_InterleavedArrays
# Declared: Line 5618 (Source lines: 5619-5627)
# Address: 0x0dbcd5f0 - 0x0dbcd63c (Size: 76 bytes, Frame: 192)
.globl __glce_InterleavedArrays
.ent __glce_InterleavedArrays
__glce_InterleavedArrays:
    # Line 5619
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5623
    lw	$s8,5064($zero)
    sd	$gp,16($sp)
    # Line 5624
    lw	$at,__glCurrentContext
    # Line 5619
    lui	$v0,0x3
    addiu	$v0,$v0,4264
    addu	$gp,$t9,$v0
    # Line 5625
    # lw $t9, -16252($gp) # &glInterleavedArrays
    # Line 5624
    lw	$at,10664($at)
    sd	$ra,0($sp)
    # Line 5625
    jal	glInterleavedArrays
    # Line 5624
    sw	$at,5064($zero)
    ld	$gp,16($sp)
    # Line 5627
    ld	$ra,0($sp)
    # Line 5626
    sw	$s8,5064($zero)
    # Line 5627
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_InterleavedArrays

# Function: __glce_NormalPointer
# Declared: Line 5632 (Source lines: 5633-5641)
# Address: 0x0dbcd63c - 0x0dbcd688 (Size: 76 bytes, Frame: 192)
.globl __glce_NormalPointer
.ent __glce_NormalPointer
__glce_NormalPointer:
    # Line 5633
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5637
    lw	$s8,5068($zero)
    sd	$gp,16($sp)
    # Line 5638
    lw	$at,__glCurrentContext
    # Line 5633
    lui	$v0,0x3
    addiu	$v0,$v0,4188
    addu	$gp,$t9,$v0
    # Line 5639
    # lw $t9, -16248($gp) # &glNormalPointer
    # Line 5638
    lw	$at,10668($at)
    sd	$ra,0($sp)
    # Line 5639
    jal	glNormalPointer
    # Line 5638
    sw	$at,5068($zero)
    ld	$gp,16($sp)
    # Line 5641
    ld	$ra,0($sp)
    # Line 5640
    sw	$s8,5068($zero)
    # Line 5641
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_NormalPointer

# Function: __glce_TexCoordPointer
# Declared: Line 5646 (Source lines: 5647-5655)
# Address: 0x0dbcd688 - 0x0dbcd6d4 (Size: 76 bytes, Frame: 192)
.globl __glce_TexCoordPointer
.ent __glce_TexCoordPointer
__glce_TexCoordPointer:
    # Line 5647
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5651
    lw	$s8,5072($zero)
    sd	$gp,16($sp)
    # Line 5652
    lw	$at,__glCurrentContext
    # Line 5647
    lui	$v0,0x3
    addiu	$v0,$v0,4112
    addu	$gp,$t9,$v0
    # Line 5653
    # lw $t9, -16244($gp) # &glTexCoordPointer
    # Line 5652
    lw	$at,10672($at)
    sd	$ra,0($sp)
    # Line 5653
    jal	glTexCoordPointer
    # Line 5652
    sw	$at,5072($zero)
    ld	$gp,16($sp)
    # Line 5655
    ld	$ra,0($sp)
    # Line 5654
    sw	$s8,5072($zero)
    # Line 5655
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_TexCoordPointer

# Function: __glce_VertexPointer
# Declared: Line 5660 (Source lines: 5661-5669)
# Address: 0x0dbcd6d4 - 0x0dbcd720 (Size: 76 bytes, Frame: 192)
.globl __glce_VertexPointer
.ent __glce_VertexPointer
__glce_VertexPointer:
    # Line 5661
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5665
    lw	$s8,5076($zero)
    sd	$gp,16($sp)
    # Line 5666
    lw	$at,__glCurrentContext
    # Line 5661
    lui	$v0,0x3
    addiu	$v0,$v0,4036
    addu	$gp,$t9,$v0
    # Line 5667
    # lw $t9, -16240($gp) # &glVertexPointer
    # Line 5666
    lw	$at,10676($at)
    sd	$ra,0($sp)
    # Line 5667
    jal	glVertexPointer
    # Line 5666
    sw	$at,5076($zero)
    ld	$gp,16($sp)
    # Line 5669
    ld	$ra,0($sp)
    # Line 5668
    sw	$s8,5076($zero)
    # Line 5669
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_VertexPointer

# Function: __glce_PolygonOffset
# Declared: Line 5674 (Source lines: 5675-5685)
# Address: 0x0dbcd720 - 0x0dbcd79c (Size: 124 bytes, Frame: 192)
.globl __glce_PolygonOffset
.ent __glce_PolygonOffset
__glce_PolygonOffset:
    # Line 5675
    addiu	$sp,$sp,-64
    sdc1	$f13,8($sp)
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,16($sp)
    # Line 5679
    lw	$v0,5080($zero)
    sd	$gp,32($sp)
    # Line 5675
    lui	$v1,0x3
    addiu	$v1,$v1,3960
    sd	$s8,24($sp)
    # Line 5677
    lw	$s8,__glCurrentContext
    # Line 5675
    addu	$gp,$t9,$v1
    # Line 5681
    # lw $t9, -16236($gp) # &glPolygonOffset
    # Line 5680
    lw	$at,6560($s8)
    sd	$v0,40($sp)
    # Line 5681
    jal	glPolygonOffset
    # Line 5680
    sw	$at,5080($zero)
    ldc1	$f13,8($sp)
    # Line 5683
    # lw $t9, -16236($gp) # &glPolygonOffset
    # Line 5682
    lw	$a0,10680($s8)
    # Line 5683
    mov.s	$f12,$f30
    jal	glPolygonOffset
    # Line 5682
    sw	$a0,5080($zero)
    ld	$gp,32($sp)
    # Line 5685
    ld	$s8,24($sp)
    ldc1	$f30,0($sp)
    ld	$ra,16($sp)
    ld	$a1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5684
    sw	$a1,5080($zero)
.end __glce_PolygonOffset

# Function: __glce_Indexub
# Declared: Line 5690 (Source lines: 5691-5701)
# Address: 0x0dbcd79c - 0x0dbcd810 (Size: 116 bytes, Frame: 192)
.globl __glce_Indexub
.ent __glce_Indexub
__glce_Indexub:
    # Line 5691
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5693
    lw	$at,__glCurrentContext
    # Line 5691
    lui	$v0,0x3
    addiu	$v0,$v0,3836
    addu	$gp,$t9,$v0
    # Line 5695
    lw	$v0,5908($zero)
    # Line 5697
    # lw $t9, -16232($gp) # &glIndexub
    sd	$at,32($sp)
    # Line 5696
    lw	$at,7388($at)
    sd	$v0,24($sp)
    # Line 5697
    jal	glIndexub
    # Line 5696
    sw	$at,5908($zero)
    # Line 5698
    ld	$v1,32($sp)
    # Line 5699
    # lw $t9, -16232($gp) # &glIndexub
    # Line 5698
    lw	$v1,11508($v1)
    # Line 5699
    move	$a0,$s8
    jal	glIndexub
    # Line 5698
    sw	$v1,5908($zero)
    ld	$gp,16($sp)
    # Line 5701
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5700
    sw	$a0,5908($zero)
.end __glce_Indexub

# Function: __glce_Indexubv
# Declared: Line 5706 (Source lines: 5707-5717)
# Address: 0x0dbcd810 - 0x0dbcd884 (Size: 116 bytes, Frame: 192)
.globl __glce_Indexubv
.ent __glce_Indexubv
__glce_Indexubv:
    # Line 5707
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5709
    lw	$at,__glCurrentContext
    # Line 5707
    lui	$v0,0x3
    addiu	$v0,$v0,3720
    addu	$gp,$t9,$v0
    # Line 5711
    lw	$v0,5912($zero)
    # Line 5713
    # lw $t9, -16228($gp) # &glIndexubv
    sd	$at,32($sp)
    # Line 5712
    lw	$at,7392($at)
    sd	$v0,24($sp)
    # Line 5713
    jal	glIndexubv
    # Line 5712
    sw	$at,5912($zero)
    # Line 5714
    ld	$v1,32($sp)
    # Line 5715
    # lw $t9, -16228($gp) # &glIndexubv
    # Line 5714
    lw	$v1,11512($v1)
    # Line 5715
    move	$a0,$s8
    jal	glIndexubv
    # Line 5714
    sw	$v1,5912($zero)
    ld	$gp,16($sp)
    # Line 5717
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5716
    sw	$a0,5912($zero)
.end __glce_Indexubv

# Function: __glce_PopClientAttrib
# Declared: Line 5722 (Source lines: 5723-5731)
# Address: 0x0dbcd884 - 0x0dbcd8d0 (Size: 76 bytes, Frame: 32)
.globl __glce_PopClientAttrib
.ent __glce_PopClientAttrib
__glce_PopClientAttrib:
    # Line 5723
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 5727
    lw	$s8,5084($zero)
    sd	$gp,16($sp)
    # Line 5728
    lw	$at,__glCurrentContext
    # Line 5723
    lui	$v0,0x3
    addiu	$v0,$v0,3604
    addu	$gp,$t9,$v0
    # Line 5729
    # lw $t9, -16224($gp) # &glPopClientAttrib
    # Line 5728
    lw	$at,10684($at)
    sd	$ra,0($sp)
    # Line 5729
    jal	glPopClientAttrib
    # Line 5728
    sw	$at,5084($zero)
    ld	$gp,16($sp)
    # Line 5731
    ld	$ra,0($sp)
    # Line 5730
    sw	$s8,5084($zero)
    # Line 5731
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_PopClientAttrib

# Function: __glce_PushClientAttrib
# Declared: Line 5736 (Source lines: 5737-5745)
# Address: 0x0dbcd8d0 - 0x0dbcd91c (Size: 76 bytes, Frame: 48)
.globl __glce_PushClientAttrib
.ent __glce_PushClientAttrib
__glce_PushClientAttrib:
    # Line 5737
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5741
    lw	$s8,5088($zero)
    sd	$gp,16($sp)
    # Line 5742
    lw	$at,__glCurrentContext
    # Line 5737
    lui	$v0,0x3
    addiu	$v0,$v0,3528
    addu	$gp,$t9,$v0
    # Line 5743
    # lw $t9, -16220($gp) # &glPushClientAttrib
    # Line 5742
    lw	$at,10688($at)
    sd	$ra,0($sp)
    # Line 5743
    jal	glPushClientAttrib
    # Line 5742
    sw	$at,5088($zero)
    ld	$gp,16($sp)
    # Line 5745
    ld	$ra,0($sp)
    # Line 5744
    sw	$s8,5088($zero)
    # Line 5745
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_PushClientAttrib

# Function: __glce_SampleMaskSGIS
# Declared: Line 5750 (Source lines: 5751-5761)
# Address: 0x0dbcd91c - 0x0dbcd9a0 (Size: 132 bytes, Frame: 192)
.globl __glce_SampleMaskSGIS
.ent __glce_SampleMaskSGIS
__glce_SampleMaskSGIS:
    # Line 5751
    addiu	$sp,$sp,-64
    sd	$s8,16($sp)
    move	$s8,$a1
    sdc1	$f30,0($sp)
    mov.s	$f30,$f12
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 5753
    lw	$at,__glCurrentContext
    # Line 5751
    lui	$v0,0x3
    addiu	$v0,$v0,3452
    addu	$gp,$t9,$v0
    # Line 5755
    lw	$v0,5092($zero)
    # Line 5757
    # lw $t9, -16216($gp) # &glSampleMaskSGIS
    sd	$at,40($sp)
    # Line 5756
    lw	$at,6572($at)
    sd	$v0,32($sp)
    # Line 5757
    jal	glSampleMaskSGIS
    # Line 5756
    sw	$at,5092($zero)
    # Line 5758
    ld	$v1,40($sp)
    # Line 5759
    move	$a1,$s8
    # lw $t9, -16216($gp) # &glSampleMaskSGIS
    # Line 5758
    lw	$v1,10692($v1)
    # Line 5759
    mov.s	$f12,$f30
    jal	glSampleMaskSGIS
    # Line 5758
    sw	$v1,5092($zero)
    ld	$gp,24($sp)
    # Line 5761
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5760
    sw	$a0,5092($zero)
.end __glce_SampleMaskSGIS

# Function: __glce_SamplePatternSGIS
# Declared: Line 5766 (Source lines: 5767-5777)
# Address: 0x0dbcd9a0 - 0x0dbcda14 (Size: 116 bytes, Frame: 192)
.globl __glce_SamplePatternSGIS
.ent __glce_SamplePatternSGIS
__glce_SamplePatternSGIS:
    # Line 5767
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5769
    lw	$at,__glCurrentContext
    # Line 5767
    lui	$v0,0x3
    addiu	$v0,$v0,3320
    addu	$gp,$t9,$v0
    # Line 5771
    lw	$v0,5096($zero)
    # Line 5773
    # lw $t9, -16212($gp) # &glSamplePatternSGIS
    sd	$at,32($sp)
    # Line 5772
    lw	$at,6576($at)
    sd	$v0,24($sp)
    # Line 5773
    jal	glSamplePatternSGIS
    # Line 5772
    sw	$at,5096($zero)
    # Line 5774
    ld	$v1,32($sp)
    # Line 5775
    # lw $t9, -16212($gp) # &glSamplePatternSGIS
    # Line 5774
    lw	$v1,10696($v1)
    # Line 5775
    move	$a0,$s8
    jal	glSamplePatternSGIS
    # Line 5774
    sw	$v1,5096($zero)
    ld	$gp,16($sp)
    # Line 5777
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 5776
    sw	$a0,5096($zero)
.end __glce_SamplePatternSGIS

# Function: __glce_TagSampleBufferSGIX
# Declared: Line 5782 (Source lines: 5783-5793)
# Address: 0x0dbcda14 - 0x0dbcda78 (Size: 100 bytes, Frame: 32)
.globl __glce_TagSampleBufferSGIX
.ent __glce_TagSampleBufferSGIX
__glce_TagSampleBufferSGIX:
    # Line 5783
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 5787
    lw	$v0,5100($zero)
    sd	$gp,16($sp)
    # Line 5783
    lui	$v1,0x3
    addiu	$v1,$v1,3204
    sd	$s8,8($sp)
    # Line 5785
    lw	$s8,__glCurrentContext
    # Line 5783
    addu	$gp,$t9,$v1
    # Line 5789
    # lw $t9, -16208($gp) # &glTagSampleBufferSGIX
    # Line 5788
    lw	$at,6580($s8)
    sd	$v0,24($sp)
    # Line 5789
    jal	glTagSampleBufferSGIX
    # Line 5788
    sw	$at,5100($zero)
    # Line 5791
    # lw $t9, -16208($gp) # &glTagSampleBufferSGIX
    # Line 5790
    lw	$a0,10700($s8)
    # Line 5791
    jal	glTagSampleBufferSGIX
    # Line 5790
    sw	$a0,5100($zero)
    ld	$gp,16($sp)
    # Line 5793
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 5792
    sw	$a1,5100($zero)
.end __glce_TagSampleBufferSGIX

# Function: __glce_DetailTexFuncSGIS
# Declared: Line 5798 (Source lines: 5799-5809)
# Address: 0x0dbcda78 - 0x0dbcdafc (Size: 132 bytes, Frame: 224)
.globl __glce_DetailTexFuncSGIS
.ent __glce_DetailTexFuncSGIS
__glce_DetailTexFuncSGIS:
    # Line 5799
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5801
    lw	$at,__glCurrentContext
    # Line 5799
    lui	$v0,0x3
    addiu	$v0,$v0,3104
    addu	$gp,$t9,$v0
    # Line 5803
    lw	$v0,5104($zero)
    # Line 5805
    # lw $t9, -16204($gp) # &glDetailTexFuncSGIS
    sd	$at,32($sp)
    # Line 5804
    lw	$at,6584($at)
    sd	$v0,24($sp)
    # Line 5805
    jal	glDetailTexFuncSGIS
    # Line 5804
    sw	$at,5104($zero)
    ld	$a2,40($sp)
    # Line 5806
    ld	$v1,32($sp)
    # Line 5807
    ld	$a1,48($sp)
    # lw $t9, -16204($gp) # &glDetailTexFuncSGIS
    # Line 5806
    lw	$v1,10704($v1)
    # Line 5807
    move	$a0,$s8
    jal	glDetailTexFuncSGIS
    # Line 5806
    sw	$v1,5104($zero)
    ld	$gp,16($sp)
    # Line 5809
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5808
    sw	$a0,5104($zero)
.end __glce_DetailTexFuncSGIS

# Function: __glce_GetDetailTexFuncSGIS
# Declared: Line 5814 (Source lines: 5815-5823)
# Address: 0x0dbcdafc - 0x0dbcdb48 (Size: 76 bytes, Frame: 48)
.globl __glce_GetDetailTexFuncSGIS
.ent __glce_GetDetailTexFuncSGIS
__glce_GetDetailTexFuncSGIS:
    # Line 5815
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5819
    lw	$s8,5108($zero)
    sd	$gp,16($sp)
    # Line 5820
    lw	$at,__glCurrentContext
    # Line 5815
    lui	$v0,0x3
    addiu	$v0,$v0,2972
    addu	$gp,$t9,$v0
    # Line 5821
    # lw $t9, -16200($gp) # &glGetDetailTexFuncSGIS
    # Line 5820
    lw	$at,10708($at)
    sd	$ra,0($sp)
    # Line 5821
    jal	glGetDetailTexFuncSGIS
    # Line 5820
    sw	$at,5108($zero)
    ld	$gp,16($sp)
    # Line 5823
    ld	$ra,0($sp)
    # Line 5822
    sw	$s8,5108($zero)
    # Line 5823
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetDetailTexFuncSGIS

# Function: __glce_SharpenTexFuncSGIS
# Declared: Line 5828 (Source lines: 5829-5839)
# Address: 0x0dbcdb48 - 0x0dbcdbcc (Size: 132 bytes, Frame: 224)
.globl __glce_SharpenTexFuncSGIS
.ent __glce_SharpenTexFuncSGIS
__glce_SharpenTexFuncSGIS:
    # Line 5829
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5831
    lw	$at,__glCurrentContext
    # Line 5829
    lui	$v0,0x3
    addiu	$v0,$v0,2896
    addu	$gp,$t9,$v0
    # Line 5833
    lw	$v0,5112($zero)
    # Line 5835
    # lw $t9, -16196($gp) # &glSharpenTexFuncSGIS
    sd	$at,32($sp)
    # Line 5834
    lw	$at,6592($at)
    sd	$v0,24($sp)
    # Line 5835
    jal	glSharpenTexFuncSGIS
    # Line 5834
    sw	$at,5112($zero)
    ld	$a2,40($sp)
    # Line 5836
    ld	$v1,32($sp)
    # Line 5837
    ld	$a1,48($sp)
    # lw $t9, -16196($gp) # &glSharpenTexFuncSGIS
    # Line 5836
    lw	$v1,10712($v1)
    # Line 5837
    move	$a0,$s8
    jal	glSharpenTexFuncSGIS
    # Line 5836
    sw	$v1,5112($zero)
    ld	$gp,16($sp)
    # Line 5839
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5838
    sw	$a0,5112($zero)
.end __glce_SharpenTexFuncSGIS

# Function: __glce_GetSharpenTexFuncSGIS
# Declared: Line 5844 (Source lines: 5845-5853)
# Address: 0x0dbcdbcc - 0x0dbcdc18 (Size: 76 bytes, Frame: 48)
.globl __glce_GetSharpenTexFuncSGIS
.ent __glce_GetSharpenTexFuncSGIS
__glce_GetSharpenTexFuncSGIS:
    # Line 5845
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 5849
    lw	$s8,5116($zero)
    sd	$gp,16($sp)
    # Line 5850
    lw	$at,__glCurrentContext
    # Line 5845
    lui	$v0,0x3
    addiu	$v0,$v0,2764
    addu	$gp,$t9,$v0
    # Line 5851
    # lw $t9, -16192($gp) # &glGetSharpenTexFuncSGIS
    # Line 5850
    lw	$at,10716($at)
    sd	$ra,0($sp)
    # Line 5851
    jal	glGetSharpenTexFuncSGIS
    # Line 5850
    sw	$at,5116($zero)
    ld	$gp,16($sp)
    # Line 5853
    ld	$ra,0($sp)
    # Line 5852
    sw	$s8,5116($zero)
    # Line 5853
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_GetSharpenTexFuncSGIS

# Function: __glce_ColorTableSGI
# Declared: Line 5858 (Source lines: 5859-5869)
# Address: 0x0dbcdc18 - 0x0dbcdcb4 (Size: 156 bytes, Frame: 128)
.globl __glce_ColorTableSGI
.ent __glce_ColorTableSGI
__glce_ColorTableSGI:
    # Line 5859
    addiu	$sp,$sp,-128
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a3,56($sp)
    sd	$a2,64($sp)
    sd	$a1,72($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5861
    lw	$at,__glCurrentContext
    # Line 5859
    lui	$v0,0x3
    addiu	$v0,$v0,2688
    addu	$gp,$t9,$v0
    # Line 5863
    lw	$v0,5120($zero)
    # Line 5865
    # lw $t9, -16188($gp) # &glColorTableSGI
    sd	$at,32($sp)
    # Line 5864
    lw	$at,6600($at)
    sd	$v0,24($sp)
    # Line 5865
    jal	glColorTableSGI
    # Line 5864
    sw	$at,5120($zero)
    ld	$a5,40($sp)
    # Line 5867
    ld	$a4,48($sp)
    ld	$a3,56($sp)
    ld	$a2,64($sp)
    # Line 5866
    ld	$v1,32($sp)
    # Line 5867
    ld	$a1,72($sp)
    # lw $t9, -16188($gp) # &glColorTableSGI
    # Line 5866
    lw	$v1,10720($v1)
    # Line 5867
    move	$a0,$s8
    jal	glColorTableSGI
    # Line 5866
    sw	$v1,5120($zero)
    ld	$gp,16($sp)
    # Line 5869
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 5868
    sw	$a0,5120($zero)
.end __glce_ColorTableSGI

# Function: __glce_ColorTableParameterfvSGI
# Declared: Line 5874 (Source lines: 5875-5885)
# Address: 0x0dbcdcb4 - 0x0dbcdd38 (Size: 132 bytes, Frame: 224)
.globl __glce_ColorTableParameterfvSGI
.ent __glce_ColorTableParameterfvSGI
__glce_ColorTableParameterfvSGI:
    # Line 5875
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5877
    lw	$at,__glCurrentContext
    # Line 5875
    lui	$v0,0x3
    addiu	$v0,$v0,2532
    addu	$gp,$t9,$v0
    # Line 5879
    lw	$v0,5124($zero)
    # Line 5881
    # lw $t9, -16184($gp) # &glColorTableParameterfvSGI
    sd	$at,32($sp)
    # Line 5880
    lw	$at,6604($at)
    sd	$v0,24($sp)
    # Line 5881
    jal	glColorTableParameterfvSGI
    # Line 5880
    sw	$at,5124($zero)
    ld	$a2,40($sp)
    # Line 5882
    ld	$v1,32($sp)
    # Line 5883
    ld	$a1,48($sp)
    # lw $t9, -16184($gp) # &glColorTableParameterfvSGI
    # Line 5882
    lw	$v1,10724($v1)
    # Line 5883
    move	$a0,$s8
    jal	glColorTableParameterfvSGI
    # Line 5882
    sw	$v1,5124($zero)
    ld	$gp,16($sp)
    # Line 5885
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5884
    sw	$a0,5124($zero)
.end __glce_ColorTableParameterfvSGI

# Function: __glce_ColorTableParameterivSGI
# Declared: Line 5890 (Source lines: 5891-5901)
# Address: 0x0dbcdd38 - 0x0dbcddbc (Size: 132 bytes, Frame: 224)
.globl __glce_ColorTableParameterivSGI
.ent __glce_ColorTableParameterivSGI
__glce_ColorTableParameterivSGI:
    # Line 5891
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5893
    lw	$at,__glCurrentContext
    # Line 5891
    lui	$v0,0x3
    addiu	$v0,$v0,2400
    addu	$gp,$t9,$v0
    # Line 5895
    lw	$v0,5128($zero)
    # Line 5897
    # lw $t9, -16180($gp) # &glColorTableParameterivSGI
    sd	$at,32($sp)
    # Line 5896
    lw	$at,6608($at)
    sd	$v0,24($sp)
    # Line 5897
    jal	glColorTableParameterivSGI
    # Line 5896
    sw	$at,5128($zero)
    ld	$a2,40($sp)
    # Line 5898
    ld	$v1,32($sp)
    # Line 5899
    ld	$a1,48($sp)
    # lw $t9, -16180($gp) # &glColorTableParameterivSGI
    # Line 5898
    lw	$v1,10728($v1)
    # Line 5899
    move	$a0,$s8
    jal	glColorTableParameterivSGI
    # Line 5898
    sw	$v1,5128($zero)
    ld	$gp,16($sp)
    # Line 5901
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 5900
    sw	$a0,5128($zero)
.end __glce_ColorTableParameterivSGI

# Function: __glce_CopyColorTableSGI
# Declared: Line 5906 (Source lines: 5907-5917)
# Address: 0x0dbcddbc - 0x0dbcde50 (Size: 148 bytes, Frame: 128)
.globl __glce_CopyColorTableSGI
.ent __glce_CopyColorTableSGI
__glce_CopyColorTableSGI:
    # Line 5907
    addiu	$sp,$sp,-128
    sd	$a4,40($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,64($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5909
    lw	$at,__glCurrentContext
    # Line 5907
    lui	$v0,0x3
    addiu	$v0,$v0,2268
    addu	$gp,$t9,$v0
    # Line 5911
    lw	$v0,5132($zero)
    # Line 5913
    # lw $t9, -16176($gp) # &glCopyColorTableSGI
    sd	$at,32($sp)
    # Line 5912
    lw	$at,6612($at)
    sd	$v0,24($sp)
    # Line 5913
    jal	glCopyColorTableSGI
    # Line 5912
    sw	$at,5132($zero)
    ld	$a4,40($sp)
    # Line 5915
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # Line 5914
    ld	$v1,32($sp)
    # Line 5915
    ld	$a1,64($sp)
    # lw $t9, -16176($gp) # &glCopyColorTableSGI
    # Line 5914
    lw	$v1,10732($v1)
    # Line 5915
    move	$a0,$s8
    jal	glCopyColorTableSGI
    # Line 5914
    sw	$v1,5132($zero)
    ld	$gp,16($sp)
    # Line 5917
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 5916
    sw	$a0,5132($zero)
.end __glce_CopyColorTableSGI

# Function: __glce_GetColorTableSGI
# Declared: Line 5922 (Source lines: 5923-5931)
# Address: 0x0dbcde50 - 0x0dbcde9c (Size: 76 bytes, Frame: 192)
.globl __glce_GetColorTableSGI
.ent __glce_GetColorTableSGI
__glce_GetColorTableSGI:
    # Line 5923
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5927
    lw	$s8,5136($zero)
    sd	$gp,16($sp)
    # Line 5928
    lw	$at,__glCurrentContext
    # Line 5923
    lui	$v0,0x3
    addiu	$v0,$v0,2120
    addu	$gp,$t9,$v0
    # Line 5929
    # lw $t9, -16172($gp) # &glGetColorTableSGI
    # Line 5928
    lw	$at,10736($at)
    sd	$ra,0($sp)
    # Line 5929
    jal	glGetColorTableSGI
    # Line 5928
    sw	$at,5136($zero)
    ld	$gp,16($sp)
    # Line 5931
    ld	$ra,0($sp)
    # Line 5930
    sw	$s8,5136($zero)
    # Line 5931
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetColorTableSGI

# Function: __glce_GetColorTableParameterfvSGI
# Declared: Line 5936 (Source lines: 5937-5945)
# Address: 0x0dbcde9c - 0x0dbcdee8 (Size: 76 bytes, Frame: 192)
.globl __glce_GetColorTableParameterfvSGI
.ent __glce_GetColorTableParameterfvSGI
__glce_GetColorTableParameterfvSGI:
    # Line 5937
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5941
    lw	$s8,5140($zero)
    sd	$gp,16($sp)
    # Line 5942
    lw	$at,__glCurrentContext
    # Line 5937
    lui	$v0,0x3
    addiu	$v0,$v0,2044
    addu	$gp,$t9,$v0
    # Line 5943
    # lw $t9, -16168($gp) # &glGetColorTableParameterfvSGI
    # Line 5942
    lw	$at,10740($at)
    sd	$ra,0($sp)
    # Line 5943
    jal	glGetColorTableParameterfvSGI
    # Line 5942
    sw	$at,5140($zero)
    ld	$gp,16($sp)
    # Line 5945
    ld	$ra,0($sp)
    # Line 5944
    sw	$s8,5140($zero)
    # Line 5945
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetColorTableParameterfvSGI

# Function: __glce_GetColorTableParameterivSGI
# Declared: Line 5950 (Source lines: 5951-5959)
# Address: 0x0dbcdee8 - 0x0dbcdf34 (Size: 76 bytes, Frame: 192)
.globl __glce_GetColorTableParameterivSGI
.ent __glce_GetColorTableParameterivSGI
__glce_GetColorTableParameterivSGI:
    # Line 5951
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 5955
    lw	$s8,5144($zero)
    sd	$gp,16($sp)
    # Line 5956
    lw	$at,__glCurrentContext
    # Line 5951
    lui	$v0,0x3
    addiu	$v0,$v0,1968
    addu	$gp,$t9,$v0
    # Line 5957
    # lw $t9, -16164($gp) # &glGetColorTableParameterivSGI
    # Line 5956
    lw	$at,10744($at)
    sd	$ra,0($sp)
    # Line 5957
    jal	glGetColorTableParameterivSGI
    # Line 5956
    sw	$at,5144($zero)
    ld	$gp,16($sp)
    # Line 5959
    ld	$ra,0($sp)
    # Line 5958
    sw	$s8,5144($zero)
    # Line 5959
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetColorTableParameterivSGI

# Function: __glce_TexImage4DSGIS
# Declared: Line 5964 (Source lines: 5965-5975)
# Address: 0x0dbcdf34 - 0x0dbce01c (Size: 232 bytes, Frame: 224)
.globl __glce_TexImage4DSGIS
.ent __glce_TexImage4DSGIS
__glce_TexImage4DSGIS:
    # Line 5965
    addiu	$sp,$sp,-224
    sd	$a7,96($sp)
    sd	$a6,104($sp)
    sd	$a5,112($sp)
    sd	$a4,120($sp)
    sd	$a3,128($sp)
    sd	$a2,136($sp)
    sd	$a1,144($sp)
    sd	$s8,40($sp)
    move	$s8,$a0
    sd	$ra,32($sp)
    # Line 5971
    lw	$v1,244($sp)
    lw	$v0,236($sp)
    lw	$at,228($sp)
    sd	$v1,80($sp)
    sd	$v0,72($sp)
    sd	$at,64($sp)
    sd	$gp,48($sp)
    # Line 5965
    lui	$t1,0x3
    addiu	$t1,$t1,1892
    # Line 5967
    lw	$t0,__glCurrentContext
    # Line 5965
    addu	$gp,$t9,$t1
    # Line 5969
    lw	$t1,5148($zero)
    sd	$t0,88($sp)
    # Line 5970
    lw	$t0,6628($t0)
    sd	$t1,56($sp)
    # Line 5971
    # lw $t9, -16160($gp) # &glTexImage4DSGIS
    # Line 5970
    sw	$t0,5148($zero)
    # Line 5971
    sw	$v1,20($sp)
    sw	$v0,12($sp)
    jal	glTexImage4DSGIS
    sw	$at,4($sp)
    ld	$a7,96($sp)
    # Line 5973
    ld	$a6,104($sp)
    ld	$a5,112($sp)
    ld	$a4,120($sp)
    ld	$a3,128($sp)
    ld	$a2,136($sp)
    ld	$a1,144($sp)
    move	$a0,$s8
    # Line 5972
    ld	$ra,88($sp)
    # Line 5973
    ld	$t2,64($sp)
    # lw $t9, -16160($gp) # &glTexImage4DSGIS
    # Line 5972
    lw	$ra,10748($ra)
    # Line 5973
    ld	$t8,80($sp)
    ld	$t3,72($sp)
    # Line 5972
    sw	$ra,5148($zero)
    # Line 5973
    sw	$t8,20($sp)
    sw	$t3,12($sp)
    jal	glTexImage4DSGIS
    sw	$t2,4($sp)
    ld	$gp,48($sp)
    # Line 5975
    ld	$s8,40($sp)
    ld	$ra,32($sp)
    ld	$at,56($sp)
    addiu	$sp,$sp,224
    jr	$ra
    # Line 5974
    sw	$at,5148($zero)
.end __glce_TexImage4DSGIS

# Function: __glce_TexSubImage4DSGIS
# Declared: Line 5980 (Source lines: 5981-5991)
# Address: 0x0dbce01c - 0x0dbce12c (Size: 272 bytes, Frame: 128)
.globl __glce_TexSubImage4DSGIS
.ent __glce_TexSubImage4DSGIS
__glce_TexSubImage4DSGIS:
    # Line 5981
    addiu	$sp,$sp,-256
    sd	$a7,128($sp)
    sd	$a6,136($sp)
    sd	$a5,144($sp)
    sd	$a4,152($sp)
    sd	$a3,160($sp)
    sd	$a2,168($sp)
    sd	$a1,176($sp)
    sd	$s8,56($sp)
    move	$s8,$a0
    sd	$ra,48($sp)
    # Line 5987
    lw	$at,260($sp)
    lw	$v0,268($sp)
    lw	$t1,292($sp)
    lw	$t0,284($sp)
    lw	$v1,276($sp)
    sd	$t1,112($sp)
    sd	$t0,104($sp)
    sd	$v1,96($sp)
    sd	$v0,88($sp)
    sd	$at,80($sp)
    sd	$gp,64($sp)
    # Line 5981
    lui	$t3,0x3
    addiu	$t3,$t3,1660
    # Line 5983
    lw	$t2,__glCurrentContext
    # Line 5981
    addu	$gp,$t9,$t3
    # Line 5985
    lw	$t3,5152($zero)
    sd	$t2,120($sp)
    # Line 5986
    lw	$t2,6632($t2)
    sd	$t3,72($sp)
    # Line 5987
    # lw $t9, -16156($gp) # &glTexSubImage4DSGIS
    # Line 5986
    sw	$t2,5152($zero)
    # Line 5987
    sw	$t1,36($sp)
    sw	$t0,28($sp)
    sw	$v1,20($sp)
    sw	$v0,12($sp)
    jal	glTexSubImage4DSGIS
    sw	$at,4($sp)
    ld	$a7,128($sp)
    # Line 5989
    ld	$a6,136($sp)
    ld	$a5,144($sp)
    ld	$a4,152($sp)
    ld	$a3,160($sp)
    ld	$a2,168($sp)
    ld	$a1,176($sp)
    move	$a0,$s8
    ld	$t8,80($sp)
    # lw $t9, -16156($gp) # &glTexSubImage4DSGIS
    # Line 5988
    ld	$t0,120($sp)
    # Line 5989
    ld	$ra,88($sp)
    ld	$at,96($sp)
    # Line 5988
    lw	$t0,10752($t0)
    # Line 5989
    ld	$v1,112($sp)
    ld	$v0,104($sp)
    # Line 5988
    sw	$t0,5152($zero)
    # Line 5989
    sw	$v1,36($sp)
    sw	$v0,28($sp)
    sw	$at,20($sp)
    sw	$ra,12($sp)
    jal	glTexSubImage4DSGIS
    sw	$t8,4($sp)
    ld	$s8,72($sp)
    ld	$gp,64($sp)
    # Line 5991
    ld	$ra,48($sp)
    # Line 5990
    sw	$s8,5152($zero)
    # Line 5991
    ld	$s8,56($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __glce_TexSubImage4DSGIS

# Function: __glce_PixelTexGenSGIX
# Declared: Line 5996 (Source lines: 5997-6007)
# Address: 0x0dbce12c - 0x0dbce1a0 (Size: 116 bytes, Frame: 192)
.globl __glce_PixelTexGenSGIX
.ent __glce_PixelTexGenSGIX
__glce_PixelTexGenSGIX:
    # Line 5997
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 5999
    lw	$at,__glCurrentContext
    # Line 5997
    lui	$v0,0x3
    addiu	$v0,$v0,1388
    addu	$gp,$t9,$v0
    # Line 6001
    lw	$v0,5156($zero)
    # Line 6003
    # lw $t9, -16152($gp) # &glPixelTexGenSGIX
    sd	$at,32($sp)
    # Line 6002
    lw	$at,6636($at)
    sd	$v0,24($sp)
    # Line 6003
    jal	glPixelTexGenSGIX
    # Line 6002
    sw	$at,5156($zero)
    # Line 6004
    ld	$v1,32($sp)
    # Line 6005
    # lw $t9, -16152($gp) # &glPixelTexGenSGIX
    # Line 6004
    lw	$v1,10756($v1)
    # Line 6005
    move	$a0,$s8
    jal	glPixelTexGenSGIX
    # Line 6004
    sw	$v1,5156($zero)
    ld	$gp,16($sp)
    # Line 6007
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6006
    sw	$a0,5156($zero)
.end __glce_PixelTexGenSGIX

# Function: __glce_SpriteParameterfSGIX
# Declared: Line 6012 (Source lines: 6013-6023)
# Address: 0x0dbce1a0 - 0x0dbce224 (Size: 132 bytes, Frame: 192)
.globl __glce_SpriteParameterfSGIX
.ent __glce_SpriteParameterfSGIX
__glce_SpriteParameterfSGIX:
    # Line 6013
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 6015
    lw	$at,__glCurrentContext
    # Line 6013
    lui	$v0,0x3
    addiu	$v0,$v0,1272
    addu	$gp,$t9,$v0
    # Line 6017
    lw	$v0,5160($zero)
    # Line 6019
    # lw $t9, -16148($gp) # &glSpriteParameterfSGIX
    sd	$at,40($sp)
    # Line 6018
    lw	$at,6640($at)
    sd	$v0,32($sp)
    # Line 6019
    jal	glSpriteParameterfSGIX
    # Line 6018
    sw	$at,5160($zero)
    # Line 6020
    ld	$v1,40($sp)
    # Line 6021
    mov.s	$f13,$f30
    # lw $t9, -16148($gp) # &glSpriteParameterfSGIX
    # Line 6020
    lw	$v1,10760($v1)
    # Line 6021
    move	$a0,$s8
    jal	glSpriteParameterfSGIX
    # Line 6020
    sw	$v1,5160($zero)
    ld	$gp,24($sp)
    # Line 6023
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6022
    sw	$a0,5160($zero)
.end __glce_SpriteParameterfSGIX

# Function: __glce_SpriteParameterfvSGIX
# Declared: Line 6028 (Source lines: 6029-6039)
# Address: 0x0dbce224 - 0x0dbce2a0 (Size: 124 bytes, Frame: 192)
.globl __glce_SpriteParameterfvSGIX
.ent __glce_SpriteParameterfvSGIX
__glce_SpriteParameterfvSGIX:
    # Line 6029
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6031
    lw	$at,__glCurrentContext
    # Line 6029
    lui	$v0,0x3
    addiu	$v0,$v0,1140
    addu	$gp,$t9,$v0
    # Line 6033
    lw	$v0,5164($zero)
    # Line 6035
    # lw $t9, -16144($gp) # &glSpriteParameterfvSGIX
    sd	$at,32($sp)
    # Line 6034
    lw	$at,6644($at)
    sd	$v0,24($sp)
    # Line 6035
    jal	glSpriteParameterfvSGIX
    # Line 6034
    sw	$at,5164($zero)
    # Line 6036
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 6037
    # lw $t9, -16144($gp) # &glSpriteParameterfvSGIX
    # Line 6036
    lw	$v1,10764($v1)
    # Line 6037
    move	$a0,$s8
    jal	glSpriteParameterfvSGIX
    # Line 6036
    sw	$v1,5164($zero)
    ld	$gp,16($sp)
    # Line 6039
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6038
    sw	$a0,5164($zero)
.end __glce_SpriteParameterfvSGIX

# Function: __glce_SpriteParameteriSGIX
# Declared: Line 6044 (Source lines: 6045-6055)
# Address: 0x0dbce2a0 - 0x0dbce31c (Size: 124 bytes, Frame: 192)
.globl __glce_SpriteParameteriSGIX
.ent __glce_SpriteParameteriSGIX
__glce_SpriteParameteriSGIX:
    # Line 6045
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6047
    lw	$at,__glCurrentContext
    # Line 6045
    lui	$v0,0x3
    addiu	$v0,$v0,1016
    addu	$gp,$t9,$v0
    # Line 6049
    lw	$v0,5168($zero)
    # Line 6051
    # lw $t9, -16140($gp) # &glSpriteParameteriSGIX
    sd	$at,32($sp)
    # Line 6050
    lw	$at,6648($at)
    sd	$v0,24($sp)
    # Line 6051
    jal	glSpriteParameteriSGIX
    # Line 6050
    sw	$at,5168($zero)
    # Line 6052
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 6053
    # lw $t9, -16140($gp) # &glSpriteParameteriSGIX
    # Line 6052
    lw	$v1,10768($v1)
    # Line 6053
    move	$a0,$s8
    jal	glSpriteParameteriSGIX
    # Line 6052
    sw	$v1,5168($zero)
    ld	$gp,16($sp)
    # Line 6055
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6054
    sw	$a0,5168($zero)
.end __glce_SpriteParameteriSGIX

# Function: __glce_SpriteParameterivSGIX
# Declared: Line 6060 (Source lines: 6061-6071)
# Address: 0x0dbce31c - 0x0dbce398 (Size: 124 bytes, Frame: 192)
.globl __glce_SpriteParameterivSGIX
.ent __glce_SpriteParameterivSGIX
__glce_SpriteParameterivSGIX:
    # Line 6061
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6063
    lw	$at,__glCurrentContext
    # Line 6061
    lui	$v0,0x3
    addiu	$v0,$v0,892
    addu	$gp,$t9,$v0
    # Line 6065
    lw	$v0,5172($zero)
    # Line 6067
    # lw $t9, -16136($gp) # &glSpriteParameterivSGIX
    sd	$at,32($sp)
    # Line 6066
    lw	$at,6652($at)
    sd	$v0,24($sp)
    # Line 6067
    jal	glSpriteParameterivSGIX
    # Line 6066
    sw	$at,5172($zero)
    # Line 6068
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 6069
    # lw $t9, -16136($gp) # &glSpriteParameterivSGIX
    # Line 6068
    lw	$v1,10772($v1)
    # Line 6069
    move	$a0,$s8
    jal	glSpriteParameterivSGIX
    # Line 6068
    sw	$v1,5172($zero)
    ld	$gp,16($sp)
    # Line 6071
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6070
    sw	$a0,5172($zero)
.end __glce_SpriteParameterivSGIX

# Function: __glce_GetTexFilterFuncSGIS
# Declared: Line 6076 (Source lines: 6077-6085)
# Address: 0x0dbce398 - 0x0dbce3e4 (Size: 76 bytes, Frame: 192)
.globl __glce_GetTexFilterFuncSGIS
.ent __glce_GetTexFilterFuncSGIS
__glce_GetTexFilterFuncSGIS:
    # Line 6077
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6081
    lw	$s8,5176($zero)
    sd	$gp,16($sp)
    # Line 6082
    lw	$at,__glCurrentContext
    # Line 6077
    lui	$v0,0x3
    addiu	$v0,$v0,768
    addu	$gp,$t9,$v0
    # Line 6083
    # lw $t9, -16132($gp) # &glGetTexFilterFuncSGIS
    # Line 6082
    lw	$at,10776($at)
    sd	$ra,0($sp)
    # Line 6083
    jal	glGetTexFilterFuncSGIS
    # Line 6082
    sw	$at,5176($zero)
    ld	$gp,16($sp)
    # Line 6085
    ld	$ra,0($sp)
    # Line 6084
    sw	$s8,5176($zero)
    # Line 6085
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetTexFilterFuncSGIS

# Function: __glce_TexFilterFuncSGIS
# Declared: Line 6090 (Source lines: 6091-6101)
# Address: 0x0dbce3e4 - 0x0dbce470 (Size: 140 bytes, Frame: 224)
.globl __glce_TexFilterFuncSGIS
.ent __glce_TexFilterFuncSGIS
__glce_TexFilterFuncSGIS:
    # Line 6091
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6093
    lw	$at,__glCurrentContext
    # Line 6091
    lui	$v0,0x3
    addiu	$v0,$v0,692
    addu	$gp,$t9,$v0
    # Line 6095
    lw	$v0,5180($zero)
    # Line 6097
    # lw $t9, -16128($gp) # &glTexFilterFuncSGIS
    sd	$at,32($sp)
    # Line 6096
    lw	$at,6660($at)
    sd	$v0,24($sp)
    # Line 6097
    jal	glTexFilterFuncSGIS
    # Line 6096
    sw	$at,5180($zero)
    ld	$a3,40($sp)
    # Line 6099
    ld	$a2,48($sp)
    # Line 6098
    ld	$v1,32($sp)
    # Line 6099
    ld	$a1,56($sp)
    # lw $t9, -16128($gp) # &glTexFilterFuncSGIS
    # Line 6098
    lw	$v1,10780($v1)
    # Line 6099
    move	$a0,$s8
    jal	glTexFilterFuncSGIS
    # Line 6098
    sw	$v1,5180($zero)
    ld	$gp,16($sp)
    # Line 6101
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 6100
    sw	$a0,5180($zero)
.end __glce_TexFilterFuncSGIS

# Function: __glce_PointParameterfSGIS
# Declared: Line 6106 (Source lines: 6107-6117)
# Address: 0x0dbce470 - 0x0dbce4f4 (Size: 132 bytes, Frame: 192)
.globl __glce_PointParameterfSGIS
.ent __glce_PointParameterfSGIS
__glce_PointParameterfSGIS:
    # Line 6107
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 6109
    lw	$at,__glCurrentContext
    # Line 6107
    lui	$v0,0x3
    addiu	$v0,$v0,552
    addu	$gp,$t9,$v0
    # Line 6111
    lw	$v0,5184($zero)
    # Line 6113
    # lw $t9, -16124($gp) # &glPointParameterfSGIS
    sd	$at,40($sp)
    # Line 6112
    lw	$at,6664($at)
    sd	$v0,32($sp)
    # Line 6113
    jal	glPointParameterfSGIS
    # Line 6112
    sw	$at,5184($zero)
    # Line 6114
    ld	$v1,40($sp)
    # Line 6115
    mov.s	$f13,$f30
    # lw $t9, -16124($gp) # &glPointParameterfSGIS
    # Line 6114
    lw	$v1,10784($v1)
    # Line 6115
    move	$a0,$s8
    jal	glPointParameterfSGIS
    # Line 6114
    sw	$v1,5184($zero)
    ld	$gp,24($sp)
    # Line 6117
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6116
    sw	$a0,5184($zero)
.end __glce_PointParameterfSGIS

# Function: __glce_PointParameterfvSGIS
# Declared: Line 6122 (Source lines: 6123-6133)
# Address: 0x0dbce4f4 - 0x0dbce570 (Size: 124 bytes, Frame: 192)
.globl __glce_PointParameterfvSGIS
.ent __glce_PointParameterfvSGIS
__glce_PointParameterfvSGIS:
    # Line 6123
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6125
    lw	$at,__glCurrentContext
    # Line 6123
    lui	$v0,0x3
    addiu	$v0,$v0,420
    addu	$gp,$t9,$v0
    # Line 6127
    lw	$v0,5188($zero)
    # Line 6129
    # lw $t9, -16120($gp) # &glPointParameterfvSGIS
    sd	$at,32($sp)
    # Line 6128
    lw	$at,6668($at)
    sd	$v0,24($sp)
    # Line 6129
    jal	glPointParameterfvSGIS
    # Line 6128
    sw	$at,5188($zero)
    # Line 6130
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 6131
    # lw $t9, -16120($gp) # &glPointParameterfvSGIS
    # Line 6130
    lw	$v1,10788($v1)
    # Line 6131
    move	$a0,$s8
    jal	glPointParameterfvSGIS
    # Line 6130
    sw	$v1,5188($zero)
    ld	$gp,16($sp)
    # Line 6133
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6132
    sw	$a0,5188($zero)
.end __glce_PointParameterfvSGIS

# Function: __glce_FogFuncSGIS
# Declared: Line 6138 (Source lines: 6139-6149)
# Address: 0x0dbce570 - 0x0dbce5ec (Size: 124 bytes, Frame: 192)
.globl __glce_FogFuncSGIS
.ent __glce_FogFuncSGIS
__glce_FogFuncSGIS:
    # Line 6139
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6141
    lw	$at,__glCurrentContext
    # Line 6139
    lui	$v0,0x3
    addiu	$v0,$v0,296
    addu	$gp,$t9,$v0
    # Line 6143
    lw	$v0,5192($zero)
    # Line 6145
    # lw $t9, -16116($gp) # &glFogFuncSGIS
    sd	$at,32($sp)
    # Line 6144
    lw	$at,6672($at)
    sd	$v0,24($sp)
    # Line 6145
    jal	glFogFuncSGIS
    # Line 6144
    sw	$at,5192($zero)
    # Line 6146
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 6147
    # lw $t9, -16116($gp) # &glFogFuncSGIS
    # Line 6146
    lw	$v1,10792($v1)
    # Line 6147
    move	$a0,$s8
    jal	glFogFuncSGIS
    # Line 6146
    sw	$v1,5192($zero)
    ld	$gp,16($sp)
    # Line 6149
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6148
    sw	$a0,5192($zero)
.end __glce_FogFuncSGIS

# Function: __glce_GetInstrumentsSGIX
# Declared: Line 6154 (Source lines: 6155-6164)
# Address: 0x0dbce5ec - 0x0dbce638 (Size: 76 bytes, Frame: 32)
.globl __glce_GetInstrumentsSGIX
.ent __glce_GetInstrumentsSGIX
__glce_GetInstrumentsSGIX:
    # Line 6155
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6160
    lw	$s8,5196($zero)
    sd	$gp,16($sp)
    # Line 6161
    lw	$at,__glCurrentContext
    # Line 6155
    lui	$v0,0x3
    addiu	$v0,$v0,172
    addu	$gp,$t9,$v0
    # Line 6162
    # lw $t9, -16112($gp) # &glGetInstrumentsSGIX
    # Line 6161
    lw	$at,10796($at)
    sd	$ra,0($sp)
    # Line 6162
    jal	glGetInstrumentsSGIX
    # Line 6161
    sw	$at,5196($zero)
    ld	$gp,16($sp)
    # Line 6164
    ld	$ra,0($sp)
    # Line 6163
    sw	$s8,5196($zero)
    # Line 6164
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_GetInstrumentsSGIX

# Function: __glce_InstrumentsBufferSGIX
# Declared: Line 6170 (Source lines: 6171-6179)
# Address: 0x0dbce638 - 0x0dbce684 (Size: 76 bytes, Frame: 48)
.globl __glce_InstrumentsBufferSGIX
.ent __glce_InstrumentsBufferSGIX
__glce_InstrumentsBufferSGIX:
    # Line 6171
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6175
    lw	$s8,5200($zero)
    sd	$gp,16($sp)
    # Line 6176
    lw	$at,__glCurrentContext
    # Line 6171
    lui	$v0,0x3
    addiu	$v0,$v0,96
    addu	$gp,$t9,$v0
    # Line 6177
    # lw $t9, -16108($gp) # &glInstrumentsBufferSGIX
    # Line 6176
    lw	$at,10800($at)
    sd	$ra,0($sp)
    # Line 6177
    jal	glInstrumentsBufferSGIX
    # Line 6176
    sw	$at,5200($zero)
    ld	$gp,16($sp)
    # Line 6179
    ld	$ra,0($sp)
    # Line 6178
    sw	$s8,5200($zero)
    # Line 6179
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_InstrumentsBufferSGIX

# Function: __glce_PollInstrumentsSGIX
# Declared: Line 6184 (Source lines: 6185-6194)
# Address: 0x0dbce684 - 0x0dbce6d0 (Size: 76 bytes, Frame: 48)
.globl __glce_PollInstrumentsSGIX
.ent __glce_PollInstrumentsSGIX
__glce_PollInstrumentsSGIX:
    # Line 6185
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6190
    lw	$s8,5204($zero)
    sd	$gp,16($sp)
    # Line 6191
    lw	$at,__glCurrentContext
    # Line 6185
    lui	$v0,0x3
    addiu	$v0,$v0,20
    addu	$gp,$t9,$v0
    # Line 6192
    # lw $t9, -16104($gp) # &glPollInstrumentsSGIX
    # Line 6191
    lw	$at,10804($at)
    sd	$ra,0($sp)
    # Line 6192
    jal	glPollInstrumentsSGIX
    # Line 6191
    sw	$at,5204($zero)
    ld	$gp,16($sp)
    # Line 6194
    ld	$ra,0($sp)
    # Line 6193
    sw	$s8,5204($zero)
    # Line 6194
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_PollInstrumentsSGIX

# Function: __glce_ReadInstrumentsSGIX
# Declared: Line 6200 (Source lines: 6201-6211)
# Address: 0x0dbce6d0 - 0x0dbce744 (Size: 116 bytes, Frame: 192)
.globl __glce_ReadInstrumentsSGIX
.ent __glce_ReadInstrumentsSGIX
__glce_ReadInstrumentsSGIX:
    # Line 6201
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6203
    lw	$at,__glCurrentContext
    # Line 6201
    lui	$v0,0x3
    addiu	$v0,$v0,-56
    addu	$gp,$t9,$v0
    # Line 6205
    lw	$v0,5208($zero)
    # Line 6207
    # lw $t9, -16100($gp) # &glReadInstrumentsSGIX
    sd	$at,32($sp)
    # Line 6206
    lw	$at,6688($at)
    sd	$v0,24($sp)
    # Line 6207
    jal	glReadInstrumentsSGIX
    # Line 6206
    sw	$at,5208($zero)
    # Line 6208
    ld	$v1,32($sp)
    # Line 6209
    # lw $t9, -16100($gp) # &glReadInstrumentsSGIX
    # Line 6208
    lw	$v1,10808($v1)
    # Line 6209
    move	$a0,$s8
    jal	glReadInstrumentsSGIX
    # Line 6208
    sw	$v1,5208($zero)
    ld	$gp,16($sp)
    # Line 6211
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6210
    sw	$a0,5208($zero)
.end __glce_ReadInstrumentsSGIX

# Function: __glce_StartInstrumentsSGIX
# Declared: Line 6216 (Source lines: 6217-6227)
# Address: 0x0dbce744 - 0x0dbce7a8 (Size: 100 bytes, Frame: 32)
.globl __glce_StartInstrumentsSGIX
.ent __glce_StartInstrumentsSGIX
__glce_StartInstrumentsSGIX:
    # Line 6217
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 6221
    lw	$v0,5212($zero)
    sd	$gp,16($sp)
    # Line 6217
    lui	$v1,0x3
    addiu	$v1,$v1,-172
    sd	$s8,8($sp)
    # Line 6219
    lw	$s8,__glCurrentContext
    # Line 6217
    addu	$gp,$t9,$v1
    # Line 6223
    # lw $t9, -16096($gp) # &glStartInstrumentsSGIX
    # Line 6222
    lw	$at,6692($s8)
    sd	$v0,24($sp)
    # Line 6223
    jal	glStartInstrumentsSGIX
    # Line 6222
    sw	$at,5212($zero)
    # Line 6225
    # lw $t9, -16096($gp) # &glStartInstrumentsSGIX
    # Line 6224
    lw	$a0,10812($s8)
    # Line 6225
    jal	glStartInstrumentsSGIX
    # Line 6224
    sw	$a0,5212($zero)
    ld	$gp,16($sp)
    # Line 6227
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a1,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 6226
    sw	$a1,5212($zero)
.end __glce_StartInstrumentsSGIX

# Function: __glce_StopInstrumentsSGIX
# Declared: Line 6232 (Source lines: 6233-6243)
# Address: 0x0dbce7a8 - 0x0dbce81c (Size: 116 bytes, Frame: 192)
.globl __glce_StopInstrumentsSGIX
.ent __glce_StopInstrumentsSGIX
__glce_StopInstrumentsSGIX:
    # Line 6233
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6235
    lw	$at,__glCurrentContext
    # Line 6233
    lui	$v0,0x3
    addiu	$v0,$v0,-272
    addu	$gp,$t9,$v0
    # Line 6237
    lw	$v0,5216($zero)
    # Line 6239
    # lw $t9, -16092($gp) # &glStopInstrumentsSGIX
    sd	$at,32($sp)
    # Line 6238
    lw	$at,6696($at)
    sd	$v0,24($sp)
    # Line 6239
    jal	glStopInstrumentsSGIX
    # Line 6238
    sw	$at,5216($zero)
    # Line 6240
    ld	$v1,32($sp)
    # Line 6241
    # lw $t9, -16092($gp) # &glStopInstrumentsSGIX
    # Line 6240
    lw	$v1,10816($v1)
    # Line 6241
    move	$a0,$s8
    jal	glStopInstrumentsSGIX
    # Line 6240
    sw	$v1,5216($zero)
    ld	$gp,16($sp)
    # Line 6243
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6242
    sw	$a0,5216($zero)
.end __glce_StopInstrumentsSGIX

# Function: __glce_FlushRasterSGIX
# Declared: Line 6248 (Source lines: 6249-6257)
# Address: 0x0dbce81c - 0x0dbce868 (Size: 76 bytes, Frame: 32)
.globl __glce_FlushRasterSGIX
.ent __glce_FlushRasterSGIX
__glce_FlushRasterSGIX:
    # Line 6249
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 6253
    lw	$s8,5220($zero)
    sd	$gp,16($sp)
    # Line 6254
    lw	$at,__glCurrentContext
    # Line 6249
    lui	$v0,0x3
    addiu	$v0,$v0,-388
    addu	$gp,$t9,$v0
    # Line 6255
    # lw $t9, -16088($gp) # &glFlushRasterSGIX
    # Line 6254
    lw	$at,10820($at)
    sd	$ra,0($sp)
    # Line 6255
    jal	glFlushRasterSGIX
    # Line 6254
    sw	$at,5220($zero)
    ld	$gp,16($sp)
    # Line 6257
    ld	$ra,0($sp)
    # Line 6256
    sw	$s8,5220($zero)
    # Line 6257
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glce_FlushRasterSGIX

# Function: __glce_ReferencePlaneSGIX
# Declared: Line 6262 (Source lines: 6263-6273)
# Address: 0x0dbce868 - 0x0dbce8dc (Size: 116 bytes, Frame: 192)
.globl __glce_ReferencePlaneSGIX
.ent __glce_ReferencePlaneSGIX
__glce_ReferencePlaneSGIX:
    # Line 6263
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6265
    lw	$at,__glCurrentContext
    # Line 6263
    lui	$v0,0x3
    addiu	$v0,$v0,-464
    addu	$gp,$t9,$v0
    # Line 6267
    lw	$v0,5224($zero)
    # Line 6269
    # lw $t9, -16084($gp) # &glReferencePlaneSGIX
    sd	$at,32($sp)
    # Line 6268
    lw	$at,6704($at)
    sd	$v0,24($sp)
    # Line 6269
    jal	glReferencePlaneSGIX
    # Line 6268
    sw	$at,5224($zero)
    # Line 6270
    ld	$v1,32($sp)
    # Line 6271
    # lw $t9, -16084($gp) # &glReferencePlaneSGIX
    # Line 6270
    lw	$v1,10824($v1)
    # Line 6271
    move	$a0,$s8
    jal	glReferencePlaneSGIX
    # Line 6270
    sw	$v1,5224($zero)
    ld	$gp,16($sp)
    # Line 6273
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6272
    sw	$a0,5224($zero)
.end __glce_ReferencePlaneSGIX

# Function: __glce_FrameZoomSGIX
# Declared: Line 6278 (Source lines: 6279-6289)
# Address: 0x0dbce8dc - 0x0dbce950 (Size: 116 bytes, Frame: 192)
.globl __glce_FrameZoomSGIX
.ent __glce_FrameZoomSGIX
__glce_FrameZoomSGIX:
    # Line 6279
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6281
    lw	$at,__glCurrentContext
    # Line 6279
    lui	$v0,0x3
    addiu	$v0,$v0,-580
    addu	$gp,$t9,$v0
    # Line 6283
    lw	$v0,5228($zero)
    # Line 6285
    # lw $t9, -16080($gp) # &glFrameZoomSGIX
    sd	$at,32($sp)
    # Line 6284
    lw	$at,6708($at)
    sd	$v0,24($sp)
    # Line 6285
    jal	glFrameZoomSGIX
    # Line 6284
    sw	$at,5228($zero)
    # Line 6286
    ld	$v1,32($sp)
    # Line 6287
    # lw $t9, -16080($gp) # &glFrameZoomSGIX
    # Line 6286
    lw	$v1,10828($v1)
    # Line 6287
    move	$a0,$s8
    jal	glFrameZoomSGIX
    # Line 6286
    sw	$v1,5228($zero)
    ld	$gp,16($sp)
    # Line 6289
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6288
    sw	$a0,5228($zero)
.end __glce_FrameZoomSGIX

# Function: __glce_IglooInterfaceSGIX
# Declared: Line 6294 (Source lines: 6295-6303)
# Address: 0x0dbce950 - 0x0dbce99c (Size: 76 bytes, Frame: 48)
.globl __glce_IglooInterfaceSGIX
.ent __glce_IglooInterfaceSGIX
__glce_IglooInterfaceSGIX:
    # Line 6295
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6299
    lw	$s8,5232($zero)
    sd	$gp,16($sp)
    # Line 6300
    lw	$at,__glCurrentContext
    # Line 6295
    lui	$v0,0x3
    addiu	$v0,$v0,-696
    addu	$gp,$t9,$v0
    # Line 6301
    # lw $t9, -16076($gp) # &glIglooInterfaceSGIX
    # Line 6300
    lw	$at,10832($at)
    sd	$ra,0($sp)
    # Line 6301
    jal	glIglooInterfaceSGIX
    # Line 6300
    sw	$at,5232($zero)
    ld	$gp,16($sp)
    # Line 6303
    ld	$ra,0($sp)
    # Line 6302
    sw	$s8,5232($zero)
    # Line 6303
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_IglooInterfaceSGIX

# Function: __glce_DeformationMap3dSGIX
# Declared: Line 6308 (Source lines: 6309-6319)
# Address: 0x0dbce99c - 0x0dbceac8 (Size: 300 bytes, Frame: 128)
.globl __glce_DeformationMap3dSGIX
.ent __glce_DeformationMap3dSGIX
__glce_DeformationMap3dSGIX:
    # Line 6309
    addiu	$sp,$sp,-256
    sd	$a7,168($sp)
    sdc1	$f18,72($sp)
    sdc1	$f17,80($sp)
    sd	$a4,176($sp)
    sd	$a3,184($sp)
    sdc1	$f14,88($sp)
    sdc1	$f30,48($sp)
    mov.d	$f30,$f13
    sd	$s8,104($sp)
    move	$s8,$a0
    sd	$ra,96($sp)
    # Line 6315
    lw	$at,260($sp)
    ldc1	$f0,264($sp)
    ldc1	$f1,272($sp)
    lw	$a1,300($sp)
    lw	$v1,292($sp)
    lw	$v0,284($sp)
    sd	$a1,152($sp)
    sd	$v1,144($sp)
    sd	$v0,136($sp)
    sdc1	$f1,64($sp)
    sdc1	$f0,56($sp)
    sd	$at,128($sp)
    sd	$gp,112($sp)
    # Line 6309
    lui	$a5,0x3
    addiu	$a5,$a5,-772
    # Line 6311
    lw	$a2,__glCurrentContext
    # Line 6309
    addu	$gp,$t9,$a5
    # Line 6313
    lw	$a5,5236($zero)
    sd	$a2,160($sp)
    # Line 6314
    lw	$a2,6716($a2)
    sd	$a5,120($sp)
    # Line 6315
    # lw $t9, -16072($gp) # &glDeformationMap3dSGIX
    # Line 6314
    sw	$a2,5236($zero)
    # Line 6315
    sw	$a1,44($sp)
    sw	$v1,36($sp)
    sw	$v0,28($sp)
    sdc1	$f1,16($sp)
    sdc1	$f0,8($sp)
    jal	glDeformationMap3dSGIX
    sw	$at,4($sp)
    ld	$a7,168($sp)
    # Line 6317
    ldc1	$f18,72($sp)
    ldc1	$f17,80($sp)
    ld	$a4,176($sp)
    ld	$a3,184($sp)
    ldc1	$f14,88($sp)
    mov.d	$f13,$f30
    move	$a0,$s8
    ld	$a6,128($sp)
    # lw $t9, -16072($gp) # &glDeformationMap3dSGIX
    ldc1	$f2,56($sp)
    # Line 6316
    ld	$t3,160($sp)
    # Line 6317
    ldc1	$f3,64($sp)
    ld	$t0,136($sp)
    # Line 6316
    lw	$t3,10836($t3)
    # Line 6317
    ld	$t2,152($sp)
    ld	$t1,144($sp)
    # Line 6316
    sw	$t3,5236($zero)
    # Line 6317
    sw	$t2,44($sp)
    sw	$t1,36($sp)
    sw	$t0,28($sp)
    sdc1	$f3,16($sp)
    sdc1	$f2,8($sp)
    jal	glDeformationMap3dSGIX
    sw	$a6,4($sp)
    ld	$gp,112($sp)
    ld	$s8,120($sp)
    # Line 6319
    ldc1	$f30,48($sp)
    ld	$ra,96($sp)
    # Line 6318
    sw	$s8,5236($zero)
    # Line 6319
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __glce_DeformationMap3dSGIX

# Function: __glce_DeformationMap3fSGIX
# Declared: Line 6324 (Source lines: 6325-6335)
# Address: 0x0dbceac8 - 0x0dbcebf4 (Size: 300 bytes, Frame: 128)
.globl __glce_DeformationMap3fSGIX
.ent __glce_DeformationMap3fSGIX
__glce_DeformationMap3fSGIX:
    # Line 6325
    addiu	$sp,$sp,-256
    sd	$a7,168($sp)
    sdc1	$f18,72($sp)
    sdc1	$f17,80($sp)
    sd	$a4,176($sp)
    sd	$a3,184($sp)
    sdc1	$f14,88($sp)
    sdc1	$f30,48($sp)
    mov.s	$f30,$f13
    sd	$s8,104($sp)
    move	$s8,$a0
    sd	$ra,96($sp)
    # Line 6331
    lw	$at,260($sp)
    lwc1	$f0,264($sp)
    lwc1	$f1,272($sp)
    lw	$a1,300($sp)
    lw	$v1,292($sp)
    lw	$v0,284($sp)
    sd	$a1,152($sp)
    sd	$v1,144($sp)
    sd	$v0,136($sp)
    sdc1	$f1,64($sp)
    sdc1	$f0,56($sp)
    sd	$at,128($sp)
    sd	$gp,112($sp)
    # Line 6325
    lui	$a5,0x3
    addiu	$a5,$a5,-1072
    # Line 6327
    lw	$a2,__glCurrentContext
    # Line 6325
    addu	$gp,$t9,$a5
    # Line 6329
    lw	$a5,5240($zero)
    sd	$a2,160($sp)
    # Line 6330
    lw	$a2,6720($a2)
    sd	$a5,120($sp)
    # Line 6331
    # lw $t9, -16068($gp) # &glDeformationMap3fSGIX
    # Line 6330
    sw	$a2,5240($zero)
    # Line 6331
    sw	$a1,44($sp)
    sw	$v1,36($sp)
    sw	$v0,28($sp)
    swc1	$f1,16($sp)
    swc1	$f0,8($sp)
    jal	glDeformationMap3fSGIX
    sw	$at,4($sp)
    ld	$a7,168($sp)
    # Line 6333
    ldc1	$f18,72($sp)
    ldc1	$f17,80($sp)
    ld	$a4,176($sp)
    ld	$a3,184($sp)
    ldc1	$f14,88($sp)
    mov.s	$f13,$f30
    move	$a0,$s8
    ld	$a6,128($sp)
    # lw $t9, -16068($gp) # &glDeformationMap3fSGIX
    ldc1	$f2,56($sp)
    # Line 6332
    ld	$t3,160($sp)
    # Line 6333
    ldc1	$f3,64($sp)
    ld	$t0,136($sp)
    # Line 6332
    lw	$t3,10840($t3)
    # Line 6333
    ld	$t2,152($sp)
    ld	$t1,144($sp)
    # Line 6332
    sw	$t3,5240($zero)
    # Line 6333
    sw	$t2,44($sp)
    sw	$t1,36($sp)
    sw	$t0,28($sp)
    swc1	$f3,16($sp)
    swc1	$f2,8($sp)
    jal	glDeformationMap3fSGIX
    sw	$a6,4($sp)
    ld	$gp,112($sp)
    ld	$s8,120($sp)
    # Line 6335
    ldc1	$f30,48($sp)
    ld	$ra,96($sp)
    # Line 6334
    sw	$s8,5240($zero)
    # Line 6335
    ld	$s8,104($sp)
    jr	$ra
    addiu	$sp,$sp,256
.end __glce_DeformationMap3fSGIX

# Function: __glce_DeformSGIX
# Declared: Line 6340 (Source lines: 6341-6351)
# Address: 0x0dbcebf4 - 0x0dbcec68 (Size: 116 bytes, Frame: 192)
.globl __glce_DeformSGIX
.ent __glce_DeformSGIX
__glce_DeformSGIX:
    # Line 6341
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6343
    lw	$at,__glCurrentContext
    # Line 6341
    lui	$v0,0x3
    addiu	$v0,$v0,-1372
    addu	$gp,$t9,$v0
    # Line 6345
    lw	$v0,5244($zero)
    # Line 6347
    # lw $t9, -16064($gp) # &glDeformSGIX
    sd	$at,32($sp)
    # Line 6346
    lw	$at,6724($at)
    sd	$v0,24($sp)
    # Line 6347
    jal	glDeformSGIX
    # Line 6346
    sw	$at,5244($zero)
    # Line 6348
    ld	$v1,32($sp)
    # Line 6349
    # lw $t9, -16064($gp) # &glDeformSGIX
    # Line 6348
    lw	$v1,10844($v1)
    # Line 6349
    move	$a0,$s8
    jal	glDeformSGIX
    # Line 6348
    sw	$v1,5244($zero)
    ld	$gp,16($sp)
    # Line 6351
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6350
    sw	$a0,5244($zero)
.end __glce_DeformSGIX

# Function: __glce_LoadIdentityDeformationMapSGIX
# Declared: Line 6356 (Source lines: 6357-6367)
# Address: 0x0dbcec68 - 0x0dbcecdc (Size: 116 bytes, Frame: 192)
.globl __glce_LoadIdentityDeformationMapSGIX
.ent __glce_LoadIdentityDeformationMapSGIX
__glce_LoadIdentityDeformationMapSGIX:
    # Line 6357
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6359
    lw	$at,__glCurrentContext
    # Line 6357
    lui	$v0,0x3
    addiu	$v0,$v0,-1488
    addu	$gp,$t9,$v0
    # Line 6361
    lw	$v0,5248($zero)
    # Line 6363
    # lw $t9, -16060($gp) # &glLoadIdentityDeformationMapSGIX
    sd	$at,32($sp)
    # Line 6362
    lw	$at,6728($at)
    sd	$v0,24($sp)
    # Line 6363
    jal	glLoadIdentityDeformationMapSGIX
    # Line 6362
    sw	$at,5248($zero)
    # Line 6364
    ld	$v1,32($sp)
    # Line 6365
    # lw $t9, -16060($gp) # &glLoadIdentityDeformationMapSGIX
    # Line 6364
    lw	$v1,10848($v1)
    # Line 6365
    move	$a0,$s8
    jal	glLoadIdentityDeformationMapSGIX
    # Line 6364
    sw	$v1,5248($zero)
    ld	$gp,16($sp)
    # Line 6367
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6366
    sw	$a0,5248($zero)
.end __glce_LoadIdentityDeformationMapSGIX

# Function: __glce_GetListParameterfvSGIX
# Declared: Line 6372 (Source lines: 6373-6381)
# Address: 0x0dbcecdc - 0x0dbced28 (Size: 76 bytes, Frame: 192)
.globl __glce_GetListParameterfvSGIX
.ent __glce_GetListParameterfvSGIX
__glce_GetListParameterfvSGIX:
    # Line 6373
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6377
    lw	$s8,5252($zero)
    sd	$gp,16($sp)
    # Line 6378
    lw	$at,__glCurrentContext
    # Line 6373
    lui	$v0,0x3
    addiu	$v0,$v0,-1604
    addu	$gp,$t9,$v0
    # Line 6379
    # lw $t9, -16056($gp) # &glGetListParameterfvSGIX
    # Line 6378
    lw	$at,10852($at)
    sd	$ra,0($sp)
    # Line 6379
    jal	glGetListParameterfvSGIX
    # Line 6378
    sw	$at,5252($zero)
    ld	$gp,16($sp)
    # Line 6381
    ld	$ra,0($sp)
    # Line 6380
    sw	$s8,5252($zero)
    # Line 6381
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetListParameterfvSGIX

# Function: __glce_GetListParameterivSGIX
# Declared: Line 6386 (Source lines: 6387-6395)
# Address: 0x0dbced28 - 0x0dbced74 (Size: 76 bytes, Frame: 192)
.globl __glce_GetListParameterivSGIX
.ent __glce_GetListParameterivSGIX
__glce_GetListParameterivSGIX:
    # Line 6387
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6391
    lw	$s8,5256($zero)
    sd	$gp,16($sp)
    # Line 6392
    lw	$at,__glCurrentContext
    # Line 6387
    lui	$v0,0x3
    addiu	$v0,$v0,-1680
    addu	$gp,$t9,$v0
    # Line 6393
    # lw $t9, -16052($gp) # &glGetListParameterivSGIX
    # Line 6392
    lw	$at,10856($at)
    sd	$ra,0($sp)
    # Line 6393
    jal	glGetListParameterivSGIX
    # Line 6392
    sw	$at,5256($zero)
    ld	$gp,16($sp)
    # Line 6395
    ld	$ra,0($sp)
    # Line 6394
    sw	$s8,5256($zero)
    # Line 6395
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetListParameterivSGIX

# Function: __glce_ListParameterfSGIX
# Declared: Line 6400 (Source lines: 6401-6409)
# Address: 0x0dbced74 - 0x0dbcedc0 (Size: 76 bytes, Frame: 192)
.globl __glce_ListParameterfSGIX
.ent __glce_ListParameterfSGIX
__glce_ListParameterfSGIX:
    # Line 6401
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6405
    lw	$s8,5260($zero)
    sd	$gp,16($sp)
    # Line 6406
    lw	$at,__glCurrentContext
    # Line 6401
    lui	$v0,0x3
    addiu	$v0,$v0,-1756
    addu	$gp,$t9,$v0
    # Line 6407
    # lw $t9, -16048($gp) # &glListParameterfSGIX
    # Line 6406
    lw	$at,10860($at)
    sd	$ra,0($sp)
    # Line 6407
    jal	glListParameterfSGIX
    # Line 6406
    sw	$at,5260($zero)
    ld	$gp,16($sp)
    # Line 6409
    ld	$ra,0($sp)
    # Line 6408
    sw	$s8,5260($zero)
    # Line 6409
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_ListParameterfSGIX

# Function: __glce_ListParameterfvSGIX
# Declared: Line 6414 (Source lines: 6415-6423)
# Address: 0x0dbcedc0 - 0x0dbcee0c (Size: 76 bytes, Frame: 192)
.globl __glce_ListParameterfvSGIX
.ent __glce_ListParameterfvSGIX
__glce_ListParameterfvSGIX:
    # Line 6415
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6419
    lw	$s8,5264($zero)
    sd	$gp,16($sp)
    # Line 6420
    lw	$at,__glCurrentContext
    # Line 6415
    lui	$v0,0x3
    addiu	$v0,$v0,-1832
    addu	$gp,$t9,$v0
    # Line 6421
    # lw $t9, -16044($gp) # &glListParameterfvSGIX
    # Line 6420
    lw	$at,10864($at)
    sd	$ra,0($sp)
    # Line 6421
    jal	glListParameterfvSGIX
    # Line 6420
    sw	$at,5264($zero)
    ld	$gp,16($sp)
    # Line 6423
    ld	$ra,0($sp)
    # Line 6422
    sw	$s8,5264($zero)
    # Line 6423
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_ListParameterfvSGIX

# Function: __glce_ListParameteriSGIX
# Declared: Line 6428 (Source lines: 6429-6437)
# Address: 0x0dbcee0c - 0x0dbcee58 (Size: 76 bytes, Frame: 192)
.globl __glce_ListParameteriSGIX
.ent __glce_ListParameteriSGIX
__glce_ListParameteriSGIX:
    # Line 6429
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6433
    lw	$s8,5268($zero)
    sd	$gp,16($sp)
    # Line 6434
    lw	$at,__glCurrentContext
    # Line 6429
    lui	$v0,0x3
    addiu	$v0,$v0,-1908
    addu	$gp,$t9,$v0
    # Line 6435
    # lw $t9, -16040($gp) # &glListParameteriSGIX
    # Line 6434
    lw	$at,10868($at)
    sd	$ra,0($sp)
    # Line 6435
    jal	glListParameteriSGIX
    # Line 6434
    sw	$at,5268($zero)
    ld	$gp,16($sp)
    # Line 6437
    ld	$ra,0($sp)
    # Line 6436
    sw	$s8,5268($zero)
    # Line 6437
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_ListParameteriSGIX

# Function: __glce_ListParameterivSGIX
# Declared: Line 6442 (Source lines: 6443-6451)
# Address: 0x0dbcee58 - 0x0dbceea4 (Size: 76 bytes, Frame: 192)
.globl __glce_ListParameterivSGIX
.ent __glce_ListParameterivSGIX
__glce_ListParameterivSGIX:
    # Line 6443
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6447
    lw	$s8,5272($zero)
    sd	$gp,16($sp)
    # Line 6448
    lw	$at,__glCurrentContext
    # Line 6443
    lui	$v0,0x3
    addiu	$v0,$v0,-1984
    addu	$gp,$t9,$v0
    # Line 6449
    # lw $t9, -16036($gp) # &glListParameterivSGIX
    # Line 6448
    lw	$at,10872($at)
    sd	$ra,0($sp)
    # Line 6449
    jal	glListParameterivSGIX
    # Line 6448
    sw	$at,5272($zero)
    ld	$gp,16($sp)
    # Line 6451
    ld	$ra,0($sp)
    # Line 6450
    sw	$s8,5272($zero)
    # Line 6451
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_ListParameterivSGIX

# Function: __glce_PixelTransformSGI
# Declared: Line 6456 (Source lines: 6457-6467)
# Address: 0x0dbceea4 - 0x0dbcef18 (Size: 116 bytes, Frame: 192)
.globl __glce_PixelTransformSGI
.ent __glce_PixelTransformSGI
__glce_PixelTransformSGI:
    # Line 6457
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6459
    lw	$at,__glCurrentContext
    # Line 6457
    lui	$v0,0x3
    addiu	$v0,$v0,-2060
    addu	$gp,$t9,$v0
    # Line 6461
    lw	$v0,5276($zero)
    # Line 6463
    # lw $t9, -16032($gp) # &glPixelTransformSGI
    sd	$at,32($sp)
    # Line 6462
    lw	$at,6756($at)
    sd	$v0,24($sp)
    # Line 6463
    jal	glPixelTransformSGI
    # Line 6462
    sw	$at,5276($zero)
    # Line 6464
    ld	$v1,32($sp)
    # Line 6465
    # lw $t9, -16032($gp) # &glPixelTransformSGI
    # Line 6464
    lw	$v1,10876($v1)
    # Line 6465
    move	$a0,$s8
    jal	glPixelTransformSGI
    # Line 6464
    sw	$v1,5276($zero)
    ld	$gp,16($sp)
    # Line 6467
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6466
    sw	$a0,5276($zero)
.end __glce_PixelTransformSGI

# Function: __glce_PixelTransformParameterfSGI
# Declared: Line 6472 (Source lines: 6473-6483)
# Address: 0x0dbcef18 - 0x0dbcefa4 (Size: 140 bytes, Frame: 224)
.globl __glce_PixelTransformParameterfSGI
.ent __glce_PixelTransformParameterfSGI
__glce_PixelTransformParameterfSGI:
    # Line 6473
    addiu	$sp,$sp,-96
    sdc1	$f30,0($sp)
    mov.s	$f30,$f14
    sd	$a1,48($sp)
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 6475
    lw	$at,__glCurrentContext
    # Line 6473
    lui	$v0,0x3
    addiu	$v0,$v0,-2176
    addu	$gp,$t9,$v0
    # Line 6477
    lw	$v0,5280($zero)
    # Line 6479
    # lw $t9, -16028($gp) # &glPixelTransformParameterfSGI
    sd	$at,40($sp)
    # Line 6478
    lw	$at,6760($at)
    sd	$v0,32($sp)
    # Line 6479
    jal	glPixelTransformParameterfSGI
    # Line 6478
    sw	$at,5280($zero)
    # Line 6481
    mov.s	$f14,$f30
    # Line 6480
    ld	$v1,40($sp)
    # Line 6481
    ld	$a1,48($sp)
    # lw $t9, -16028($gp) # &glPixelTransformParameterfSGI
    # Line 6480
    lw	$v1,10880($v1)
    # Line 6481
    move	$a0,$s8
    jal	glPixelTransformParameterfSGI
    # Line 6480
    sw	$v1,5280($zero)
    ld	$gp,24($sp)
    # Line 6483
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 6482
    sw	$a0,5280($zero)
.end __glce_PixelTransformParameterfSGI

# Function: __glce_PixelTransformParameterfvSGI
# Declared: Line 6488 (Source lines: 6489-6499)
# Address: 0x0dbcefa4 - 0x0dbcf028 (Size: 132 bytes, Frame: 224)
.globl __glce_PixelTransformParameterfvSGI
.ent __glce_PixelTransformParameterfvSGI
__glce_PixelTransformParameterfvSGI:
    # Line 6489
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6491
    lw	$at,__glCurrentContext
    # Line 6489
    lui	$v0,0x3
    addiu	$v0,$v0,-2316
    addu	$gp,$t9,$v0
    # Line 6493
    lw	$v0,5284($zero)
    # Line 6495
    # lw $t9, -16024($gp) # &glPixelTransformParameterfvSGI
    sd	$at,32($sp)
    # Line 6494
    lw	$at,6764($at)
    sd	$v0,24($sp)
    # Line 6495
    jal	glPixelTransformParameterfvSGI
    # Line 6494
    sw	$at,5284($zero)
    ld	$a2,40($sp)
    # Line 6496
    ld	$v1,32($sp)
    # Line 6497
    ld	$a1,48($sp)
    # lw $t9, -16024($gp) # &glPixelTransformParameterfvSGI
    # Line 6496
    lw	$v1,10884($v1)
    # Line 6497
    move	$a0,$s8
    jal	glPixelTransformParameterfvSGI
    # Line 6496
    sw	$v1,5284($zero)
    ld	$gp,16($sp)
    # Line 6499
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 6498
    sw	$a0,5284($zero)
.end __glce_PixelTransformParameterfvSGI

# Function: __glce_PixelTransformParameteriSGI
# Declared: Line 6504 (Source lines: 6505-6515)
# Address: 0x0dbcf028 - 0x0dbcf0ac (Size: 132 bytes, Frame: 224)
.globl __glce_PixelTransformParameteriSGI
.ent __glce_PixelTransformParameteriSGI
__glce_PixelTransformParameteriSGI:
    # Line 6505
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6507
    lw	$at,__glCurrentContext
    # Line 6505
    lui	$v0,0x3
    addiu	$v0,$v0,-2448
    addu	$gp,$t9,$v0
    # Line 6509
    lw	$v0,5288($zero)
    # Line 6511
    # lw $t9, -16020($gp) # &glPixelTransformParameteriSGI
    sd	$at,32($sp)
    # Line 6510
    lw	$at,6768($at)
    sd	$v0,24($sp)
    # Line 6511
    jal	glPixelTransformParameteriSGI
    # Line 6510
    sw	$at,5288($zero)
    ld	$a2,40($sp)
    # Line 6512
    ld	$v1,32($sp)
    # Line 6513
    ld	$a1,48($sp)
    # lw $t9, -16020($gp) # &glPixelTransformParameteriSGI
    # Line 6512
    lw	$v1,10888($v1)
    # Line 6513
    move	$a0,$s8
    jal	glPixelTransformParameteriSGI
    # Line 6512
    sw	$v1,5288($zero)
    ld	$gp,16($sp)
    # Line 6515
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 6514
    sw	$a0,5288($zero)
.end __glce_PixelTransformParameteriSGI

# Function: __glce_PixelTransformParameterivSGI
# Declared: Line 6520 (Source lines: 6521-6531)
# Address: 0x0dbcf0ac - 0x0dbcf130 (Size: 132 bytes, Frame: 224)
.globl __glce_PixelTransformParameterivSGI
.ent __glce_PixelTransformParameterivSGI
__glce_PixelTransformParameterivSGI:
    # Line 6521
    addiu	$sp,$sp,-96
    sd	$a2,40($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6523
    lw	$at,__glCurrentContext
    # Line 6521
    lui	$v0,0x3
    addiu	$v0,$v0,-2580
    addu	$gp,$t9,$v0
    # Line 6525
    lw	$v0,5292($zero)
    # Line 6527
    # lw $t9, -16016($gp) # &glPixelTransformParameterivSGI
    sd	$at,32($sp)
    # Line 6526
    lw	$at,6772($at)
    sd	$v0,24($sp)
    # Line 6527
    jal	glPixelTransformParameterivSGI
    # Line 6526
    sw	$at,5292($zero)
    ld	$a2,40($sp)
    # Line 6528
    ld	$v1,32($sp)
    # Line 6529
    ld	$a1,48($sp)
    # lw $t9, -16016($gp) # &glPixelTransformParameterivSGI
    # Line 6528
    lw	$v1,10892($v1)
    # Line 6529
    move	$a0,$s8
    jal	glPixelTransformParameterivSGI
    # Line 6528
    sw	$v1,5292($zero)
    ld	$gp,16($sp)
    # Line 6531
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 6530
    sw	$a0,5292($zero)
.end __glce_PixelTransformParameterivSGI

# Function: __glce_GetPixelTransformParameterfvSGI
# Declared: Line 6536 (Source lines: 6537-6545)
# Address: 0x0dbcf130 - 0x0dbcf17c (Size: 76 bytes, Frame: 192)
.globl __glce_GetPixelTransformParameterfvSGI
.ent __glce_GetPixelTransformParameterfvSGI
__glce_GetPixelTransformParameterfvSGI:
    # Line 6537
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6541
    lw	$s8,5296($zero)
    sd	$gp,16($sp)
    # Line 6542
    lw	$at,__glCurrentContext
    # Line 6537
    lui	$v0,0x3
    addiu	$v0,$v0,-2712
    addu	$gp,$t9,$v0
    # Line 6543
    # lw $t9, -16012($gp) # &glGetPixelTransformParameterfvSGI
    # Line 6542
    lw	$at,10896($at)
    sd	$ra,0($sp)
    # Line 6543
    jal	glGetPixelTransformParameterfvSGI
    # Line 6542
    sw	$at,5296($zero)
    ld	$gp,16($sp)
    # Line 6545
    ld	$ra,0($sp)
    # Line 6544
    sw	$s8,5296($zero)
    # Line 6545
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetPixelTransformParameterfvSGI

# Function: __glce_GetPixelTransformParameterivSGI
# Declared: Line 6550 (Source lines: 6551-6559)
# Address: 0x0dbcf17c - 0x0dbcf1c8 (Size: 76 bytes, Frame: 192)
.globl __glce_GetPixelTransformParameterivSGI
.ent __glce_GetPixelTransformParameterivSGI
__glce_GetPixelTransformParameterivSGI:
    # Line 6551
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6555
    lw	$s8,5300($zero)
    sd	$gp,16($sp)
    # Line 6556
    lw	$at,__glCurrentContext
    # Line 6551
    lui	$v0,0x3
    addiu	$v0,$v0,-2788
    addu	$gp,$t9,$v0
    # Line 6557
    # lw $t9, -16008($gp) # &glGetPixelTransformParameterivSGI
    # Line 6556
    lw	$at,10900($at)
    sd	$ra,0($sp)
    # Line 6557
    jal	glGetPixelTransformParameterivSGI
    # Line 6556
    sw	$at,5300($zero)
    ld	$gp,16($sp)
    # Line 6559
    ld	$ra,0($sp)
    # Line 6558
    sw	$s8,5300($zero)
    # Line 6559
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetPixelTransformParameterivSGI

# Function: __glce_SubdivPatchSGIX
# Declared: Line 6564 (Source lines: 6565-6573)
# Address: 0x0dbcf1c8 - 0x0dbcf214 (Size: 76 bytes, Frame: 192)
.globl __glce_SubdivPatchSGIX
.ent __glce_SubdivPatchSGIX
__glce_SubdivPatchSGIX:
    # Line 6565
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6569
    lw	$s8,5304($zero)
    sd	$gp,16($sp)
    # Line 6570
    lw	$at,__glCurrentContext
    # Line 6565
    lui	$v0,0x3
    addiu	$v0,$v0,-2864
    addu	$gp,$t9,$v0
    # Line 6571
    # lw $t9, -16004($gp) # &glSubdivPatchSGIX
    # Line 6570
    lw	$at,10904($at)
    sd	$ra,0($sp)
    # Line 6571
    jal	glSubdivPatchSGIX
    # Line 6570
    sw	$at,5304($zero)
    ld	$gp,16($sp)
    # Line 6573
    ld	$ra,0($sp)
    # Line 6572
    sw	$s8,5304($zero)
    # Line 6573
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_SubdivPatchSGIX

# Function: __glce_SubdivPatchParameterfSGIX
# Declared: Line 6578 (Source lines: 6579-6589)
# Address: 0x0dbcf214 - 0x0dbcf298 (Size: 132 bytes, Frame: 192)
.globl __glce_SubdivPatchParameterfSGIX
.ent __glce_SubdivPatchParameterfSGIX
__glce_SubdivPatchParameterfSGIX:
    # Line 6579
    addiu	$sp,$sp,-64
    sdc1	$f30,0($sp)
    mov.s	$f30,$f13
    sd	$s8,16($sp)
    move	$s8,$a0
    sd	$ra,8($sp)
    sd	$gp,24($sp)
    # Line 6581
    lw	$at,__glCurrentContext
    # Line 6579
    lui	$v0,0x3
    addiu	$v0,$v0,-2940
    addu	$gp,$t9,$v0
    # Line 6583
    lw	$v0,5308($zero)
    # Line 6585
    # lw $t9, -16000($gp) # &glSubdivPatchParameterfSGIX
    sd	$at,40($sp)
    # Line 6584
    lw	$at,6788($at)
    sd	$v0,32($sp)
    # Line 6585
    jal	glSubdivPatchParameterfSGIX
    # Line 6584
    sw	$at,5308($zero)
    # Line 6586
    ld	$v1,40($sp)
    # Line 6587
    mov.s	$f13,$f30
    # lw $t9, -16000($gp) # &glSubdivPatchParameterfSGIX
    # Line 6586
    lw	$v1,10908($v1)
    # Line 6587
    move	$a0,$s8
    jal	glSubdivPatchParameterfSGIX
    # Line 6586
    sw	$v1,5308($zero)
    ld	$gp,24($sp)
    # Line 6589
    ld	$s8,16($sp)
    ldc1	$f30,0($sp)
    ld	$ra,8($sp)
    ld	$a0,32($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6588
    sw	$a0,5308($zero)
.end __glce_SubdivPatchParameterfSGIX

# Function: __glce_SubdivPatchParameteriSGIX
# Declared: Line 6594 (Source lines: 6595-6605)
# Address: 0x0dbcf298 - 0x0dbcf314 (Size: 124 bytes, Frame: 192)
.globl __glce_SubdivPatchParameteriSGIX
.ent __glce_SubdivPatchParameteriSGIX
__glce_SubdivPatchParameteriSGIX:
    # Line 6595
    addiu	$sp,$sp,-64
    sd	$a1,40($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6597
    lw	$at,__glCurrentContext
    # Line 6595
    lui	$v0,0x3
    addiu	$v0,$v0,-3072
    addu	$gp,$t9,$v0
    # Line 6599
    lw	$v0,5312($zero)
    # Line 6601
    # lw $t9, -15996($gp) # &glSubdivPatchParameteriSGIX
    sd	$at,32($sp)
    # Line 6600
    lw	$at,6792($at)
    sd	$v0,24($sp)
    # Line 6601
    jal	glSubdivPatchParameteriSGIX
    # Line 6600
    sw	$at,5312($zero)
    # Line 6602
    ld	$v1,32($sp)
    ld	$a1,40($sp)
    # Line 6603
    # lw $t9, -15996($gp) # &glSubdivPatchParameteriSGIX
    # Line 6602
    lw	$v1,10912($v1)
    # Line 6603
    move	$a0,$s8
    jal	glSubdivPatchParameteriSGIX
    # Line 6602
    sw	$v1,5312($zero)
    ld	$gp,16($sp)
    # Line 6605
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 6604
    sw	$a0,5312($zero)
.end __glce_SubdivPatchParameteriSGIX

# Function: __glce_NurbsKnots1dSGIX
# Declared: Line 6610 (Source lines: 6611-6621)
# Address: 0x0dbcf314 - 0x0dbcf3a0 (Size: 140 bytes, Frame: 224)
.globl __glce_NurbsKnots1dSGIX
.ent __glce_NurbsKnots1dSGIX
__glce_NurbsKnots1dSGIX:
    # Line 6611
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6613
    lw	$at,__glCurrentContext
    # Line 6611
    lui	$v0,0x3
    addiu	$v0,$v0,-3196
    addu	$gp,$t9,$v0
    # Line 6615
    lw	$v0,5316($zero)
    # Line 6617
    # lw $t9, -15992($gp) # &glNurbsKnots1dSGIX
    sd	$at,32($sp)
    # Line 6616
    lw	$at,6796($at)
    sd	$v0,24($sp)
    # Line 6617
    jal	glNurbsKnots1dSGIX
    # Line 6616
    sw	$at,5316($zero)
    ld	$a3,40($sp)
    # Line 6619
    ld	$a2,48($sp)
    # Line 6618
    ld	$v1,32($sp)
    # Line 6619
    ld	$a1,56($sp)
    # lw $t9, -15992($gp) # &glNurbsKnots1dSGIX
    # Line 6618
    lw	$v1,10916($v1)
    # Line 6619
    move	$a0,$s8
    jal	glNurbsKnots1dSGIX
    # Line 6618
    sw	$v1,5316($zero)
    ld	$gp,16($sp)
    # Line 6621
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 6620
    sw	$a0,5316($zero)
.end __glce_NurbsKnots1dSGIX

# Function: __glce_NurbsKnots1fSGIX
# Declared: Line 6626 (Source lines: 6627-6637)
# Address: 0x0dbcf3a0 - 0x0dbcf42c (Size: 140 bytes, Frame: 224)
.globl __glce_NurbsKnots1fSGIX
.ent __glce_NurbsKnots1fSGIX
__glce_NurbsKnots1fSGIX:
    # Line 6627
    addiu	$sp,$sp,-96
    sd	$a3,40($sp)
    sd	$a2,48($sp)
    sd	$a1,56($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6629
    lw	$at,__glCurrentContext
    # Line 6627
    lui	$v0,0x3
    addiu	$v0,$v0,-3336
    addu	$gp,$t9,$v0
    # Line 6631
    lw	$v0,5320($zero)
    # Line 6633
    # lw $t9, -15988($gp) # &glNurbsKnots1fSGIX
    sd	$at,32($sp)
    # Line 6632
    lw	$at,6800($at)
    sd	$v0,24($sp)
    # Line 6633
    jal	glNurbsKnots1fSGIX
    # Line 6632
    sw	$at,5320($zero)
    ld	$a3,40($sp)
    # Line 6635
    ld	$a2,48($sp)
    # Line 6634
    ld	$v1,32($sp)
    # Line 6635
    ld	$a1,56($sp)
    # lw $t9, -15988($gp) # &glNurbsKnots1fSGIX
    # Line 6634
    lw	$v1,10920($v1)
    # Line 6635
    move	$a0,$s8
    jal	glNurbsKnots1fSGIX
    # Line 6634
    sw	$v1,5320($zero)
    ld	$gp,16($sp)
    # Line 6637
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 6636
    sw	$a0,5320($zero)
.end __glce_NurbsKnots1fSGIX

# Function: __glce_NurbsKnots2dSGIX
# Declared: Line 6642 (Source lines: 6643-6653)
# Address: 0x0dbcf42c - 0x0dbcf4d0 (Size: 164 bytes, Frame: 160)
.globl __glce_NurbsKnots2dSGIX
.ent __glce_NurbsKnots2dSGIX
__glce_NurbsKnots2dSGIX:
    # Line 6643
    addiu	$sp,$sp,-160
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    sd	$a3,64($sp)
    sd	$a2,72($sp)
    sd	$a1,80($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6645
    lw	$at,__glCurrentContext
    # Line 6643
    lui	$v0,0x3
    addiu	$v0,$v0,-3476
    addu	$gp,$t9,$v0
    # Line 6647
    lw	$v0,5324($zero)
    # Line 6649
    # lw $t9, -15984($gp) # &glNurbsKnots2dSGIX
    sd	$at,32($sp)
    # Line 6648
    lw	$at,6804($at)
    sd	$v0,24($sp)
    # Line 6649
    jal	glNurbsKnots2dSGIX
    # Line 6648
    sw	$at,5324($zero)
    ld	$a6,40($sp)
    # Line 6651
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a2,72($sp)
    # Line 6650
    ld	$v1,32($sp)
    # Line 6651
    ld	$a1,80($sp)
    # lw $t9, -15984($gp) # &glNurbsKnots2dSGIX
    # Line 6650
    lw	$v1,10924($v1)
    # Line 6651
    move	$a0,$s8
    jal	glNurbsKnots2dSGIX
    # Line 6650
    sw	$v1,5324($zero)
    ld	$gp,16($sp)
    # Line 6653
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 6652
    sw	$a0,5324($zero)
.end __glce_NurbsKnots2dSGIX

# Function: __glce_NurbsKnots2fSGIX
# Declared: Line 6658 (Source lines: 6659-6669)
# Address: 0x0dbcf4d0 - 0x0dbcf574 (Size: 164 bytes, Frame: 160)
.globl __glce_NurbsKnots2fSGIX
.ent __glce_NurbsKnots2fSGIX
__glce_NurbsKnots2fSGIX:
    # Line 6659
    addiu	$sp,$sp,-160
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    sd	$a4,56($sp)
    sd	$a3,64($sp)
    sd	$a2,72($sp)
    sd	$a1,80($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    sd	$gp,16($sp)
    # Line 6661
    lw	$at,__glCurrentContext
    # Line 6659
    lui	$v0,0x3
    addiu	$v0,$v0,-3640
    addu	$gp,$t9,$v0
    # Line 6663
    lw	$v0,5328($zero)
    # Line 6665
    # lw $t9, -15980($gp) # &glNurbsKnots2fSGIX
    sd	$at,32($sp)
    # Line 6664
    lw	$at,6808($at)
    sd	$v0,24($sp)
    # Line 6665
    jal	glNurbsKnots2fSGIX
    # Line 6664
    sw	$at,5328($zero)
    ld	$a6,40($sp)
    # Line 6667
    ld	$a5,48($sp)
    ld	$a4,56($sp)
    ld	$a3,64($sp)
    ld	$a2,72($sp)
    # Line 6666
    ld	$v1,32($sp)
    # Line 6667
    ld	$a1,80($sp)
    # lw $t9, -15980($gp) # &glNurbsKnots2fSGIX
    # Line 6666
    lw	$v1,10928($v1)
    # Line 6667
    move	$a0,$s8
    jal	glNurbsKnots2fSGIX
    # Line 6666
    sw	$v1,5328($zero)
    ld	$gp,16($sp)
    # Line 6669
    ld	$s8,8($sp)
    ld	$ra,0($sp)
    ld	$a0,24($sp)
    addiu	$sp,$sp,160
    jr	$ra
    # Line 6668
    sw	$a0,5328($zero)
.end __glce_NurbsKnots2fSGIX

# Function: __glce_FragmentColorMaterialSGIX
# Declared: Line 6674 (Source lines: 6675-6683)
# Address: 0x0dbcf574 - 0x0dbcf5c0 (Size: 76 bytes, Frame: 48)
.globl __glce_FragmentColorMaterialSGIX
.ent __glce_FragmentColorMaterialSGIX
__glce_FragmentColorMaterialSGIX:
    # Line 6675
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6679
    lw	$s8,5332($zero)
    sd	$gp,16($sp)
    # Line 6680
    lw	$at,__glCurrentContext
    # Line 6675
    lui	$v0,0x3
    addiu	$v0,$v0,-3804
    addu	$gp,$t9,$v0
    # Line 6681
    # lw $t9, -15976($gp) # &glFragmentColorMaterialSGIX
    # Line 6680
    lw	$at,10932($at)
    sd	$ra,0($sp)
    # Line 6681
    jal	glFragmentColorMaterialSGIX
    # Line 6680
    sw	$at,5332($zero)
    ld	$gp,16($sp)
    # Line 6683
    ld	$ra,0($sp)
    # Line 6682
    sw	$s8,5332($zero)
    # Line 6683
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_FragmentColorMaterialSGIX

# Function: __glce_FragmentLightfSGIX
# Declared: Line 6688 (Source lines: 6689-6697)
# Address: 0x0dbcf5c0 - 0x0dbcf60c (Size: 76 bytes, Frame: 192)
.globl __glce_FragmentLightfSGIX
.ent __glce_FragmentLightfSGIX
__glce_FragmentLightfSGIX:
    # Line 6689
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6693
    lw	$s8,5336($zero)
    sd	$gp,16($sp)
    # Line 6694
    lw	$at,__glCurrentContext
    # Line 6689
    lui	$v0,0x3
    addiu	$v0,$v0,-3880
    addu	$gp,$t9,$v0
    # Line 6695
    # lw $t9, -15972($gp) # &glFragmentLightfSGIX
    # Line 6694
    lw	$at,10936($at)
    sd	$ra,0($sp)
    # Line 6695
    jal	glFragmentLightfSGIX
    # Line 6694
    sw	$at,5336($zero)
    ld	$gp,16($sp)
    # Line 6697
    ld	$ra,0($sp)
    # Line 6696
    sw	$s8,5336($zero)
    # Line 6697
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FragmentLightfSGIX

# Function: __glce_FragmentLightfvSGIX
# Declared: Line 6702 (Source lines: 6703-6711)
# Address: 0x0dbcf60c - 0x0dbcf658 (Size: 76 bytes, Frame: 192)
.globl __glce_FragmentLightfvSGIX
.ent __glce_FragmentLightfvSGIX
__glce_FragmentLightfvSGIX:
    # Line 6703
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6707
    lw	$s8,5340($zero)
    sd	$gp,16($sp)
    # Line 6708
    lw	$at,__glCurrentContext
    # Line 6703
    lui	$v0,0x3
    addiu	$v0,$v0,-3956
    addu	$gp,$t9,$v0
    # Line 6709
    # lw $t9, -15968($gp) # &glFragmentLightfvSGIX
    # Line 6708
    lw	$at,10940($at)
    sd	$ra,0($sp)
    # Line 6709
    jal	glFragmentLightfvSGIX
    # Line 6708
    sw	$at,5340($zero)
    ld	$gp,16($sp)
    # Line 6711
    ld	$ra,0($sp)
    # Line 6710
    sw	$s8,5340($zero)
    # Line 6711
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FragmentLightfvSGIX

# Function: __glce_FragmentLightiSGIX
# Declared: Line 6716 (Source lines: 6717-6725)
# Address: 0x0dbcf658 - 0x0dbcf6a4 (Size: 76 bytes, Frame: 192)
.globl __glce_FragmentLightiSGIX
.ent __glce_FragmentLightiSGIX
__glce_FragmentLightiSGIX:
    # Line 6717
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6721
    lw	$s8,5344($zero)
    sd	$gp,16($sp)
    # Line 6722
    lw	$at,__glCurrentContext
    # Line 6717
    lui	$v0,0x3
    addiu	$v0,$v0,-4032
    addu	$gp,$t9,$v0
    # Line 6723
    # lw $t9, -15964($gp) # &glFragmentLightiSGIX
    # Line 6722
    lw	$at,10944($at)
    sd	$ra,0($sp)
    # Line 6723
    jal	glFragmentLightiSGIX
    # Line 6722
    sw	$at,5344($zero)
    ld	$gp,16($sp)
    # Line 6725
    ld	$ra,0($sp)
    # Line 6724
    sw	$s8,5344($zero)
    # Line 6725
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FragmentLightiSGIX

# Function: __glce_FragmentLightivSGIX
# Declared: Line 6730 (Source lines: 6731-6739)
# Address: 0x0dbcf6a4 - 0x0dbcf6f0 (Size: 76 bytes, Frame: 192)
.globl __glce_FragmentLightivSGIX
.ent __glce_FragmentLightivSGIX
__glce_FragmentLightivSGIX:
    # Line 6731
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6735
    lw	$s8,5348($zero)
    sd	$gp,16($sp)
    # Line 6736
    lw	$at,__glCurrentContext
    # Line 6731
    lui	$v0,0x3
    addiu	$v0,$v0,-4108
    addu	$gp,$t9,$v0
    # Line 6737
    # lw $t9, -15960($gp) # &glFragmentLightivSGIX
    # Line 6736
    lw	$at,10948($at)
    sd	$ra,0($sp)
    # Line 6737
    jal	glFragmentLightivSGIX
    # Line 6736
    sw	$at,5348($zero)
    ld	$gp,16($sp)
    # Line 6739
    ld	$ra,0($sp)
    # Line 6738
    sw	$s8,5348($zero)
    # Line 6739
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FragmentLightivSGIX

# Function: __glce_FragmentLightModelfSGIX
# Declared: Line 6744 (Source lines: 6745-6753)
# Address: 0x0dbcf6f0 - 0x0dbcf73c (Size: 76 bytes, Frame: 48)
.globl __glce_FragmentLightModelfSGIX
.ent __glce_FragmentLightModelfSGIX
__glce_FragmentLightModelfSGIX:
    # Line 6745
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6749
    lw	$s8,5352($zero)
    sd	$gp,16($sp)
    # Line 6750
    lw	$at,__glCurrentContext
    # Line 6745
    lui	$v0,0x3
    addiu	$v0,$v0,-4184
    addu	$gp,$t9,$v0
    # Line 6751
    # lw $t9, -15956($gp) # &glFragmentLightModelfSGIX
    # Line 6750
    lw	$at,10952($at)
    sd	$ra,0($sp)
    # Line 6751
    jal	glFragmentLightModelfSGIX
    # Line 6750
    sw	$at,5352($zero)
    ld	$gp,16($sp)
    # Line 6753
    ld	$ra,0($sp)
    # Line 6752
    sw	$s8,5352($zero)
    # Line 6753
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_FragmentLightModelfSGIX

# Function: __glce_FragmentLightModelfvSGIX
# Declared: Line 6758 (Source lines: 6759-6767)
# Address: 0x0dbcf73c - 0x0dbcf788 (Size: 76 bytes, Frame: 48)
.globl __glce_FragmentLightModelfvSGIX
.ent __glce_FragmentLightModelfvSGIX
__glce_FragmentLightModelfvSGIX:
    # Line 6759
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6763
    lw	$s8,5356($zero)
    sd	$gp,16($sp)
    # Line 6764
    lw	$at,__glCurrentContext
    # Line 6759
    lui	$v0,0x3
    addiu	$v0,$v0,-4260
    addu	$gp,$t9,$v0
    # Line 6765
    # lw $t9, -15952($gp) # &glFragmentLightModelfvSGIX
    # Line 6764
    lw	$at,10956($at)
    sd	$ra,0($sp)
    # Line 6765
    jal	glFragmentLightModelfvSGIX
    # Line 6764
    sw	$at,5356($zero)
    ld	$gp,16($sp)
    # Line 6767
    ld	$ra,0($sp)
    # Line 6766
    sw	$s8,5356($zero)
    # Line 6767
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_FragmentLightModelfvSGIX

# Function: __glce_FragmentLightModeliSGIX
# Declared: Line 6772 (Source lines: 6773-6781)
# Address: 0x0dbcf788 - 0x0dbcf7d4 (Size: 76 bytes, Frame: 48)
.globl __glce_FragmentLightModeliSGIX
.ent __glce_FragmentLightModeliSGIX
__glce_FragmentLightModeliSGIX:
    # Line 6773
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6777
    lw	$s8,5360($zero)
    sd	$gp,16($sp)
    # Line 6778
    lw	$at,__glCurrentContext
    # Line 6773
    lui	$v0,0x3
    addiu	$v0,$v0,-4336
    addu	$gp,$t9,$v0
    # Line 6779
    # lw $t9, -15948($gp) # &glFragmentLightModeliSGIX
    # Line 6778
    lw	$at,10960($at)
    sd	$ra,0($sp)
    # Line 6779
    jal	glFragmentLightModeliSGIX
    # Line 6778
    sw	$at,5360($zero)
    ld	$gp,16($sp)
    # Line 6781
    ld	$ra,0($sp)
    # Line 6780
    sw	$s8,5360($zero)
    # Line 6781
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_FragmentLightModeliSGIX

# Function: __glce_FragmentLightModelivSGIX
# Declared: Line 6786 (Source lines: 6787-6795)
# Address: 0x0dbcf7d4 - 0x0dbcf820 (Size: 76 bytes, Frame: 48)
.globl __glce_FragmentLightModelivSGIX
.ent __glce_FragmentLightModelivSGIX
__glce_FragmentLightModelivSGIX:
    # Line 6787
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6791
    lw	$s8,5364($zero)
    sd	$gp,16($sp)
    # Line 6792
    lw	$at,__glCurrentContext
    # Line 6787
    lui	$v0,0x3
    addiu	$v0,$v0,-4412
    addu	$gp,$t9,$v0
    # Line 6793
    # lw $t9, -15944($gp) # &glFragmentLightModelivSGIX
    # Line 6792
    lw	$at,10964($at)
    sd	$ra,0($sp)
    # Line 6793
    jal	glFragmentLightModelivSGIX
    # Line 6792
    sw	$at,5364($zero)
    ld	$gp,16($sp)
    # Line 6795
    ld	$ra,0($sp)
    # Line 6794
    sw	$s8,5364($zero)
    # Line 6795
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_FragmentLightModelivSGIX

# Function: __glce_FragmentMaterialfSGIX
# Declared: Line 6800 (Source lines: 6801-6809)
# Address: 0x0dbcf820 - 0x0dbcf86c (Size: 76 bytes, Frame: 192)
.globl __glce_FragmentMaterialfSGIX
.ent __glce_FragmentMaterialfSGIX
__glce_FragmentMaterialfSGIX:
    # Line 6801
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6805
    lw	$s8,5368($zero)
    sd	$gp,16($sp)
    # Line 6806
    lw	$at,__glCurrentContext
    # Line 6801
    lui	$v0,0x3
    addiu	$v0,$v0,-4488
    addu	$gp,$t9,$v0
    # Line 6807
    # lw $t9, -15940($gp) # &glFragmentMaterialfSGIX
    # Line 6806
    lw	$at,10968($at)
    sd	$ra,0($sp)
    # Line 6807
    jal	glFragmentMaterialfSGIX
    # Line 6806
    sw	$at,5368($zero)
    ld	$gp,16($sp)
    # Line 6809
    ld	$ra,0($sp)
    # Line 6808
    sw	$s8,5368($zero)
    # Line 6809
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FragmentMaterialfSGIX

# Function: __glce_FragmentMaterialfvSGIX
# Declared: Line 6814 (Source lines: 6815-6823)
# Address: 0x0dbcf86c - 0x0dbcf8b8 (Size: 76 bytes, Frame: 192)
.globl __glce_FragmentMaterialfvSGIX
.ent __glce_FragmentMaterialfvSGIX
__glce_FragmentMaterialfvSGIX:
    # Line 6815
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6819
    lw	$s8,5372($zero)
    sd	$gp,16($sp)
    # Line 6820
    lw	$at,__glCurrentContext
    # Line 6815
    lui	$v0,0x3
    addiu	$v0,$v0,-4564
    addu	$gp,$t9,$v0
    # Line 6821
    # lw $t9, -15936($gp) # &glFragmentMaterialfvSGIX
    # Line 6820
    lw	$at,10972($at)
    sd	$ra,0($sp)
    # Line 6821
    jal	glFragmentMaterialfvSGIX
    # Line 6820
    sw	$at,5372($zero)
    ld	$gp,16($sp)
    # Line 6823
    ld	$ra,0($sp)
    # Line 6822
    sw	$s8,5372($zero)
    # Line 6823
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FragmentMaterialfvSGIX

# Function: __glce_FragmentMaterialiSGIX
# Declared: Line 6828 (Source lines: 6829-6837)
# Address: 0x0dbcf8b8 - 0x0dbcf904 (Size: 76 bytes, Frame: 192)
.globl __glce_FragmentMaterialiSGIX
.ent __glce_FragmentMaterialiSGIX
__glce_FragmentMaterialiSGIX:
    # Line 6829
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6833
    lw	$s8,5376($zero)
    sd	$gp,16($sp)
    # Line 6834
    lw	$at,__glCurrentContext
    # Line 6829
    lui	$v0,0x3
    addiu	$v0,$v0,-4640
    addu	$gp,$t9,$v0
    # Line 6835
    # lw $t9, -15932($gp) # &glFragmentMaterialiSGIX
    # Line 6834
    lw	$at,10976($at)
    sd	$ra,0($sp)
    # Line 6835
    jal	glFragmentMaterialiSGIX
    # Line 6834
    sw	$at,5376($zero)
    ld	$gp,16($sp)
    # Line 6837
    ld	$ra,0($sp)
    # Line 6836
    sw	$s8,5376($zero)
    # Line 6837
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FragmentMaterialiSGIX

# Function: __glce_FragmentMaterialivSGIX
# Declared: Line 6842 (Source lines: 6843-6851)
# Address: 0x0dbcf904 - 0x0dbcf950 (Size: 76 bytes, Frame: 192)
.globl __glce_FragmentMaterialivSGIX
.ent __glce_FragmentMaterialivSGIX
__glce_FragmentMaterialivSGIX:
    # Line 6843
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6847
    lw	$s8,5380($zero)
    sd	$gp,16($sp)
    # Line 6848
    lw	$at,__glCurrentContext
    # Line 6843
    lui	$v0,0x3
    addiu	$v0,$v0,-4716
    addu	$gp,$t9,$v0
    # Line 6849
    # lw $t9, -15928($gp) # &glFragmentMaterialivSGIX
    # Line 6848
    lw	$at,10980($at)
    sd	$ra,0($sp)
    # Line 6849
    jal	glFragmentMaterialivSGIX
    # Line 6848
    sw	$at,5380($zero)
    ld	$gp,16($sp)
    # Line 6851
    ld	$ra,0($sp)
    # Line 6850
    sw	$s8,5380($zero)
    # Line 6851
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_FragmentMaterialivSGIX

# Function: __glce_GetFragmentLightfvSGIX
# Declared: Line 6856 (Source lines: 6857-6865)
# Address: 0x0dbcf950 - 0x0dbcf99c (Size: 76 bytes, Frame: 192)
.globl __glce_GetFragmentLightfvSGIX
.ent __glce_GetFragmentLightfvSGIX
__glce_GetFragmentLightfvSGIX:
    # Line 6857
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6861
    lw	$s8,5384($zero)
    sd	$gp,16($sp)
    # Line 6862
    lw	$at,__glCurrentContext
    # Line 6857
    lui	$v0,0x3
    addiu	$v0,$v0,-4792
    addu	$gp,$t9,$v0
    # Line 6863
    # lw $t9, -15924($gp) # &glGetFragmentLightfvSGIX
    # Line 6862
    lw	$at,10984($at)
    sd	$ra,0($sp)
    # Line 6863
    jal	glGetFragmentLightfvSGIX
    # Line 6862
    sw	$at,5384($zero)
    ld	$gp,16($sp)
    # Line 6865
    ld	$ra,0($sp)
    # Line 6864
    sw	$s8,5384($zero)
    # Line 6865
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetFragmentLightfvSGIX

# Function: __glce_GetFragmentLightivSGIX
# Declared: Line 6870 (Source lines: 6871-6879)
# Address: 0x0dbcf99c - 0x0dbcf9e8 (Size: 76 bytes, Frame: 192)
.globl __glce_GetFragmentLightivSGIX
.ent __glce_GetFragmentLightivSGIX
__glce_GetFragmentLightivSGIX:
    # Line 6871
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6875
    lw	$s8,5388($zero)
    sd	$gp,16($sp)
    # Line 6876
    lw	$at,__glCurrentContext
    # Line 6871
    lui	$v0,0x3
    addiu	$v0,$v0,-4868
    addu	$gp,$t9,$v0
    # Line 6877
    # lw $t9, -15920($gp) # &glGetFragmentLightivSGIX
    # Line 6876
    lw	$at,10988($at)
    sd	$ra,0($sp)
    # Line 6877
    jal	glGetFragmentLightivSGIX
    # Line 6876
    sw	$at,5388($zero)
    ld	$gp,16($sp)
    # Line 6879
    ld	$ra,0($sp)
    # Line 6878
    sw	$s8,5388($zero)
    # Line 6879
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetFragmentLightivSGIX

# Function: __glce_GetFragmentMaterialfvSGIX
# Declared: Line 6884 (Source lines: 6885-6893)
# Address: 0x0dbcf9e8 - 0x0dbcfa34 (Size: 76 bytes, Frame: 192)
.globl __glce_GetFragmentMaterialfvSGIX
.ent __glce_GetFragmentMaterialfvSGIX
__glce_GetFragmentMaterialfvSGIX:
    # Line 6885
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6889
    lw	$s8,5392($zero)
    sd	$gp,16($sp)
    # Line 6890
    lw	$at,__glCurrentContext
    # Line 6885
    lui	$v0,0x3
    addiu	$v0,$v0,-4944
    addu	$gp,$t9,$v0
    # Line 6891
    # lw $t9, -15916($gp) # &glGetFragmentMaterialfvSGIX
    # Line 6890
    lw	$at,10992($at)
    sd	$ra,0($sp)
    # Line 6891
    jal	glGetFragmentMaterialfvSGIX
    # Line 6890
    sw	$at,5392($zero)
    ld	$gp,16($sp)
    # Line 6893
    ld	$ra,0($sp)
    # Line 6892
    sw	$s8,5392($zero)
    # Line 6893
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetFragmentMaterialfvSGIX

# Function: __glce_GetFragmentMaterialivSGIX
# Declared: Line 6898 (Source lines: 6899-6907)
# Address: 0x0dbcfa34 - 0x0dbcfa80 (Size: 76 bytes, Frame: 192)
.globl __glce_GetFragmentMaterialivSGIX
.ent __glce_GetFragmentMaterialivSGIX
__glce_GetFragmentMaterialivSGIX:
    # Line 6899
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6903
    lw	$s8,5396($zero)
    sd	$gp,16($sp)
    # Line 6904
    lw	$at,__glCurrentContext
    # Line 6899
    lui	$v0,0x3
    addiu	$v0,$v0,-5020
    addu	$gp,$t9,$v0
    # Line 6905
    # lw $t9, -15912($gp) # &glGetFragmentMaterialivSGIX
    # Line 6904
    lw	$at,10996($at)
    sd	$ra,0($sp)
    # Line 6905
    jal	glGetFragmentMaterialivSGIX
    # Line 6904
    sw	$at,5396($zero)
    ld	$gp,16($sp)
    # Line 6907
    ld	$ra,0($sp)
    # Line 6906
    sw	$s8,5396($zero)
    # Line 6907
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_GetFragmentMaterialivSGIX

# Function: __glce_LightEnviSGIX
# Declared: Line 6912 (Source lines: 6913-6921)
# Address: 0x0dbcfa80 - 0x0dbcfacc (Size: 76 bytes, Frame: 48)
.globl __glce_LightEnviSGIX
.ent __glce_LightEnviSGIX
__glce_LightEnviSGIX:
    # Line 6913
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6917
    lw	$s8,5400($zero)
    sd	$gp,16($sp)
    # Line 6918
    lw	$at,__glCurrentContext
    # Line 6913
    lui	$v0,0x3
    addiu	$v0,$v0,-5096
    addu	$gp,$t9,$v0
    # Line 6919
    # lw $t9, -15908($gp) # &glLightEnviSGIX
    # Line 6918
    lw	$at,11000($at)
    sd	$ra,0($sp)
    # Line 6919
    jal	glLightEnviSGIX
    # Line 6918
    sw	$at,5400($zero)
    ld	$gp,16($sp)
    # Line 6921
    ld	$ra,0($sp)
    # Line 6920
    sw	$s8,5400($zero)
    # Line 6921
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_LightEnviSGIX

# Function: __glce_Binormal3bSGIX
# Declared: Line 6926 (Source lines: 6927-6935)
# Address: 0x0dbcfacc - 0x0dbcfb18 (Size: 76 bytes, Frame: 192)
.globl __glce_Binormal3bSGIX
.ent __glce_Binormal3bSGIX
__glce_Binormal3bSGIX:
    # Line 6927
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6931
    lw	$s8,5404($zero)
    sd	$gp,16($sp)
    # Line 6932
    lw	$at,__glCurrentContext
    # Line 6927
    lui	$v0,0x3
    addiu	$v0,$v0,-5172
    addu	$gp,$t9,$v0
    # Line 6933
    # lw $t9, -15904($gp) # &glBinormal3bSGIX
    # Line 6932
    lw	$at,11004($at)
    sd	$ra,0($sp)
    # Line 6933
    jal	glBinormal3bSGIX
    # Line 6932
    sw	$at,5404($zero)
    ld	$gp,16($sp)
    # Line 6935
    ld	$ra,0($sp)
    # Line 6934
    sw	$s8,5404($zero)
    # Line 6935
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Binormal3bSGIX

# Function: __glce_Binormal3bvSGIX
# Declared: Line 6940 (Source lines: 6941-6949)
# Address: 0x0dbcfb18 - 0x0dbcfb64 (Size: 76 bytes, Frame: 48)
.globl __glce_Binormal3bvSGIX
.ent __glce_Binormal3bvSGIX
__glce_Binormal3bvSGIX:
    # Line 6941
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6945
    lw	$s8,5408($zero)
    sd	$gp,16($sp)
    # Line 6946
    lw	$at,__glCurrentContext
    # Line 6941
    lui	$v0,0x3
    addiu	$v0,$v0,-5248
    addu	$gp,$t9,$v0
    # Line 6947
    # lw $t9, -15900($gp) # &glBinormal3bvSGIX
    # Line 6946
    lw	$at,11008($at)
    sd	$ra,0($sp)
    # Line 6947
    jal	glBinormal3bvSGIX
    # Line 6946
    sw	$at,5408($zero)
    ld	$gp,16($sp)
    # Line 6949
    ld	$ra,0($sp)
    # Line 6948
    sw	$s8,5408($zero)
    # Line 6949
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Binormal3bvSGIX

# Function: __glce_Binormal3dSGIX
# Declared: Line 6954 (Source lines: 6955-6963)
# Address: 0x0dbcfb64 - 0x0dbcfbb0 (Size: 76 bytes, Frame: 192)
.globl __glce_Binormal3dSGIX
.ent __glce_Binormal3dSGIX
__glce_Binormal3dSGIX:
    # Line 6955
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6959
    lw	$s8,5412($zero)
    sd	$gp,16($sp)
    # Line 6960
    lw	$at,__glCurrentContext
    # Line 6955
    lui	$v0,0x3
    addiu	$v0,$v0,-5324
    addu	$gp,$t9,$v0
    # Line 6961
    # lw $t9, -15896($gp) # &glBinormal3dSGIX
    # Line 6960
    lw	$at,11012($at)
    sd	$ra,0($sp)
    # Line 6961
    jal	glBinormal3dSGIX
    # Line 6960
    sw	$at,5412($zero)
    ld	$gp,16($sp)
    # Line 6963
    ld	$ra,0($sp)
    # Line 6962
    sw	$s8,5412($zero)
    # Line 6963
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Binormal3dSGIX

# Function: __glce_Binormal3dvSGIX
# Declared: Line 6968 (Source lines: 6969-6977)
# Address: 0x0dbcfbb0 - 0x0dbcfbfc (Size: 76 bytes, Frame: 48)
.globl __glce_Binormal3dvSGIX
.ent __glce_Binormal3dvSGIX
__glce_Binormal3dvSGIX:
    # Line 6969
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 6973
    lw	$s8,5416($zero)
    sd	$gp,16($sp)
    # Line 6974
    lw	$at,__glCurrentContext
    # Line 6969
    lui	$v0,0x3
    addiu	$v0,$v0,-5400
    addu	$gp,$t9,$v0
    # Line 6975
    # lw $t9, -15892($gp) # &glBinormal3dvSGIX
    # Line 6974
    lw	$at,11016($at)
    sd	$ra,0($sp)
    # Line 6975
    jal	glBinormal3dvSGIX
    # Line 6974
    sw	$at,5416($zero)
    ld	$gp,16($sp)
    # Line 6977
    ld	$ra,0($sp)
    # Line 6976
    sw	$s8,5416($zero)
    # Line 6977
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Binormal3dvSGIX

# Function: __glce_Binormal3fSGIX
# Declared: Line 6982 (Source lines: 6983-6991)
# Address: 0x0dbcfbfc - 0x0dbcfc48 (Size: 76 bytes, Frame: 192)
.globl __glce_Binormal3fSGIX
.ent __glce_Binormal3fSGIX
__glce_Binormal3fSGIX:
    # Line 6983
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 6987
    lw	$s8,5420($zero)
    sd	$gp,16($sp)
    # Line 6988
    lw	$at,__glCurrentContext
    # Line 6983
    lui	$v0,0x3
    addiu	$v0,$v0,-5476
    addu	$gp,$t9,$v0
    # Line 6989
    # lw $t9, -15888($gp) # &glBinormal3fSGIX
    # Line 6988
    lw	$at,11020($at)
    sd	$ra,0($sp)
    # Line 6989
    jal	glBinormal3fSGIX
    # Line 6988
    sw	$at,5420($zero)
    ld	$gp,16($sp)
    # Line 6991
    ld	$ra,0($sp)
    # Line 6990
    sw	$s8,5420($zero)
    # Line 6991
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Binormal3fSGIX

# Function: __glce_Binormal3fvSGIX
# Declared: Line 6996 (Source lines: 6997-7005)
# Address: 0x0dbcfc48 - 0x0dbcfc94 (Size: 76 bytes, Frame: 48)
.globl __glce_Binormal3fvSGIX
.ent __glce_Binormal3fvSGIX
__glce_Binormal3fvSGIX:
    # Line 6997
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7001
    lw	$s8,5424($zero)
    sd	$gp,16($sp)
    # Line 7002
    lw	$at,__glCurrentContext
    # Line 6997
    lui	$v0,0x3
    addiu	$v0,$v0,-5552
    addu	$gp,$t9,$v0
    # Line 7003
    # lw $t9, -15884($gp) # &glBinormal3fvSGIX
    # Line 7002
    lw	$at,11024($at)
    sd	$ra,0($sp)
    # Line 7003
    jal	glBinormal3fvSGIX
    # Line 7002
    sw	$at,5424($zero)
    ld	$gp,16($sp)
    # Line 7005
    ld	$ra,0($sp)
    # Line 7004
    sw	$s8,5424($zero)
    # Line 7005
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Binormal3fvSGIX

# Function: __glce_Binormal3iSGIX
# Declared: Line 7010 (Source lines: 7011-7019)
# Address: 0x0dbcfc94 - 0x0dbcfce0 (Size: 76 bytes, Frame: 192)
.globl __glce_Binormal3iSGIX
.ent __glce_Binormal3iSGIX
__glce_Binormal3iSGIX:
    # Line 7011
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7015
    lw	$s8,5428($zero)
    sd	$gp,16($sp)
    # Line 7016
    lw	$at,__glCurrentContext
    # Line 7011
    lui	$v0,0x3
    addiu	$v0,$v0,-5628
    addu	$gp,$t9,$v0
    # Line 7017
    # lw $t9, -15880($gp) # &glBinormal3iSGIX
    # Line 7016
    lw	$at,11028($at)
    sd	$ra,0($sp)
    # Line 7017
    jal	glBinormal3iSGIX
    # Line 7016
    sw	$at,5428($zero)
    ld	$gp,16($sp)
    # Line 7019
    ld	$ra,0($sp)
    # Line 7018
    sw	$s8,5428($zero)
    # Line 7019
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Binormal3iSGIX

# Function: __glce_Binormal3ivSGIX
# Declared: Line 7024 (Source lines: 7025-7033)
# Address: 0x0dbcfce0 - 0x0dbcfd2c (Size: 76 bytes, Frame: 48)
.globl __glce_Binormal3ivSGIX
.ent __glce_Binormal3ivSGIX
__glce_Binormal3ivSGIX:
    # Line 7025
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7029
    lw	$s8,5432($zero)
    sd	$gp,16($sp)
    # Line 7030
    lw	$at,__glCurrentContext
    # Line 7025
    lui	$v0,0x3
    addiu	$v0,$v0,-5704
    addu	$gp,$t9,$v0
    # Line 7031
    # lw $t9, -15876($gp) # &glBinormal3ivSGIX
    # Line 7030
    lw	$at,11032($at)
    sd	$ra,0($sp)
    # Line 7031
    jal	glBinormal3ivSGIX
    # Line 7030
    sw	$at,5432($zero)
    ld	$gp,16($sp)
    # Line 7033
    ld	$ra,0($sp)
    # Line 7032
    sw	$s8,5432($zero)
    # Line 7033
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Binormal3ivSGIX

# Function: __glce_Binormal3sSGIX
# Declared: Line 7038 (Source lines: 7039-7047)
# Address: 0x0dbcfd2c - 0x0dbcfd78 (Size: 76 bytes, Frame: 192)
.globl __glce_Binormal3sSGIX
.ent __glce_Binormal3sSGIX
__glce_Binormal3sSGIX:
    # Line 7039
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7043
    lw	$s8,5436($zero)
    sd	$gp,16($sp)
    # Line 7044
    lw	$at,__glCurrentContext
    # Line 7039
    lui	$v0,0x3
    addiu	$v0,$v0,-5780
    addu	$gp,$t9,$v0
    # Line 7045
    # lw $t9, -15872($gp) # &glBinormal3sSGIX
    # Line 7044
    lw	$at,11036($at)
    sd	$ra,0($sp)
    # Line 7045
    jal	glBinormal3sSGIX
    # Line 7044
    sw	$at,5436($zero)
    ld	$gp,16($sp)
    # Line 7047
    ld	$ra,0($sp)
    # Line 7046
    sw	$s8,5436($zero)
    # Line 7047
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Binormal3sSGIX

# Function: __glce_Binormal3svSGIX
# Declared: Line 7052 (Source lines: 7053-7061)
# Address: 0x0dbcfd78 - 0x0dbcfdc4 (Size: 76 bytes, Frame: 48)
.globl __glce_Binormal3svSGIX
.ent __glce_Binormal3svSGIX
__glce_Binormal3svSGIX:
    # Line 7053
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7057
    lw	$s8,5440($zero)
    sd	$gp,16($sp)
    # Line 7058
    lw	$at,__glCurrentContext
    # Line 7053
    lui	$v0,0x3
    addiu	$v0,$v0,-5856
    addu	$gp,$t9,$v0
    # Line 7059
    # lw $t9, -15868($gp) # &glBinormal3svSGIX
    # Line 7058
    lw	$at,11040($at)
    sd	$ra,0($sp)
    # Line 7059
    jal	glBinormal3svSGIX
    # Line 7058
    sw	$at,5440($zero)
    ld	$gp,16($sp)
    # Line 7061
    ld	$ra,0($sp)
    # Line 7060
    sw	$s8,5440($zero)
    # Line 7061
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Binormal3svSGIX

# Function: __glce_FragmentLightSpaceSGIX
# Declared: Line 7066 (Source lines: 7067-7075)
# Address: 0x0dbcfdc4 - 0x0dbcfe10 (Size: 76 bytes, Frame: 48)
.globl __glce_FragmentLightSpaceSGIX
.ent __glce_FragmentLightSpaceSGIX
__glce_FragmentLightSpaceSGIX:
    # Line 7067
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7071
    lw	$s8,5444($zero)
    sd	$gp,16($sp)
    # Line 7072
    lw	$at,__glCurrentContext
    # Line 7067
    lui	$v0,0x3
    addiu	$v0,$v0,-5932
    addu	$gp,$t9,$v0
    # Line 7073
    # lw $t9, -15864($gp) # &glFragmentLightSpaceSGIX
    # Line 7072
    lw	$at,11044($at)
    sd	$ra,0($sp)
    # Line 7073
    jal	glFragmentLightSpaceSGIX
    # Line 7072
    sw	$at,5444($zero)
    ld	$gp,16($sp)
    # Line 7075
    ld	$ra,0($sp)
    # Line 7074
    sw	$s8,5444($zero)
    # Line 7075
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_FragmentLightSpaceSGIX

# Function: __glce_Tangent3bSGIX
# Declared: Line 7080 (Source lines: 7081-7089)
# Address: 0x0dbcfe10 - 0x0dbcfe5c (Size: 76 bytes, Frame: 192)
.globl __glce_Tangent3bSGIX
.ent __glce_Tangent3bSGIX
__glce_Tangent3bSGIX:
    # Line 7081
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7085
    lw	$s8,5448($zero)
    sd	$gp,16($sp)
    # Line 7086
    lw	$at,__glCurrentContext
    # Line 7081
    lui	$v0,0x3
    addiu	$v0,$v0,-6008
    addu	$gp,$t9,$v0
    # Line 7087
    # lw $t9, -15860($gp) # &glTangent3bSGIX
    # Line 7086
    lw	$at,11048($at)
    sd	$ra,0($sp)
    # Line 7087
    jal	glTangent3bSGIX
    # Line 7086
    sw	$at,5448($zero)
    ld	$gp,16($sp)
    # Line 7089
    ld	$ra,0($sp)
    # Line 7088
    sw	$s8,5448($zero)
    # Line 7089
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Tangent3bSGIX

# Function: __glce_Tangent3bvSGIX
# Declared: Line 7094 (Source lines: 7095-7103)
# Address: 0x0dbcfe5c - 0x0dbcfea8 (Size: 76 bytes, Frame: 48)
.globl __glce_Tangent3bvSGIX
.ent __glce_Tangent3bvSGIX
__glce_Tangent3bvSGIX:
    # Line 7095
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7099
    lw	$s8,5452($zero)
    sd	$gp,16($sp)
    # Line 7100
    lw	$at,__glCurrentContext
    # Line 7095
    lui	$v0,0x3
    addiu	$v0,$v0,-6084
    addu	$gp,$t9,$v0
    # Line 7101
    # lw $t9, -15856($gp) # &glTangent3bvSGIX
    # Line 7100
    lw	$at,11052($at)
    sd	$ra,0($sp)
    # Line 7101
    jal	glTangent3bvSGIX
    # Line 7100
    sw	$at,5452($zero)
    ld	$gp,16($sp)
    # Line 7103
    ld	$ra,0($sp)
    # Line 7102
    sw	$s8,5452($zero)
    # Line 7103
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Tangent3bvSGIX

# Function: __glce_Tangent3dSGIX
# Declared: Line 7108 (Source lines: 7109-7117)
# Address: 0x0dbcfea8 - 0x0dbcfef4 (Size: 76 bytes, Frame: 192)
.globl __glce_Tangent3dSGIX
.ent __glce_Tangent3dSGIX
__glce_Tangent3dSGIX:
    # Line 7109
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7113
    lw	$s8,5456($zero)
    sd	$gp,16($sp)
    # Line 7114
    lw	$at,__glCurrentContext
    # Line 7109
    lui	$v0,0x3
    addiu	$v0,$v0,-6160
    addu	$gp,$t9,$v0
    # Line 7115
    # lw $t9, -15852($gp) # &glTangent3dSGIX
    # Line 7114
    lw	$at,11056($at)
    sd	$ra,0($sp)
    # Line 7115
    jal	glTangent3dSGIX
    # Line 7114
    sw	$at,5456($zero)
    ld	$gp,16($sp)
    # Line 7117
    ld	$ra,0($sp)
    # Line 7116
    sw	$s8,5456($zero)
    # Line 7117
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Tangent3dSGIX

# Function: __glce_Tangent3dvSGIX
# Declared: Line 7122 (Source lines: 7123-7131)
# Address: 0x0dbcfef4 - 0x0dbcff40 (Size: 76 bytes, Frame: 48)
.globl __glce_Tangent3dvSGIX
.ent __glce_Tangent3dvSGIX
__glce_Tangent3dvSGIX:
    # Line 7123
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7127
    lw	$s8,5460($zero)
    sd	$gp,16($sp)
    # Line 7128
    lw	$at,__glCurrentContext
    # Line 7123
    lui	$v0,0x3
    addiu	$v0,$v0,-6236
    addu	$gp,$t9,$v0
    # Line 7129
    # lw $t9, -15848($gp) # &glTangent3dvSGIX
    # Line 7128
    lw	$at,11060($at)
    sd	$ra,0($sp)
    # Line 7129
    jal	glTangent3dvSGIX
    # Line 7128
    sw	$at,5460($zero)
    ld	$gp,16($sp)
    # Line 7131
    ld	$ra,0($sp)
    # Line 7130
    sw	$s8,5460($zero)
    # Line 7131
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Tangent3dvSGIX

# Function: __glce_Tangent3fSGIX
# Declared: Line 7136 (Source lines: 7137-7145)
# Address: 0x0dbcff40 - 0x0dbcff8c (Size: 76 bytes, Frame: 192)
.globl __glce_Tangent3fSGIX
.ent __glce_Tangent3fSGIX
__glce_Tangent3fSGIX:
    # Line 7137
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7141
    lw	$s8,5464($zero)
    sd	$gp,16($sp)
    # Line 7142
    lw	$at,__glCurrentContext
    # Line 7137
    lui	$v0,0x3
    addiu	$v0,$v0,-6312
    addu	$gp,$t9,$v0
    # Line 7143
    # lw $t9, -15844($gp) # &glTangent3fSGIX
    # Line 7142
    lw	$at,11064($at)
    sd	$ra,0($sp)
    # Line 7143
    jal	glTangent3fSGIX
    # Line 7142
    sw	$at,5464($zero)
    ld	$gp,16($sp)
    # Line 7145
    ld	$ra,0($sp)
    # Line 7144
    sw	$s8,5464($zero)
    # Line 7145
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Tangent3fSGIX

# Function: __glce_Tangent3fvSGIX
# Declared: Line 7150 (Source lines: 7151-7159)
# Address: 0x0dbcff8c - 0x0dbcffd8 (Size: 76 bytes, Frame: 48)
.globl __glce_Tangent3fvSGIX
.ent __glce_Tangent3fvSGIX
__glce_Tangent3fvSGIX:
    # Line 7151
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7155
    lw	$s8,5468($zero)
    sd	$gp,16($sp)
    # Line 7156
    lw	$at,__glCurrentContext
    # Line 7151
    lui	$v0,0x3
    addiu	$v0,$v0,-6388
    addu	$gp,$t9,$v0
    # Line 7157
    # lw $t9, -15840($gp) # &glTangent3fvSGIX
    # Line 7156
    lw	$at,11068($at)
    sd	$ra,0($sp)
    # Line 7157
    jal	glTangent3fvSGIX
    # Line 7156
    sw	$at,5468($zero)
    ld	$gp,16($sp)
    # Line 7159
    ld	$ra,0($sp)
    # Line 7158
    sw	$s8,5468($zero)
    # Line 7159
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Tangent3fvSGIX

# Function: __glce_Tangent3iSGIX
# Declared: Line 7164 (Source lines: 7165-7173)
# Address: 0x0dbcffd8 - 0x0dbd0024 (Size: 76 bytes, Frame: 192)
.globl __glce_Tangent3iSGIX
.ent __glce_Tangent3iSGIX
__glce_Tangent3iSGIX:
    # Line 7165
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7169
    lw	$s8,5472($zero)
    sd	$gp,16($sp)
    # Line 7170
    lw	$at,__glCurrentContext
    # Line 7165
    lui	$v0,0x3
    addiu	$v0,$v0,-6464
    addu	$gp,$t9,$v0
    # Line 7171
    # lw $t9, -15836($gp) # &glTangent3iSGIX
    # Line 7170
    lw	$at,11072($at)
    sd	$ra,0($sp)
    # Line 7171
    jal	glTangent3iSGIX
    # Line 7170
    sw	$at,5472($zero)
    ld	$gp,16($sp)
    # Line 7173
    ld	$ra,0($sp)
    # Line 7172
    sw	$s8,5472($zero)
    # Line 7173
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Tangent3iSGIX

# Function: __glce_Tangent3ivSGIX
# Declared: Line 7178 (Source lines: 7179-7187)
# Address: 0x0dbd0024 - 0x0dbd0070 (Size: 76 bytes, Frame: 48)
.globl __glce_Tangent3ivSGIX
.ent __glce_Tangent3ivSGIX
__glce_Tangent3ivSGIX:
    # Line 7179
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7183
    lw	$s8,5476($zero)
    sd	$gp,16($sp)
    # Line 7184
    lw	$at,__glCurrentContext
    # Line 7179
    lui	$v0,0x3
    addiu	$v0,$v0,-6540
    addu	$gp,$t9,$v0
    # Line 7185
    # lw $t9, -15832($gp) # &glTangent3ivSGIX
    # Line 7184
    lw	$at,11076($at)
    sd	$ra,0($sp)
    # Line 7185
    jal	glTangent3ivSGIX
    # Line 7184
    sw	$at,5476($zero)
    ld	$gp,16($sp)
    # Line 7187
    ld	$ra,0($sp)
    # Line 7186
    sw	$s8,5476($zero)
    # Line 7187
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Tangent3ivSGIX

# Function: __glce_Tangent3sSGIX
# Declared: Line 7192 (Source lines: 7193-7201)
# Address: 0x0dbd0070 - 0x0dbd00bc (Size: 76 bytes, Frame: 192)
.globl __glce_Tangent3sSGIX
.ent __glce_Tangent3sSGIX
__glce_Tangent3sSGIX:
    # Line 7193
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7197
    lw	$s8,5480($zero)
    sd	$gp,16($sp)
    # Line 7198
    lw	$at,__glCurrentContext
    # Line 7193
    lui	$v0,0x3
    addiu	$v0,$v0,-6616
    addu	$gp,$t9,$v0
    # Line 7199
    # lw $t9, -15828($gp) # &glTangent3sSGIX
    # Line 7198
    lw	$at,11080($at)
    sd	$ra,0($sp)
    # Line 7199
    jal	glTangent3sSGIX
    # Line 7198
    sw	$at,5480($zero)
    ld	$gp,16($sp)
    # Line 7201
    ld	$ra,0($sp)
    # Line 7200
    sw	$s8,5480($zero)
    # Line 7201
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_Tangent3sSGIX

# Function: __glce_Tangent3svSGIX
# Declared: Line 7206 (Source lines: 7207-7215)
# Address: 0x0dbd00bc - 0x0dbd0108 (Size: 76 bytes, Frame: 48)
.globl __glce_Tangent3svSGIX
.ent __glce_Tangent3svSGIX
__glce_Tangent3svSGIX:
    # Line 7207
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7211
    lw	$s8,5484($zero)
    sd	$gp,16($sp)
    # Line 7212
    lw	$at,__glCurrentContext
    # Line 7207
    lui	$v0,0x3
    addiu	$v0,$v0,-6692
    addu	$gp,$t9,$v0
    # Line 7213
    # lw $t9, -15824($gp) # &glTangent3svSGIX
    # Line 7212
    lw	$at,11084($at)
    sd	$ra,0($sp)
    # Line 7213
    jal	glTangent3svSGIX
    # Line 7212
    sw	$at,5484($zero)
    ld	$gp,16($sp)
    # Line 7215
    ld	$ra,0($sp)
    # Line 7214
    sw	$s8,5484($zero)
    # Line 7215
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_Tangent3svSGIX

# Function: __glce_MultiTexCoord1dSGIS
# Declared: Line 7220 (Source lines: 7221-7229)
# Address: 0x0dbd0108 - 0x0dbd0154 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord1dSGIS
.ent __glce_MultiTexCoord1dSGIS
__glce_MultiTexCoord1dSGIS:
    # Line 7221
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7225
    lw	$s8,5488($zero)
    sd	$gp,16($sp)
    # Line 7226
    lw	$at,__glCurrentContext
    # Line 7221
    lui	$v0,0x3
    addiu	$v0,$v0,-6768
    addu	$gp,$t9,$v0
    # Line 7227
    # lw $t9, -15820($gp) # &glMultiTexCoord1dSGIS
    # Line 7226
    lw	$at,11088($at)
    sd	$ra,0($sp)
    # Line 7227
    jal	glMultiTexCoord1dSGIS
    # Line 7226
    sw	$at,5488($zero)
    ld	$gp,16($sp)
    # Line 7229
    ld	$ra,0($sp)
    # Line 7228
    sw	$s8,5488($zero)
    # Line 7229
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord1dSGIS

# Function: __glce_MultiTexCoord1dvSGIS
# Declared: Line 7234 (Source lines: 7235-7243)
# Address: 0x0dbd0154 - 0x0dbd01a0 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord1dvSGIS
.ent __glce_MultiTexCoord1dvSGIS
__glce_MultiTexCoord1dvSGIS:
    # Line 7235
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7239
    lw	$s8,5492($zero)
    sd	$gp,16($sp)
    # Line 7240
    lw	$at,__glCurrentContext
    # Line 7235
    lui	$v0,0x3
    addiu	$v0,$v0,-6844
    addu	$gp,$t9,$v0
    # Line 7241
    # lw $t9, -15816($gp) # &glMultiTexCoord1dvSGIS
    # Line 7240
    lw	$at,11092($at)
    sd	$ra,0($sp)
    # Line 7241
    jal	glMultiTexCoord1dvSGIS
    # Line 7240
    sw	$at,5492($zero)
    ld	$gp,16($sp)
    # Line 7243
    ld	$ra,0($sp)
    # Line 7242
    sw	$s8,5492($zero)
    # Line 7243
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord1dvSGIS

# Function: __glce_MultiTexCoord1fSGIS
# Declared: Line 7248 (Source lines: 7249-7257)
# Address: 0x0dbd01a0 - 0x0dbd01ec (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord1fSGIS
.ent __glce_MultiTexCoord1fSGIS
__glce_MultiTexCoord1fSGIS:
    # Line 7249
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7253
    lw	$s8,5496($zero)
    sd	$gp,16($sp)
    # Line 7254
    lw	$at,__glCurrentContext
    # Line 7249
    lui	$v0,0x3
    addiu	$v0,$v0,-6920
    addu	$gp,$t9,$v0
    # Line 7255
    # lw $t9, -15812($gp) # &glMultiTexCoord1fSGIS
    # Line 7254
    lw	$at,11096($at)
    sd	$ra,0($sp)
    # Line 7255
    jal	glMultiTexCoord1fSGIS
    # Line 7254
    sw	$at,5496($zero)
    ld	$gp,16($sp)
    # Line 7257
    ld	$ra,0($sp)
    # Line 7256
    sw	$s8,5496($zero)
    # Line 7257
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord1fSGIS

# Function: __glce_MultiTexCoord1fvSGIS
# Declared: Line 7262 (Source lines: 7263-7271)
# Address: 0x0dbd01ec - 0x0dbd0238 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord1fvSGIS
.ent __glce_MultiTexCoord1fvSGIS
__glce_MultiTexCoord1fvSGIS:
    # Line 7263
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7267
    lw	$s8,5500($zero)
    sd	$gp,16($sp)
    # Line 7268
    lw	$at,__glCurrentContext
    # Line 7263
    lui	$v0,0x3
    addiu	$v0,$v0,-6996
    addu	$gp,$t9,$v0
    # Line 7269
    # lw $t9, -15808($gp) # &glMultiTexCoord1fvSGIS
    # Line 7268
    lw	$at,11100($at)
    sd	$ra,0($sp)
    # Line 7269
    jal	glMultiTexCoord1fvSGIS
    # Line 7268
    sw	$at,5500($zero)
    ld	$gp,16($sp)
    # Line 7271
    ld	$ra,0($sp)
    # Line 7270
    sw	$s8,5500($zero)
    # Line 7271
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord1fvSGIS

# Function: __glce_MultiTexCoord1iSGIS
# Declared: Line 7276 (Source lines: 7277-7285)
# Address: 0x0dbd0238 - 0x0dbd0284 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord1iSGIS
.ent __glce_MultiTexCoord1iSGIS
__glce_MultiTexCoord1iSGIS:
    # Line 7277
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7281
    lw	$s8,5504($zero)
    sd	$gp,16($sp)
    # Line 7282
    lw	$at,__glCurrentContext
    # Line 7277
    lui	$v0,0x3
    addiu	$v0,$v0,-7072
    addu	$gp,$t9,$v0
    # Line 7283
    # lw $t9, -15804($gp) # &glMultiTexCoord1iSGIS
    # Line 7282
    lw	$at,11104($at)
    sd	$ra,0($sp)
    # Line 7283
    jal	glMultiTexCoord1iSGIS
    # Line 7282
    sw	$at,5504($zero)
    ld	$gp,16($sp)
    # Line 7285
    ld	$ra,0($sp)
    # Line 7284
    sw	$s8,5504($zero)
    # Line 7285
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord1iSGIS

# Function: __glce_MultiTexCoord1ivSGIS
# Declared: Line 7290 (Source lines: 7291-7299)
# Address: 0x0dbd0284 - 0x0dbd02d0 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord1ivSGIS
.ent __glce_MultiTexCoord1ivSGIS
__glce_MultiTexCoord1ivSGIS:
    # Line 7291
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7295
    lw	$s8,5508($zero)
    sd	$gp,16($sp)
    # Line 7296
    lw	$at,__glCurrentContext
    # Line 7291
    lui	$v0,0x3
    addiu	$v0,$v0,-7148
    addu	$gp,$t9,$v0
    # Line 7297
    # lw $t9, -15800($gp) # &glMultiTexCoord1ivSGIS
    # Line 7296
    lw	$at,11108($at)
    sd	$ra,0($sp)
    # Line 7297
    jal	glMultiTexCoord1ivSGIS
    # Line 7296
    sw	$at,5508($zero)
    ld	$gp,16($sp)
    # Line 7299
    ld	$ra,0($sp)
    # Line 7298
    sw	$s8,5508($zero)
    # Line 7299
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord1ivSGIS

# Function: __glce_MultiTexCoord1sSGIS
# Declared: Line 7304 (Source lines: 7305-7313)
# Address: 0x0dbd02d0 - 0x0dbd031c (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord1sSGIS
.ent __glce_MultiTexCoord1sSGIS
__glce_MultiTexCoord1sSGIS:
    # Line 7305
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7309
    lw	$s8,5512($zero)
    sd	$gp,16($sp)
    # Line 7310
    lw	$at,__glCurrentContext
    # Line 7305
    lui	$v0,0x3
    addiu	$v0,$v0,-7224
    addu	$gp,$t9,$v0
    # Line 7311
    # lw $t9, -15796($gp) # &glMultiTexCoord1sSGIS
    # Line 7310
    lw	$at,11112($at)
    sd	$ra,0($sp)
    # Line 7311
    jal	glMultiTexCoord1sSGIS
    # Line 7310
    sw	$at,5512($zero)
    ld	$gp,16($sp)
    # Line 7313
    ld	$ra,0($sp)
    # Line 7312
    sw	$s8,5512($zero)
    # Line 7313
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord1sSGIS

# Function: __glce_MultiTexCoord1svSGIS
# Declared: Line 7318 (Source lines: 7319-7327)
# Address: 0x0dbd031c - 0x0dbd0368 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord1svSGIS
.ent __glce_MultiTexCoord1svSGIS
__glce_MultiTexCoord1svSGIS:
    # Line 7319
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7323
    lw	$s8,5516($zero)
    sd	$gp,16($sp)
    # Line 7324
    lw	$at,__glCurrentContext
    # Line 7319
    lui	$v0,0x3
    addiu	$v0,$v0,-7300
    addu	$gp,$t9,$v0
    # Line 7325
    # lw $t9, -15792($gp) # &glMultiTexCoord1svSGIS
    # Line 7324
    lw	$at,11116($at)
    sd	$ra,0($sp)
    # Line 7325
    jal	glMultiTexCoord1svSGIS
    # Line 7324
    sw	$at,5516($zero)
    ld	$gp,16($sp)
    # Line 7327
    ld	$ra,0($sp)
    # Line 7326
    sw	$s8,5516($zero)
    # Line 7327
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord1svSGIS

# Function: __glce_MultiTexCoord2dSGIS
# Declared: Line 7332 (Source lines: 7333-7341)
# Address: 0x0dbd0368 - 0x0dbd03b4 (Size: 76 bytes, Frame: 192)
.globl __glce_MultiTexCoord2dSGIS
.ent __glce_MultiTexCoord2dSGIS
__glce_MultiTexCoord2dSGIS:
    # Line 7333
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7337
    lw	$s8,5520($zero)
    sd	$gp,16($sp)
    # Line 7338
    lw	$at,__glCurrentContext
    # Line 7333
    lui	$v0,0x3
    addiu	$v0,$v0,-7376
    addu	$gp,$t9,$v0
    # Line 7339
    # lw $t9, -15788($gp) # &glMultiTexCoord2dSGIS
    # Line 7338
    lw	$at,11120($at)
    sd	$ra,0($sp)
    # Line 7339
    jal	glMultiTexCoord2dSGIS
    # Line 7338
    sw	$at,5520($zero)
    ld	$gp,16($sp)
    # Line 7341
    ld	$ra,0($sp)
    # Line 7340
    sw	$s8,5520($zero)
    # Line 7341
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_MultiTexCoord2dSGIS

# Function: __glce_MultiTexCoord2dvSGIS
# Declared: Line 7346 (Source lines: 7347-7355)
# Address: 0x0dbd03b4 - 0x0dbd0400 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord2dvSGIS
.ent __glce_MultiTexCoord2dvSGIS
__glce_MultiTexCoord2dvSGIS:
    # Line 7347
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7351
    lw	$s8,5524($zero)
    sd	$gp,16($sp)
    # Line 7352
    lw	$at,__glCurrentContext
    # Line 7347
    lui	$v0,0x3
    addiu	$v0,$v0,-7452
    addu	$gp,$t9,$v0
    # Line 7353
    # lw $t9, -15784($gp) # &glMultiTexCoord2dvSGIS
    # Line 7352
    lw	$at,11124($at)
    sd	$ra,0($sp)
    # Line 7353
    jal	glMultiTexCoord2dvSGIS
    # Line 7352
    sw	$at,5524($zero)
    ld	$gp,16($sp)
    # Line 7355
    ld	$ra,0($sp)
    # Line 7354
    sw	$s8,5524($zero)
    # Line 7355
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord2dvSGIS

# Function: __glce_MultiTexCoord2fSGIS
# Declared: Line 7360 (Source lines: 7361-7369)
# Address: 0x0dbd0400 - 0x0dbd044c (Size: 76 bytes, Frame: 192)
.globl __glce_MultiTexCoord2fSGIS
.ent __glce_MultiTexCoord2fSGIS
__glce_MultiTexCoord2fSGIS:
    # Line 7361
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7365
    lw	$s8,5528($zero)
    sd	$gp,16($sp)
    # Line 7366
    lw	$at,__glCurrentContext
    # Line 7361
    lui	$v0,0x3
    addiu	$v0,$v0,-7528
    addu	$gp,$t9,$v0
    # Line 7367
    # lw $t9, -15780($gp) # &glMultiTexCoord2fSGIS
    # Line 7366
    lw	$at,11128($at)
    sd	$ra,0($sp)
    # Line 7367
    jal	glMultiTexCoord2fSGIS
    # Line 7366
    sw	$at,5528($zero)
    ld	$gp,16($sp)
    # Line 7369
    ld	$ra,0($sp)
    # Line 7368
    sw	$s8,5528($zero)
    # Line 7369
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_MultiTexCoord2fSGIS

# Function: __glce_MultiTexCoord2fvSGIS
# Declared: Line 7374 (Source lines: 7375-7383)
# Address: 0x0dbd044c - 0x0dbd0498 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord2fvSGIS
.ent __glce_MultiTexCoord2fvSGIS
__glce_MultiTexCoord2fvSGIS:
    # Line 7375
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7379
    lw	$s8,5532($zero)
    sd	$gp,16($sp)
    # Line 7380
    lw	$at,__glCurrentContext
    # Line 7375
    lui	$v0,0x3
    addiu	$v0,$v0,-7604
    addu	$gp,$t9,$v0
    # Line 7381
    # lw $t9, -15776($gp) # &glMultiTexCoord2fvSGIS
    # Line 7380
    lw	$at,11132($at)
    sd	$ra,0($sp)
    # Line 7381
    jal	glMultiTexCoord2fvSGIS
    # Line 7380
    sw	$at,5532($zero)
    ld	$gp,16($sp)
    # Line 7383
    ld	$ra,0($sp)
    # Line 7382
    sw	$s8,5532($zero)
    # Line 7383
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord2fvSGIS

# Function: __glce_MultiTexCoord2iSGIS
# Declared: Line 7388 (Source lines: 7389-7397)
# Address: 0x0dbd0498 - 0x0dbd04e4 (Size: 76 bytes, Frame: 192)
.globl __glce_MultiTexCoord2iSGIS
.ent __glce_MultiTexCoord2iSGIS
__glce_MultiTexCoord2iSGIS:
    # Line 7389
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7393
    lw	$s8,5536($zero)
    sd	$gp,16($sp)
    # Line 7394
    lw	$at,__glCurrentContext
    # Line 7389
    lui	$v0,0x3
    addiu	$v0,$v0,-7680
    addu	$gp,$t9,$v0
    # Line 7395
    # lw $t9, -15772($gp) # &glMultiTexCoord2iSGIS
    # Line 7394
    lw	$at,11136($at)
    sd	$ra,0($sp)
    # Line 7395
    jal	glMultiTexCoord2iSGIS
    # Line 7394
    sw	$at,5536($zero)
    ld	$gp,16($sp)
    # Line 7397
    ld	$ra,0($sp)
    # Line 7396
    sw	$s8,5536($zero)
    # Line 7397
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_MultiTexCoord2iSGIS

# Function: __glce_MultiTexCoord2ivSGIS
# Declared: Line 7402 (Source lines: 7403-7411)
# Address: 0x0dbd04e4 - 0x0dbd0530 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord2ivSGIS
.ent __glce_MultiTexCoord2ivSGIS
__glce_MultiTexCoord2ivSGIS:
    # Line 7403
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7407
    lw	$s8,5540($zero)
    sd	$gp,16($sp)
    # Line 7408
    lw	$at,__glCurrentContext
    # Line 7403
    lui	$v0,0x3
    addiu	$v0,$v0,-7756
    addu	$gp,$t9,$v0
    # Line 7409
    # lw $t9, -15768($gp) # &glMultiTexCoord2ivSGIS
    # Line 7408
    lw	$at,11140($at)
    sd	$ra,0($sp)
    # Line 7409
    jal	glMultiTexCoord2ivSGIS
    # Line 7408
    sw	$at,5540($zero)
    ld	$gp,16($sp)
    # Line 7411
    ld	$ra,0($sp)
    # Line 7410
    sw	$s8,5540($zero)
    # Line 7411
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord2ivSGIS

# Function: __glce_MultiTexCoord2sSGIS
# Declared: Line 7416 (Source lines: 7417-7425)
# Address: 0x0dbd0530 - 0x0dbd057c (Size: 76 bytes, Frame: 192)
.globl __glce_MultiTexCoord2sSGIS
.ent __glce_MultiTexCoord2sSGIS
__glce_MultiTexCoord2sSGIS:
    # Line 7417
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7421
    lw	$s8,5544($zero)
    sd	$gp,16($sp)
    # Line 7422
    lw	$at,__glCurrentContext
    # Line 7417
    lui	$v0,0x3
    addiu	$v0,$v0,-7832
    addu	$gp,$t9,$v0
    # Line 7423
    # lw $t9, -15764($gp) # &glMultiTexCoord2sSGIS
    # Line 7422
    lw	$at,11144($at)
    sd	$ra,0($sp)
    # Line 7423
    jal	glMultiTexCoord2sSGIS
    # Line 7422
    sw	$at,5544($zero)
    ld	$gp,16($sp)
    # Line 7425
    ld	$ra,0($sp)
    # Line 7424
    sw	$s8,5544($zero)
    # Line 7425
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_MultiTexCoord2sSGIS

# Function: __glce_MultiTexCoord2svSGIS
# Declared: Line 7430 (Source lines: 7431-7439)
# Address: 0x0dbd057c - 0x0dbd05c8 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord2svSGIS
.ent __glce_MultiTexCoord2svSGIS
__glce_MultiTexCoord2svSGIS:
    # Line 7431
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7435
    lw	$s8,5548($zero)
    sd	$gp,16($sp)
    # Line 7436
    lw	$at,__glCurrentContext
    # Line 7431
    lui	$v0,0x3
    addiu	$v0,$v0,-7908
    addu	$gp,$t9,$v0
    # Line 7437
    # lw $t9, -15760($gp) # &glMultiTexCoord2svSGIS
    # Line 7436
    lw	$at,11148($at)
    sd	$ra,0($sp)
    # Line 7437
    jal	glMultiTexCoord2svSGIS
    # Line 7436
    sw	$at,5548($zero)
    ld	$gp,16($sp)
    # Line 7439
    ld	$ra,0($sp)
    # Line 7438
    sw	$s8,5548($zero)
    # Line 7439
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord2svSGIS

# Function: __glce_MultiTexCoord3dSGIS
# Declared: Line 7444 (Source lines: 7445-7453)
# Address: 0x0dbd05c8 - 0x0dbd0614 (Size: 76 bytes, Frame: 192)
.globl __glce_MultiTexCoord3dSGIS
.ent __glce_MultiTexCoord3dSGIS
__glce_MultiTexCoord3dSGIS:
    # Line 7445
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7449
    lw	$s8,5552($zero)
    sd	$gp,16($sp)
    # Line 7450
    lw	$at,__glCurrentContext
    # Line 7445
    lui	$v0,0x3
    addiu	$v0,$v0,-7984
    addu	$gp,$t9,$v0
    # Line 7451
    # lw $t9, -15756($gp) # &glMultiTexCoord3dSGIS
    # Line 7450
    lw	$at,11152($at)
    sd	$ra,0($sp)
    # Line 7451
    jal	glMultiTexCoord3dSGIS
    # Line 7450
    sw	$at,5552($zero)
    ld	$gp,16($sp)
    # Line 7453
    ld	$ra,0($sp)
    # Line 7452
    sw	$s8,5552($zero)
    # Line 7453
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_MultiTexCoord3dSGIS

# Function: __glce_MultiTexCoord3dvSGIS
# Declared: Line 7458 (Source lines: 7459-7467)
# Address: 0x0dbd0614 - 0x0dbd0660 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord3dvSGIS
.ent __glce_MultiTexCoord3dvSGIS
__glce_MultiTexCoord3dvSGIS:
    # Line 7459
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7463
    lw	$s8,5556($zero)
    sd	$gp,16($sp)
    # Line 7464
    lw	$at,__glCurrentContext
    # Line 7459
    lui	$v0,0x3
    addiu	$v0,$v0,-8060
    addu	$gp,$t9,$v0
    # Line 7465
    # lw $t9, -15752($gp) # &glMultiTexCoord3dvSGIS
    # Line 7464
    lw	$at,11156($at)
    sd	$ra,0($sp)
    # Line 7465
    jal	glMultiTexCoord3dvSGIS
    # Line 7464
    sw	$at,5556($zero)
    ld	$gp,16($sp)
    # Line 7467
    ld	$ra,0($sp)
    # Line 7466
    sw	$s8,5556($zero)
    # Line 7467
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord3dvSGIS

# Function: __glce_MultiTexCoord3fSGIS
# Declared: Line 7472 (Source lines: 7473-7481)
# Address: 0x0dbd0660 - 0x0dbd06ac (Size: 76 bytes, Frame: 192)
.globl __glce_MultiTexCoord3fSGIS
.ent __glce_MultiTexCoord3fSGIS
__glce_MultiTexCoord3fSGIS:
    # Line 7473
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7477
    lw	$s8,5560($zero)
    sd	$gp,16($sp)
    # Line 7478
    lw	$at,__glCurrentContext
    # Line 7473
    lui	$v0,0x3
    addiu	$v0,$v0,-8136
    addu	$gp,$t9,$v0
    # Line 7479
    # lw $t9, -15748($gp) # &glMultiTexCoord3fSGIS
    # Line 7478
    lw	$at,11160($at)
    sd	$ra,0($sp)
    # Line 7479
    jal	glMultiTexCoord3fSGIS
    # Line 7478
    sw	$at,5560($zero)
    ld	$gp,16($sp)
    # Line 7481
    ld	$ra,0($sp)
    # Line 7480
    sw	$s8,5560($zero)
    # Line 7481
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_MultiTexCoord3fSGIS

# Function: __glce_MultiTexCoord3fvSGIS
# Declared: Line 7486 (Source lines: 7487-7495)
# Address: 0x0dbd06ac - 0x0dbd06f8 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord3fvSGIS
.ent __glce_MultiTexCoord3fvSGIS
__glce_MultiTexCoord3fvSGIS:
    # Line 7487
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7491
    lw	$s8,5564($zero)
    sd	$gp,16($sp)
    # Line 7492
    lw	$at,__glCurrentContext
    # Line 7487
    lui	$v0,0x3
    addiu	$v0,$v0,-8212
    addu	$gp,$t9,$v0
    # Line 7493
    # lw $t9, -15744($gp) # &glMultiTexCoord3fvSGIS
    # Line 7492
    lw	$at,11164($at)
    sd	$ra,0($sp)
    # Line 7493
    jal	glMultiTexCoord3fvSGIS
    # Line 7492
    sw	$at,5564($zero)
    ld	$gp,16($sp)
    # Line 7495
    ld	$ra,0($sp)
    # Line 7494
    sw	$s8,5564($zero)
    # Line 7495
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord3fvSGIS

# Function: __glce_MultiTexCoord3iSGIS
# Declared: Line 7500 (Source lines: 7501-7509)
# Address: 0x0dbd06f8 - 0x0dbd0744 (Size: 76 bytes, Frame: 192)
.globl __glce_MultiTexCoord3iSGIS
.ent __glce_MultiTexCoord3iSGIS
__glce_MultiTexCoord3iSGIS:
    # Line 7501
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7505
    lw	$s8,5568($zero)
    sd	$gp,16($sp)
    # Line 7506
    lw	$at,__glCurrentContext
    # Line 7501
    lui	$v0,0x3
    addiu	$v0,$v0,-8288
    addu	$gp,$t9,$v0
    # Line 7507
    # lw $t9, -15740($gp) # &glMultiTexCoord3iSGIS
    # Line 7506
    lw	$at,11168($at)
    sd	$ra,0($sp)
    # Line 7507
    jal	glMultiTexCoord3iSGIS
    # Line 7506
    sw	$at,5568($zero)
    ld	$gp,16($sp)
    # Line 7509
    ld	$ra,0($sp)
    # Line 7508
    sw	$s8,5568($zero)
    # Line 7509
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_MultiTexCoord3iSGIS

# Function: __glce_MultiTexCoord3ivSGIS
# Declared: Line 7514 (Source lines: 7515-7523)
# Address: 0x0dbd0744 - 0x0dbd0790 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord3ivSGIS
.ent __glce_MultiTexCoord3ivSGIS
__glce_MultiTexCoord3ivSGIS:
    # Line 7515
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7519
    lw	$s8,5572($zero)
    sd	$gp,16($sp)
    # Line 7520
    lw	$at,__glCurrentContext
    # Line 7515
    lui	$v0,0x3
    addiu	$v0,$v0,-8364
    addu	$gp,$t9,$v0
    # Line 7521
    # lw $t9, -15736($gp) # &glMultiTexCoord3ivSGIS
    # Line 7520
    lw	$at,11172($at)
    sd	$ra,0($sp)
    # Line 7521
    jal	glMultiTexCoord3ivSGIS
    # Line 7520
    sw	$at,5572($zero)
    ld	$gp,16($sp)
    # Line 7523
    ld	$ra,0($sp)
    # Line 7522
    sw	$s8,5572($zero)
    # Line 7523
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord3ivSGIS

# Function: __glce_MultiTexCoord3sSGIS
# Declared: Line 7528 (Source lines: 7529-7537)
# Address: 0x0dbd0790 - 0x0dbd07dc (Size: 76 bytes, Frame: 192)
.globl __glce_MultiTexCoord3sSGIS
.ent __glce_MultiTexCoord3sSGIS
__glce_MultiTexCoord3sSGIS:
    # Line 7529
    addiu	$sp,$sp,-64
    sd	$s8,8($sp)
    # Line 7533
    lw	$s8,5576($zero)
    sd	$gp,16($sp)
    # Line 7534
    lw	$at,__glCurrentContext
    # Line 7529
    lui	$v0,0x3
    addiu	$v0,$v0,-8440
    addu	$gp,$t9,$v0
    # Line 7535
    # lw $t9, -15732($gp) # &glMultiTexCoord3sSGIS
    # Line 7534
    lw	$at,11176($at)
    sd	$ra,0($sp)
    # Line 7535
    jal	glMultiTexCoord3sSGIS
    # Line 7534
    sw	$at,5576($zero)
    ld	$gp,16($sp)
    # Line 7537
    ld	$ra,0($sp)
    # Line 7536
    sw	$s8,5576($zero)
    # Line 7537
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glce_MultiTexCoord3sSGIS

# Function: __glce_MultiTexCoord3svSGIS
# Declared: Line 7542 (Source lines: 7543-7551)
# Address: 0x0dbd07dc - 0x0dbd0828 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord3svSGIS
.ent __glce_MultiTexCoord3svSGIS
__glce_MultiTexCoord3svSGIS:
    # Line 7543
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7547
    lw	$s8,5580($zero)
    sd	$gp,16($sp)
    # Line 7548
    lw	$at,__glCurrentContext
    # Line 7543
    lui	$v0,0x3
    addiu	$v0,$v0,-8516
    addu	$gp,$t9,$v0
    # Line 7549
    # lw $t9, -15728($gp) # &glMultiTexCoord3svSGIS
    # Line 7548
    lw	$at,11180($at)
    sd	$ra,0($sp)
    # Line 7549
    jal	glMultiTexCoord3svSGIS
    # Line 7548
    sw	$at,5580($zero)
    ld	$gp,16($sp)
    # Line 7551
    ld	$ra,0($sp)
    # Line 7550
    sw	$s8,5580($zero)
    # Line 7551
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord3svSGIS

# Function: __glce_MultiTexCoord4dSGIS
# Declared: Line 7556 (Source lines: 7557-7565)
# Address: 0x0dbd0828 - 0x0dbd0874 (Size: 76 bytes, Frame: 208)
.globl __glce_MultiTexCoord4dSGIS
.ent __glce_MultiTexCoord4dSGIS
__glce_MultiTexCoord4dSGIS:
    # Line 7557
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 7561
    lw	$s8,5584($zero)
    sd	$gp,16($sp)
    # Line 7562
    lw	$at,__glCurrentContext
    # Line 7557
    lui	$v0,0x3
    addiu	$v0,$v0,-8592
    addu	$gp,$t9,$v0
    # Line 7563
    # lw $t9, -15724($gp) # &glMultiTexCoord4dSGIS
    # Line 7562
    lw	$at,11184($at)
    sd	$ra,0($sp)
    # Line 7563
    jal	glMultiTexCoord4dSGIS
    # Line 7562
    sw	$at,5584($zero)
    ld	$gp,16($sp)
    # Line 7565
    ld	$ra,0($sp)
    # Line 7564
    sw	$s8,5584($zero)
    # Line 7565
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_MultiTexCoord4dSGIS

# Function: __glce_MultiTexCoord4dvSGIS
# Declared: Line 7570 (Source lines: 7571-7579)
# Address: 0x0dbd0874 - 0x0dbd08c0 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord4dvSGIS
.ent __glce_MultiTexCoord4dvSGIS
__glce_MultiTexCoord4dvSGIS:
    # Line 7571
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7575
    lw	$s8,5588($zero)
    sd	$gp,16($sp)
    # Line 7576
    lw	$at,__glCurrentContext
    # Line 7571
    lui	$v0,0x3
    addiu	$v0,$v0,-8668
    addu	$gp,$t9,$v0
    # Line 7577
    # lw $t9, -15720($gp) # &glMultiTexCoord4dvSGIS
    # Line 7576
    lw	$at,11188($at)
    sd	$ra,0($sp)
    # Line 7577
    jal	glMultiTexCoord4dvSGIS
    # Line 7576
    sw	$at,5588($zero)
    ld	$gp,16($sp)
    # Line 7579
    ld	$ra,0($sp)
    # Line 7578
    sw	$s8,5588($zero)
    # Line 7579
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord4dvSGIS

# Function: __glce_MultiTexCoord4fSGIS
# Declared: Line 7584 (Source lines: 7585-7593)
# Address: 0x0dbd08c0 - 0x0dbd090c (Size: 76 bytes, Frame: 208)
.globl __glce_MultiTexCoord4fSGIS
.ent __glce_MultiTexCoord4fSGIS
__glce_MultiTexCoord4fSGIS:
    # Line 7585
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 7589
    lw	$s8,5592($zero)
    sd	$gp,16($sp)
    # Line 7590
    lw	$at,__glCurrentContext
    # Line 7585
    lui	$v0,0x3
    addiu	$v0,$v0,-8744
    addu	$gp,$t9,$v0
    # Line 7591
    # lw $t9, -15716($gp) # &glMultiTexCoord4fSGIS
    # Line 7590
    lw	$at,11192($at)
    sd	$ra,0($sp)
    # Line 7591
    jal	glMultiTexCoord4fSGIS
    # Line 7590
    sw	$at,5592($zero)
    ld	$gp,16($sp)
    # Line 7593
    ld	$ra,0($sp)
    # Line 7592
    sw	$s8,5592($zero)
    # Line 7593
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_MultiTexCoord4fSGIS

# Function: __glce_MultiTexCoord4fvSGIS
# Declared: Line 7598 (Source lines: 7599-7607)
# Address: 0x0dbd090c - 0x0dbd0958 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord4fvSGIS
.ent __glce_MultiTexCoord4fvSGIS
__glce_MultiTexCoord4fvSGIS:
    # Line 7599
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7603
    lw	$s8,5596($zero)
    sd	$gp,16($sp)
    # Line 7604
    lw	$at,__glCurrentContext
    # Line 7599
    lui	$v0,0x3
    addiu	$v0,$v0,-8820
    addu	$gp,$t9,$v0
    # Line 7605
    # lw $t9, -15712($gp) # &glMultiTexCoord4fvSGIS
    # Line 7604
    lw	$at,11196($at)
    sd	$ra,0($sp)
    # Line 7605
    jal	glMultiTexCoord4fvSGIS
    # Line 7604
    sw	$at,5596($zero)
    ld	$gp,16($sp)
    # Line 7607
    ld	$ra,0($sp)
    # Line 7606
    sw	$s8,5596($zero)
    # Line 7607
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord4fvSGIS

# Function: __glce_MultiTexCoord4iSGIS
# Declared: Line 7612 (Source lines: 7613-7621)
# Address: 0x0dbd0958 - 0x0dbd09a4 (Size: 76 bytes, Frame: 208)
.globl __glce_MultiTexCoord4iSGIS
.ent __glce_MultiTexCoord4iSGIS
__glce_MultiTexCoord4iSGIS:
    # Line 7613
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 7617
    lw	$s8,5600($zero)
    sd	$gp,16($sp)
    # Line 7618
    lw	$at,__glCurrentContext
    # Line 7613
    lui	$v0,0x3
    addiu	$v0,$v0,-8896
    addu	$gp,$t9,$v0
    # Line 7619
    # lw $t9, -15708($gp) # &glMultiTexCoord4iSGIS
    # Line 7618
    lw	$at,11200($at)
    sd	$ra,0($sp)
    # Line 7619
    jal	glMultiTexCoord4iSGIS
    # Line 7618
    sw	$at,5600($zero)
    ld	$gp,16($sp)
    # Line 7621
    ld	$ra,0($sp)
    # Line 7620
    sw	$s8,5600($zero)
    # Line 7621
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_MultiTexCoord4iSGIS

# Function: __glce_MultiTexCoord4ivSGIS
# Declared: Line 7626 (Source lines: 7627-7635)
# Address: 0x0dbd09a4 - 0x0dbd09f0 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord4ivSGIS
.ent __glce_MultiTexCoord4ivSGIS
__glce_MultiTexCoord4ivSGIS:
    # Line 7627
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7631
    lw	$s8,5604($zero)
    sd	$gp,16($sp)
    # Line 7632
    lw	$at,__glCurrentContext
    # Line 7627
    lui	$v0,0x3
    addiu	$v0,$v0,-8972
    addu	$gp,$t9,$v0
    # Line 7633
    # lw $t9, -15704($gp) # &glMultiTexCoord4ivSGIS
    # Line 7632
    lw	$at,11204($at)
    sd	$ra,0($sp)
    # Line 7633
    jal	glMultiTexCoord4ivSGIS
    # Line 7632
    sw	$at,5604($zero)
    ld	$gp,16($sp)
    # Line 7635
    ld	$ra,0($sp)
    # Line 7634
    sw	$s8,5604($zero)
    # Line 7635
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord4ivSGIS

# Function: __glce_MultiTexCoord4sSGIS
# Declared: Line 7640 (Source lines: 7641-7649)
# Address: 0x0dbd09f0 - 0x0dbd0a3c (Size: 76 bytes, Frame: 208)
.globl __glce_MultiTexCoord4sSGIS
.ent __glce_MultiTexCoord4sSGIS
__glce_MultiTexCoord4sSGIS:
    # Line 7641
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 7645
    lw	$s8,5608($zero)
    sd	$gp,16($sp)
    # Line 7646
    lw	$at,__glCurrentContext
    # Line 7641
    lui	$v0,0x3
    addiu	$v0,$v0,-9048
    addu	$gp,$t9,$v0
    # Line 7647
    # lw $t9, -15700($gp) # &glMultiTexCoord4sSGIS
    # Line 7646
    lw	$at,11208($at)
    sd	$ra,0($sp)
    # Line 7647
    jal	glMultiTexCoord4sSGIS
    # Line 7646
    sw	$at,5608($zero)
    ld	$gp,16($sp)
    # Line 7649
    ld	$ra,0($sp)
    # Line 7648
    sw	$s8,5608($zero)
    # Line 7649
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_MultiTexCoord4sSGIS

# Function: __glce_MultiTexCoord4svSGIS
# Declared: Line 7654 (Source lines: 7655-7663)
# Address: 0x0dbd0a3c - 0x0dbd0a88 (Size: 76 bytes, Frame: 48)
.globl __glce_MultiTexCoord4svSGIS
.ent __glce_MultiTexCoord4svSGIS
__glce_MultiTexCoord4svSGIS:
    # Line 7655
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7659
    lw	$s8,5612($zero)
    sd	$gp,16($sp)
    # Line 7660
    lw	$at,__glCurrentContext
    # Line 7655
    lui	$v0,0x3
    addiu	$v0,$v0,-9124
    addu	$gp,$t9,$v0
    # Line 7661
    # lw $t9, -15696($gp) # &glMultiTexCoord4svSGIS
    # Line 7660
    lw	$at,11212($at)
    sd	$ra,0($sp)
    # Line 7661
    jal	glMultiTexCoord4svSGIS
    # Line 7660
    sw	$at,5612($zero)
    ld	$gp,16($sp)
    # Line 7663
    ld	$ra,0($sp)
    # Line 7662
    sw	$s8,5612($zero)
    # Line 7663
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_MultiTexCoord4svSGIS

# Function: __glce_MultiTexCoordPointerSGIS
# Declared: Line 7668 (Source lines: 7669-7677)
# Address: 0x0dbd0a88 - 0x0dbd0ad4 (Size: 76 bytes, Frame: 208)
.globl __glce_MultiTexCoordPointerSGIS
.ent __glce_MultiTexCoordPointerSGIS
__glce_MultiTexCoordPointerSGIS:
    # Line 7669
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 7673
    lw	$s8,5616($zero)
    sd	$gp,16($sp)
    # Line 7674
    lw	$at,__glCurrentContext
    # Line 7669
    lui	$v0,0x3
    addiu	$v0,$v0,-9200
    addu	$gp,$t9,$v0
    # Line 7675
    # lw $t9, -15692($gp) # &glMultiTexCoordPointerSGIS
    # Line 7674
    lw	$at,11216($at)
    sd	$ra,0($sp)
    # Line 7675
    jal	glMultiTexCoordPointerSGIS
    # Line 7674
    sw	$at,5616($zero)
    ld	$gp,16($sp)
    # Line 7677
    ld	$ra,0($sp)
    # Line 7676
    sw	$s8,5616($zero)
    # Line 7677
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_MultiTexCoordPointerSGIS

# Function: __glce_SelectTextureSGIS
# Declared: Line 7682 (Source lines: 7683-7691)
# Address: 0x0dbd0ad4 - 0x0dbd0b20 (Size: 76 bytes, Frame: 48)
.globl __glce_SelectTextureSGIS
.ent __glce_SelectTextureSGIS
__glce_SelectTextureSGIS:
    # Line 7683
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7687
    lw	$s8,5620($zero)
    sd	$gp,16($sp)
    # Line 7688
    lw	$at,__glCurrentContext
    # Line 7683
    lui	$v0,0x3
    addiu	$v0,$v0,-9276
    addu	$gp,$t9,$v0
    # Line 7689
    # lw $t9, -15688($gp) # &glSelectTextureSGIS
    # Line 7688
    lw	$at,11220($at)
    sd	$ra,0($sp)
    # Line 7689
    jal	glSelectTextureSGIS
    # Line 7688
    sw	$at,5620($zero)
    ld	$gp,16($sp)
    # Line 7691
    ld	$ra,0($sp)
    # Line 7690
    sw	$s8,5620($zero)
    # Line 7691
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_SelectTextureSGIS

# Function: __glce_ApplyTextureSGIX
# Declared: Line 7696 (Source lines: 7697-7705)
# Address: 0x0dbd0b20 - 0x0dbd0b6c (Size: 76 bytes, Frame: 48)
.globl __glce_ApplyTextureSGIX
.ent __glce_ApplyTextureSGIX
__glce_ApplyTextureSGIX:
    # Line 7697
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7701
    lw	$s8,5624($zero)
    sd	$gp,16($sp)
    # Line 7702
    lw	$at,__glCurrentContext
    # Line 7697
    lui	$v0,0x3
    addiu	$v0,$v0,-9352
    addu	$gp,$t9,$v0
    # Line 7703
    # lw $t9, -15684($gp) # &glApplyTextureSGIX
    # Line 7702
    lw	$at,11224($at)
    sd	$ra,0($sp)
    # Line 7703
    jal	glApplyTextureSGIX
    # Line 7702
    sw	$at,5624($zero)
    ld	$gp,16($sp)
    # Line 7705
    ld	$ra,0($sp)
    # Line 7704
    sw	$s8,5624($zero)
    # Line 7705
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_ApplyTextureSGIX

# Function: __glce_TextureLightSGIX
# Declared: Line 7710 (Source lines: 7711-7719)
# Address: 0x0dbd0b6c - 0x0dbd0bb8 (Size: 76 bytes, Frame: 48)
.globl __glce_TextureLightSGIX
.ent __glce_TextureLightSGIX
__glce_TextureLightSGIX:
    # Line 7711
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7715
    lw	$s8,5628($zero)
    sd	$gp,16($sp)
    # Line 7716
    lw	$at,__glCurrentContext
    # Line 7711
    lui	$v0,0x3
    addiu	$v0,$v0,-9428
    addu	$gp,$t9,$v0
    # Line 7717
    # lw $t9, -15680($gp) # &glTextureLightSGIX
    # Line 7716
    lw	$at,11228($at)
    sd	$ra,0($sp)
    # Line 7717
    jal	glTextureLightSGIX
    # Line 7716
    sw	$at,5628($zero)
    ld	$gp,16($sp)
    # Line 7719
    ld	$ra,0($sp)
    # Line 7718
    sw	$s8,5628($zero)
    # Line 7719
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_TextureLightSGIX

# Function: __glce_TextureMaterialSGIX
# Declared: Line 7724 (Source lines: 7725-7733)
# Address: 0x0dbd0bb8 - 0x0dbd0c04 (Size: 76 bytes, Frame: 48)
.globl __glce_TextureMaterialSGIX
.ent __glce_TextureMaterialSGIX
__glce_TextureMaterialSGIX:
    # Line 7725
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7729
    lw	$s8,5632($zero)
    sd	$gp,16($sp)
    # Line 7730
    lw	$at,__glCurrentContext
    # Line 7725
    lui	$v0,0x3
    addiu	$v0,$v0,-9504
    addu	$gp,$t9,$v0
    # Line 7731
    # lw $t9, -15676($gp) # &glTextureMaterialSGIX
    # Line 7730
    lw	$at,11232($at)
    sd	$ra,0($sp)
    # Line 7731
    jal	glTextureMaterialSGIX
    # Line 7730
    sw	$at,5632($zero)
    ld	$gp,16($sp)
    # Line 7733
    ld	$ra,0($sp)
    # Line 7732
    sw	$s8,5632($zero)
    # Line 7733
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_TextureMaterialSGIX

# Function: __glce_FogLayersSGIX
# Declared: Line 7738 (Source lines: 7739-7747)
# Address: 0x0dbd0c04 - 0x0dbd0c50 (Size: 76 bytes, Frame: 48)
.globl __glce_FogLayersSGIX
.ent __glce_FogLayersSGIX
__glce_FogLayersSGIX:
    # Line 7739
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    # Line 7743
    lw	$s8,5636($zero)
    sd	$gp,16($sp)
    # Line 7744
    lw	$at,__glCurrentContext
    # Line 7739
    lui	$v0,0x3
    addiu	$v0,$v0,-9580
    addu	$gp,$t9,$v0
    # Line 7745
    # lw $t9, -15672($gp) # &glFogLayersSGIX
    # Line 7744
    lw	$at,11236($at)
    sd	$ra,0($sp)
    # Line 7745
    jal	glFogLayersSGIX
    # Line 7744
    sw	$at,5636($zero)
    ld	$gp,16($sp)
    # Line 7747
    ld	$ra,0($sp)
    # Line 7746
    sw	$s8,5636($zero)
    # Line 7747
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glce_FogLayersSGIX

# Function: __glce_ColorSubTable
# Declared: Line 7752 (Source lines: 7753-7761)
# Address: 0x0dbd0c50 - 0x0dbd0c9c (Size: 76 bytes, Frame: 208)
.globl __glce_ColorSubTable
.ent __glce_ColorSubTable
__glce_ColorSubTable:
    # Line 7753
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 7757
    lw	$s8,5640($zero)
    sd	$gp,16($sp)
    # Line 7758
    lw	$at,__glCurrentContext
    # Line 7753
    lui	$v0,0x3
    addiu	$v0,$v0,-9656
    addu	$gp,$t9,$v0
    # Line 7759
    # lw $t9, -15668($gp) # &glColorSubTable
    # Line 7758
    lw	$at,11240($at)
    sd	$ra,0($sp)
    # Line 7759
    jal	glColorSubTable
    # Line 7758
    sw	$at,5640($zero)
    ld	$gp,16($sp)
    # Line 7761
    ld	$ra,0($sp)
    # Line 7760
    sw	$s8,5640($zero)
    # Line 7761
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_ColorSubTable

# Function: __glce_CopyColorSubTable
# Declared: Line 7766 (Source lines: 7767-7775)
# Address: 0x0dbd0c9c - 0x0dbd0ce8 (Size: 76 bytes, Frame: 208)
.globl __glce_CopyColorSubTable
.ent __glce_CopyColorSubTable
__glce_CopyColorSubTable:
    # Line 7767
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 7771
    lw	$s8,5644($zero)
    sd	$gp,16($sp)
    # Line 7772
    lw	$at,__glCurrentContext
    # Line 7767
    lui	$v0,0x3
    addiu	$v0,$v0,-9732
    addu	$gp,$t9,$v0
    # Line 7773
    # lw $t9, -15664($gp) # &glCopyColorSubTable
    # Line 7772
    lw	$at,11244($at)
    sd	$ra,0($sp)
    # Line 7773
    jal	glCopyColorSubTable
    # Line 7772
    sw	$at,5644($zero)
    ld	$gp,16($sp)
    # Line 7775
    ld	$ra,0($sp)
    # Line 7774
    sw	$s8,5644($zero)
    # Line 7775
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_CopyColorSubTable

# Function: __glce_DrawRangeElements
# Declared: Line 7780 (Source lines: 7781-7789)
# Address: 0x0dbd0ce8 - 0x0dbd0d34 (Size: 76 bytes, Frame: 208)
.globl __glce_DrawRangeElements
.ent __glce_DrawRangeElements
__glce_DrawRangeElements:
    # Line 7781
    addiu	$sp,$sp,-80
    sd	$s8,8($sp)
    # Line 7785
    lw	$s8,5648($zero)
    sd	$gp,16($sp)
    # Line 7786
    lw	$at,__glCurrentContext
    # Line 7781
    lui	$v0,0x3
    addiu	$v0,$v0,-9808
    addu	$gp,$t9,$v0
    # Line 7787
    # lw $t9, -15660($gp) # &glDrawRangeElements
    # Line 7786
    lw	$at,11248($at)
    sd	$ra,0($sp)
    # Line 7787
    jal	glDrawRangeElements
    # Line 7786
    sw	$at,5648($zero)
    ld	$gp,16($sp)
    # Line 7789
    ld	$ra,0($sp)
    # Line 7788
    sw	$s8,5648($zero)
    # Line 7789
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glce_DrawRangeElements

