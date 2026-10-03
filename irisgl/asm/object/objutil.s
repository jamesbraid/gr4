# Source: ../object/objutil.c
# Category: object
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -cckr -UDEBUG -DNDEBUG=1 -Digloo -DIGLOO -DGLDSO -KPIC -DPIC -D_PAGESZ=4096 -I/xlv55/kudzu-apr12/root/usr/include/igloo/gl -I/xlv55/kudzu-apr12/root/usr/include/gl -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -woff 1685,515,608,658,799,803,852,1048,1233,1499 -c ../object/objutil.c -o objutil.T
# Total Functions: 9

.text

# Function: gl_n_nop
# Declared: Line 25 (Source lines: 25-27)
# Address: 0x0f0f620c - 0x0f0f6214 (Size: 8 bytes, Frame: 0)
.globl gl_n_nop
.ent gl_n_nop
gl_n_nop:
    # Line 27
    jr	$ra
    # Line 25
    move	$v0,$a0
.end gl_n_nop

# Function: gl_n_slopnop2
# Declared: Line 32 (Source lines: 32-34)
# Address: 0x0f0f6214 - 0x0f0f621c (Size: 8 bytes, Frame: 0)
.globl gl_n_slopnop2
.ent gl_n_slopnop2
gl_n_slopnop2:
    # Line 34
    jr	$ra
    # Line 32
    move	$v0,$a0
.end gl_n_slopnop2

# Function: gl_n_slopnop3
# Declared: Line 39 (Source lines: 41-41)
# Address: 0x0f0f621c - 0x0f0f6224 (Size: 8 bytes, Frame: 0)
.globl gl_n_slopnop3
.ent gl_n_slopnop3
gl_n_slopnop3:
    # Line 41
    jr	$ra
    addiu	$v0,$a0,4
.end gl_n_slopnop3

# Function: gl_n_quad_nop1
# Declared: Line 45 (Source lines: 45-47)
# Address: 0x0f0f6224 - 0x0f0f622c (Size: 8 bytes, Frame: 0)
.globl gl_n_quad_nop1
.ent gl_n_quad_nop1
gl_n_quad_nop1:
    # Line 47
    jr	$ra
    # Line 45
    move	$v0,$a0
.end gl_n_quad_nop1

# Function: gl_n_quad_nop2
# Declared: Line 51 (Source lines: 53-53)
# Address: 0x0f0f622c - 0x0f0f6234 (Size: 8 bytes, Frame: 0)
.globl gl_n_quad_nop2
.ent gl_n_quad_nop2
gl_n_quad_nop2:
    # Line 53
    jr	$ra
    addiu	$v0,$a0,4
.end gl_n_quad_nop2

# Function: gl_n_quad_nop3
# Declared: Line 57 (Source lines: 59-59)
# Address: 0x0f0f6234 - 0x0f0f623c (Size: 8 bytes, Frame: 0)
.globl gl_n_quad_nop3
.ent gl_n_quad_nop3
gl_n_quad_nop3:
    # Line 59
    jr	$ra
    addiu	$v0,$a0,8
.end gl_n_quad_nop3

# Function: gl_n_jump
# Declared: Line 71 (Source lines: 73-74)
# Address: 0x0f0f623c - 0x0f0f6244 (Size: 8 bytes, Frame: 0)
.globl gl_n_jump
.ent gl_n_jump
gl_n_jump:
    # Line 74
    jr	$ra
    # Line 73
    lw	$v0,0($a0)
.end gl_n_jump

# Function: gl_n_tag
# Declared: Line 79 (Source lines: 81-81)
# Address: 0x0f0f6244 - 0x0f0f624c (Size: 8 bytes, Frame: 0)
.globl gl_n_tag
.ent gl_n_tag
gl_n_tag:
    # Line 81
    jr	$ra
    addiu	$v0,$a0,4
.end gl_n_tag

# Function: gl_n_nonprim
# Declared: Line 85 (Source lines: 88-88)
# Address: 0x0f0f624c - 0x0f0f6254 (Size: 8 bytes, Frame: 0)
.globl gl_n_nonprim
.ent gl_n_nonprim
gl_n_nonprim:
    # Line 88
    jr	$ra
    addiu	$v0,$a0,4
.end gl_n_nonprim

