# Source: ../soft/so_clip.c
# Category: soft
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_clip.c
# Total Functions: 21

.text

# Function: Clip
# Declared: Line 82 (Source lines: 84-86)
# Address: 0x0db34200 - 0x0db3427c (Size: 124 bytes, Frame: 0)
.ent Clip
Clip:
    # Line 85
    lwc1	$f0,124($a2)
    lwc1	$f4,124($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    # Line 84
    lui	$v0,0xd
    addiu	$v0,$v0,-23400
    addu	$at,$t9,$v0
    # Line 85
    add.s	$f4,$f4,$f0
    lwc1	$f3,_lit_3f800000
    div.s	$f3,$f3,$f4
    swc1	$f4,124($a0)
    swc1	$f3,140($a0)
    lwc1	$f3,112($a2)
    lwc1	$f2,112($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,112($a0)
    lwc1	$f2,116($a2)
    lwc1	$f1,116($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,116($a0)
    lwc1	$f1,120($a2)
    lwc1	$f0,120($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 86
    jr	$ra
    # Line 85
    swc1	$f0,120($a0)
.end Clip

# Function: ClipC
# Declared: Line 88 (Source lines: 90-93)
# Address: 0x0db3427c - 0x0db34358 (Size: 220 bytes, Frame: 0)
.ent ClipC
ClipC:
    # Line 91
    lwc1	$f4,124($a2)
    lwc1	$f3,124($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    # Line 90
    lui	$v0,0xd
    addiu	$v0,$v0,-23524
    addu	$at,$t9,$v0
    # Line 91
    add.s	$f3,$f3,$f4
    lwc1	$f2,_lit_3f800000
    div.s	$f2,$f2,$f3
    swc1	$f3,124($a0)
    swc1	$f2,140($a0)
    lwc1	$f2,112($a2)
    lwc1	$f1,112($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,112($a0)
    lwc1	$f1,116($a2)
    lwc1	$f0,116($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,116($a0)
    lwc1	$f0,120($a2)
    lwc1	$f4,120($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,120($a0)
    # Line 92
    lwc1	$f4,144($a2)
    lwc1	$f3,144($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,144($a0)
    lwc1	$f3,148($a2)
    lwc1	$f2,148($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,148($a0)
    lwc1	$f2,152($a2)
    lwc1	$f1,152($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,152($a0)
    lwc1	$f1,156($a2)
    lwc1	$f0,156($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 93
    jr	$ra
    # Line 92
    swc1	$f0,156($a0)
.end ClipC

# Function: ClipI
# Declared: Line 95 (Source lines: 97-100)
# Address: 0x0db34358 - 0x0db343ec (Size: 148 bytes, Frame: 0)
.ent ClipI
ClipI:
    # Line 98
    lwc1	$f1,124($a2)
    lwc1	$f0,124($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    # Line 97
    lui	$v0,0xd
    addiu	$v0,$v0,-23744
    addu	$at,$t9,$v0
    # Line 98
    add.s	$f0,$f0,$f1
    lwc1	$f4,_lit_3f800000
    div.s	$f4,$f4,$f0
    swc1	$f0,124($a0)
    swc1	$f4,140($a0)
    lwc1	$f4,112($a2)
    lwc1	$f3,112($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,112($a0)
    lwc1	$f3,116($a2)
    lwc1	$f2,116($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,116($a0)
    lwc1	$f2,120($a2)
    lwc1	$f1,120($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,120($a0)
    # Line 99
    lwc1	$f1,144($a2)
    lwc1	$f0,144($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 100
    jr	$ra
    # Line 99
    swc1	$f0,144($a0)
.end ClipI

# Function: ClipBC
# Declared: Line 102 (Source lines: 104-108)
# Address: 0x0db343ec - 0x0db34528 (Size: 316 bytes, Frame: 0)
.ent ClipBC
ClipBC:
    # Line 105
    lwc1	$f3,124($a2)
    lwc1	$f2,124($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    # Line 104
    lui	$v0,0xd
    addiu	$v0,$v0,-23892
    addu	$at,$t9,$v0
    # Line 105
    add.s	$f2,$f2,$f3
    lwc1	$f1,_lit_3f800000
    div.s	$f1,$f1,$f2
    swc1	$f2,124($a0)
    swc1	$f1,140($a0)
    lwc1	$f1,112($a2)
    lwc1	$f0,112($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,112($a0)
    lwc1	$f0,116($a2)
    lwc1	$f4,116($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,116($a0)
    lwc1	$f4,120($a2)
    lwc1	$f3,120($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,120($a0)
    # Line 106
    lwc1	$f3,144($a2)
    lwc1	$f2,144($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,144($a0)
    lwc1	$f2,148($a2)
    lwc1	$f1,148($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,148($a0)
    lwc1	$f1,152($a2)
    lwc1	$f0,152($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,152($a0)
    lwc1	$f0,156($a2)
    lwc1	$f4,156($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,156($a0)
    # Line 107
    lwc1	$f4,160($a2)
    lwc1	$f3,160($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,160($a0)
    lwc1	$f3,164($a2)
    lwc1	$f2,164($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,164($a0)
    lwc1	$f2,168($a2)
    lwc1	$f1,168($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,168($a0)
    lwc1	$f1,172($a2)
    lwc1	$f0,172($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 108
    jr	$ra
    # Line 107
    swc1	$f0,172($a0)
.end ClipBC

# Function: ClipBI
# Declared: Line 110 (Source lines: 112-116)
# Address: 0x0db34528 - 0x0db345d4 (Size: 172 bytes, Frame: 0)
.ent ClipBI
ClipBI:
    # Line 113
    lwc1	$f2,124($a2)
    lwc1	$f1,124($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    # Line 112
    lui	$v0,0xd
    addiu	$v0,$v0,-24208
    addu	$at,$t9,$v0
    # Line 113
    add.s	$f1,$f1,$f2
    lwc1	$f0,_lit_3f800000
    div.s	$f0,$f0,$f1
    swc1	$f1,124($a0)
    swc1	$f0,140($a0)
    lwc1	$f0,112($a2)
    lwc1	$f4,112($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,112($a0)
    lwc1	$f4,116($a2)
    lwc1	$f3,116($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,116($a0)
    lwc1	$f3,120($a2)
    lwc1	$f2,120($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,120($a0)
    # Line 114
    lwc1	$f2,144($a2)
    lwc1	$f1,144($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,144($a0)
    # Line 115
    lwc1	$f1,160($a2)
    lwc1	$f0,160($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 116
    jr	$ra
    # Line 115
    swc1	$f0,160($a0)
.end ClipBI

# Function: ClipT
# Declared: Line 118 (Source lines: 120-123)
# Address: 0x0db345d4 - 0x0db346b0 (Size: 220 bytes, Frame: 0)
.ent ClipT
ClipT:
    # Line 121
    lwc1	$f4,124($a2)
    lwc1	$f3,124($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    # Line 120
    lui	$v0,0xd
    addiu	$v0,$v0,-24380
    addu	$at,$t9,$v0
    # Line 121
    add.s	$f3,$f3,$f4
    lwc1	$f2,_lit_3f800000
    div.s	$f2,$f2,$f3
    swc1	$f3,124($a0)
    swc1	$f2,140($a0)
    lwc1	$f2,112($a2)
    lwc1	$f1,112($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,112($a0)
    lwc1	$f1,116($a2)
    lwc1	$f0,116($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,116($a0)
    lwc1	$f0,120($a2)
    lwc1	$f4,120($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,120($a0)
    # Line 122
    lwc1	$f4,48($a2)
    lwc1	$f3,48($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,48($a0)
    lwc1	$f3,52($a2)
    lwc1	$f2,52($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f1,56($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,56($a0)
    lwc1	$f1,60($a2)
    lwc1	$f0,60($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 123
    jr	$ra
    # Line 122
    swc1	$f0,60($a0)
.end ClipT

# Function: ClipIT
# Declared: Line 125 (Source lines: 127-131)
# Address: 0x0db346b0 - 0x0db347a4 (Size: 244 bytes, Frame: 0)
.ent ClipIT
ClipIT:
    # Line 128
    lwc1	$f0,124($a2)
    lwc1	$f4,124($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    # Line 127
    lui	$v0,0xd
    addiu	$v0,$v0,-24600
    addu	$at,$t9,$v0
    # Line 128
    add.s	$f4,$f4,$f0
    lwc1	$f3,_lit_3f800000
    div.s	$f3,$f3,$f4
    swc1	$f4,124($a0)
    swc1	$f3,140($a0)
    lwc1	$f3,112($a2)
    lwc1	$f2,112($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,112($a0)
    lwc1	$f2,116($a2)
    lwc1	$f1,116($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,116($a0)
    lwc1	$f1,120($a2)
    lwc1	$f0,120($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,120($a0)
    # Line 129
    lwc1	$f0,144($a2)
    lwc1	$f4,144($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,144($a0)
    # Line 130
    lwc1	$f4,48($a2)
    lwc1	$f3,48($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,48($a0)
    lwc1	$f3,52($a2)
    lwc1	$f2,52($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f1,56($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,56($a0)
    lwc1	$f1,60($a2)
    lwc1	$f0,60($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 131
    jr	$ra
    # Line 130
    swc1	$f0,60($a0)
.end ClipIT

# Function: ClipBIT
# Declared: Line 133 (Source lines: 135-140)
# Address: 0x0db347a4 - 0x0db348b0 (Size: 268 bytes, Frame: 0)
.ent ClipBIT
ClipBIT:
    # Line 136
    lwc1	$f1,124($a2)
    lwc1	$f0,124($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    # Line 135
    lui	$v0,0xd
    addiu	$v0,$v0,-24844
    addu	$at,$t9,$v0
    # Line 136
    add.s	$f0,$f0,$f1
    lwc1	$f4,_lit_3f800000
    div.s	$f4,$f4,$f0
    swc1	$f0,124($a0)
    swc1	$f4,140($a0)
    lwc1	$f4,112($a2)
    lwc1	$f3,112($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,112($a0)
    lwc1	$f3,116($a2)
    lwc1	$f2,116($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,116($a0)
    lwc1	$f2,120($a2)
    lwc1	$f1,120($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,120($a0)
    # Line 137
    lwc1	$f1,144($a2)
    lwc1	$f0,144($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,144($a0)
    # Line 138
    lwc1	$f0,160($a2)
    lwc1	$f4,160($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,160($a0)
    # Line 139
    lwc1	$f4,48($a2)
    lwc1	$f3,48($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,48($a0)
    lwc1	$f3,52($a2)
    lwc1	$f2,52($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f1,56($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,56($a0)
    lwc1	$f1,60($a2)
    lwc1	$f0,60($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 140
    jr	$ra
    # Line 139
    swc1	$f0,60($a0)
.end ClipBIT

# Function: ClipCT
# Declared: Line 142 (Source lines: 144-148)
# Address: 0x0db348b0 - 0x0db349ec (Size: 316 bytes, Frame: 0)
.ent ClipCT
ClipCT:
    # Line 145
    lwc1	$f3,124($a2)
    lwc1	$f2,124($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    # Line 144
    lui	$v0,0xd
    addiu	$v0,$v0,-25112
    addu	$at,$t9,$v0
    # Line 145
    add.s	$f2,$f2,$f3
    lwc1	$f1,_lit_3f800000
    div.s	$f1,$f1,$f2
    swc1	$f2,124($a0)
    swc1	$f1,140($a0)
    lwc1	$f1,112($a2)
    lwc1	$f0,112($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,112($a0)
    lwc1	$f0,116($a2)
    lwc1	$f4,116($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,116($a0)
    lwc1	$f4,120($a2)
    lwc1	$f3,120($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,120($a0)
    # Line 146
    lwc1	$f3,144($a2)
    lwc1	$f2,144($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,144($a0)
    lwc1	$f2,148($a2)
    lwc1	$f1,148($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,148($a0)
    lwc1	$f1,152($a2)
    lwc1	$f0,152($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,152($a0)
    lwc1	$f0,156($a2)
    lwc1	$f4,156($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,156($a0)
    # Line 147
    lwc1	$f4,48($a2)
    lwc1	$f3,48($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,48($a0)
    lwc1	$f3,52($a2)
    lwc1	$f2,52($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f1,56($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,56($a0)
    lwc1	$f1,60($a2)
    lwc1	$f0,60($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 148
    jr	$ra
    # Line 147
    swc1	$f0,60($a0)
.end ClipCT

# Function: ClipBCT
# Declared: Line 150 (Source lines: 152-157)
# Address: 0x0db349ec - 0x0db34b88 (Size: 412 bytes, Frame: 0)
.ent ClipBCT
ClipBCT:
    # Line 153
    lwc1	$f2,124($a2)
    lwc1	$f1,124($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    # Line 152
    lui	$v0,0xd
    addiu	$v0,$v0,-25428
    addu	$at,$t9,$v0
    # Line 153
    add.s	$f1,$f1,$f2
    lwc1	$f0,_lit_3f800000
    div.s	$f0,$f0,$f1
    swc1	$f1,124($a0)
    swc1	$f0,140($a0)
    lwc1	$f0,112($a2)
    lwc1	$f4,112($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,112($a0)
    lwc1	$f4,116($a2)
    lwc1	$f3,116($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,116($a0)
    lwc1	$f3,120($a2)
    lwc1	$f2,120($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,120($a0)
    # Line 154
    lwc1	$f2,144($a2)
    lwc1	$f1,144($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,144($a0)
    lwc1	$f1,148($a2)
    lwc1	$f0,148($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,148($a0)
    lwc1	$f0,152($a2)
    lwc1	$f4,152($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,152($a0)
    lwc1	$f4,156($a2)
    lwc1	$f3,156($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,156($a0)
    # Line 155
    lwc1	$f3,160($a2)
    lwc1	$f2,160($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,160($a0)
    lwc1	$f2,164($a2)
    lwc1	$f1,164($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,164($a0)
    lwc1	$f1,168($a2)
    lwc1	$f0,168($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,168($a0)
    lwc1	$f0,172($a2)
    lwc1	$f4,172($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,172($a0)
    # Line 156
    lwc1	$f4,48($a2)
    lwc1	$f3,48($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,48($a0)
    lwc1	$f3,52($a2)
    lwc1	$f2,52($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,52($a0)
    lwc1	$f2,56($a2)
    lwc1	$f1,56($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,56($a0)
    lwc1	$f1,60($a2)
    lwc1	$f0,60($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 157
    jr	$ra
    # Line 156
    swc1	$f0,60($a0)
.end ClipBCT

# Function: ClipF
# Declared: Line 159 (Source lines: 161-164)
# Address: 0x0db34b88 - 0x0db34c48 (Size: 192 bytes, Frame: 0)
.ent ClipF
ClipF:
    # Line 162
    lwc1	$f0,124($a2)
    lwc1	$f4,124($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    # Line 161
    lui	$v1,0xd
    addiu	$v1,$v1,-25840
    addu	$at,$t9,$v1
    # Line 162
    add.s	$f4,$f4,$f0
    lwc1	$f3,_lit_3f800000
    div.s	$f3,$f3,$f4
    swc1	$f4,124($a0)
    swc1	$f3,140($a0)
    lwc1	$f3,112($a2)
    lwc1	$f2,112($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,112($a0)
    lwc1	$f2,116($a2)
    lwc1	$f1,116($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,116($a0)
    lwc1	$f1,120($a2)
    lwc1	$f0,120($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,120($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db34c30
    # Line 163
    lwc1	$f2,104($a2)
    lwc1	$f1,176($a2)
    lwc1	$f0,176($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,176($a0)
    # Line 164
    jr	$ra
    nop
.L0db34c30:
    # Line 163
    lwc1	$f1,104($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    # Line 164
    jr	$ra
    # Line 163
    swc1	$f1,104($a0)
.end ClipF

# Function: ClipIF
# Declared: Line 166 (Source lines: 168-172)
# Address: 0x0db34c48 - 0x0db34d20 (Size: 216 bytes, Frame: 0)
.ent ClipIF
ClipIF:
    # Line 169
    lwc1	$f1,124($a2)
    lwc1	$f0,124($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    # Line 168
    lui	$v1,0xd
    addiu	$v1,$v1,-26032
    addu	$at,$t9,$v1
    # Line 169
    add.s	$f0,$f0,$f1
    lwc1	$f4,_lit_3f800000
    div.s	$f4,$f4,$f0
    swc1	$f0,124($a0)
    swc1	$f4,140($a0)
    lwc1	$f4,112($a2)
    lwc1	$f3,112($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,112($a0)
    lwc1	$f3,116($a2)
    lwc1	$f2,116($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,116($a0)
    lwc1	$f2,120($a2)
    lwc1	$f1,120($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,120($a0)
    # Line 170
    lwc1	$f1,144($a2)
    lwc1	$f0,144($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,144($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db34d08
    # Line 171
    lwc1	$f3,104($a2)
    lwc1	$f2,176($a2)
    lwc1	$f1,176($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,176($a0)
    # Line 172
    jr	$ra
    nop
.L0db34d08:
    # Line 171
    lwc1	$f2,104($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    # Line 172
    jr	$ra
    # Line 171
    swc1	$f2,104($a0)
.end ClipIF

# Function: ClipBIF
# Declared: Line 174 (Source lines: 176-181)
# Address: 0x0db34d20 - 0x0db34e10 (Size: 240 bytes, Frame: 0)
.ent ClipBIF
ClipBIF:
    # Line 177
    lwc1	$f2,124($a2)
    lwc1	$f1,124($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    # Line 176
    lui	$v1,0xd
    addiu	$v1,$v1,-26248
    addu	$at,$t9,$v1
    # Line 177
    add.s	$f1,$f1,$f2
    lwc1	$f0,_lit_3f800000
    div.s	$f0,$f0,$f1
    swc1	$f1,124($a0)
    swc1	$f0,140($a0)
    lwc1	$f0,112($a2)
    lwc1	$f4,112($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,112($a0)
    lwc1	$f4,116($a2)
    lwc1	$f3,116($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,116($a0)
    lwc1	$f3,120($a2)
    lwc1	$f2,120($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,120($a0)
    # Line 178
    lwc1	$f2,144($a2)
    lwc1	$f1,144($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,144($a0)
    # Line 179
    lwc1	$f1,160($a2)
    lwc1	$f0,160($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,160($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db34df8
    # Line 180
    lwc1	$f0,104($a2)
    lwc1	$f3,176($a2)
    lwc1	$f2,176($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,176($a0)
    # Line 181
    jr	$ra
    nop
.L0db34df8:
    # Line 180
    lwc1	$f3,104($a1)
    sub.s	$f3,$f3,$f0
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f0
    # Line 181
    jr	$ra
    # Line 180
    swc1	$f3,104($a0)
.end ClipBIF

# Function: ClipCF
# Declared: Line 183 (Source lines: 185-189)
# Address: 0x0db34e10 - 0x0db34f30 (Size: 288 bytes, Frame: 0)
.ent ClipCF
ClipCF:
    # Line 186
    lwc1	$f4,124($a2)
    lwc1	$f3,124($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    # Line 185
    lui	$v1,0xd
    addiu	$v1,$v1,-26488
    addu	$at,$t9,$v1
    # Line 186
    add.s	$f3,$f3,$f4
    lwc1	$f2,_lit_3f800000
    div.s	$f2,$f2,$f3
    swc1	$f3,124($a0)
    swc1	$f2,140($a0)
    lwc1	$f2,112($a2)
    lwc1	$f1,112($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,112($a0)
    lwc1	$f1,116($a2)
    lwc1	$f0,116($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,116($a0)
    lwc1	$f0,120($a2)
    lwc1	$f4,120($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,120($a0)
    # Line 187
    lwc1	$f4,144($a2)
    lwc1	$f3,144($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,144($a0)
    lwc1	$f3,148($a2)
    lwc1	$f2,148($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,148($a0)
    lwc1	$f2,152($a2)
    lwc1	$f1,152($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,152($a0)
    lwc1	$f1,156($a2)
    lwc1	$f0,156($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,156($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db34f18
    # Line 188
    lwc1	$f2,104($a2)
    lwc1	$f1,176($a2)
    lwc1	$f0,176($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,176($a0)
    # Line 189
    jr	$ra
    nop
.L0db34f18:
    # Line 188
    lwc1	$f1,104($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    # Line 189
    jr	$ra
    # Line 188
    swc1	$f1,104($a0)
.end ClipCF

# Function: ClipBCF
# Declared: Line 191 (Source lines: 193-198)
# Address: 0x0db34f30 - 0x0db350b0 (Size: 384 bytes, Frame: 0)
.ent ClipBCF
ClipBCF:
    # Line 194
    lwc1	$f3,124($a2)
    lwc1	$f2,124($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    # Line 193
    lui	$v1,0xd
    addiu	$v1,$v1,-26776
    addu	$at,$t9,$v1
    # Line 194
    add.s	$f2,$f2,$f3
    lwc1	$f1,_lit_3f800000
    div.s	$f1,$f1,$f2
    swc1	$f2,124($a0)
    swc1	$f1,140($a0)
    lwc1	$f1,112($a2)
    lwc1	$f0,112($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,112($a0)
    lwc1	$f0,116($a2)
    lwc1	$f4,116($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,116($a0)
    lwc1	$f4,120($a2)
    lwc1	$f3,120($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,120($a0)
    # Line 195
    lwc1	$f3,144($a2)
    lwc1	$f2,144($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,144($a0)
    lwc1	$f2,148($a2)
    lwc1	$f1,148($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,148($a0)
    lwc1	$f1,152($a2)
    lwc1	$f0,152($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,152($a0)
    lwc1	$f0,156($a2)
    lwc1	$f4,156($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,156($a0)
    # Line 196
    lwc1	$f4,160($a2)
    lwc1	$f3,160($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,160($a0)
    lwc1	$f3,164($a2)
    lwc1	$f2,164($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,164($a0)
    lwc1	$f2,168($a2)
    lwc1	$f1,168($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,168($a0)
    lwc1	$f1,172($a2)
    lwc1	$f0,172($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,172($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db35098
    # Line 197
    lwc1	$f1,104($a2)
    lwc1	$f0,176($a2)
    lwc1	$f3,176($a1)
    sub.s	$f3,$f3,$f0
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f0
    swc1	$f3,176($a0)
    # Line 198
    jr	$ra
    nop
.L0db35098:
    # Line 197
    lwc1	$f0,104($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    # Line 198
    jr	$ra
    # Line 197
    swc1	$f0,104($a0)
.end ClipBCF

# Function: ClipFT
# Declared: Line 200 (Source lines: 202-206)
# Address: 0x0db350b0 - 0x0db351cc (Size: 284 bytes, Frame: 0)
.ent ClipFT
ClipFT:
    # Line 203
    lwc1	$f0,124($a2)
    lwc1	$f4,124($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    # Line 202
    lui	$v1,0xd
    addiu	$v1,$v1,-27160
    addu	$at,$t9,$v1
    # Line 203
    add.s	$f4,$f4,$f0
    lwc1	$f3,_lit_3f800000
    div.s	$f3,$f3,$f4
    swc1	$f4,124($a0)
    swc1	$f3,140($a0)
    lwc1	$f3,112($a2)
    lwc1	$f2,112($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,112($a0)
    lwc1	$f2,116($a2)
    lwc1	$f1,116($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,116($a0)
    lwc1	$f1,120($a2)
    lwc1	$f0,120($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,120($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db351b4
    # Line 204
    lwc1	$f1,104($a2)
    lwc1	$f1,176($a2)
    lwc1	$f0,176($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,176($a0)
.L0db35150:
    # Line 205
    lwc1	$f0,48($a2)
    lwc1	$f4,48($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,48($a0)
    lwc1	$f4,52($a2)
    lwc1	$f3,52($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,52($a0)
    lwc1	$f3,56($a2)
    lwc1	$f2,56($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,56($a0)
    lwc1	$f2,60($a2)
    lwc1	$f1,60($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    # Line 206
    jr	$ra
    # Line 205
    swc1	$f1,60($a0)
.L0db351b4:
    # Line 204
    lwc1	$f0,104($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    b	.L0db35150
    swc1	$f0,104($a0)
.end ClipFT

# Function: ClipIFT
# Declared: Line 208 (Source lines: 210-215)
# Address: 0x0db351cc - 0x0db35300 (Size: 308 bytes, Frame: 0)
.ent ClipIFT
ClipIFT:
    # Line 211
    lwc1	$f1,124($a2)
    lwc1	$f0,124($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    # Line 210
    lui	$v1,0xd
    addiu	$v1,$v1,-27444
    addu	$at,$t9,$v1
    # Line 211
    add.s	$f0,$f0,$f1
    lwc1	$f4,_lit_3f800000
    div.s	$f4,$f4,$f0
    swc1	$f0,124($a0)
    swc1	$f4,140($a0)
    lwc1	$f4,112($a2)
    lwc1	$f3,112($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,112($a0)
    lwc1	$f3,116($a2)
    lwc1	$f2,116($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,116($a0)
    lwc1	$f2,120($a2)
    lwc1	$f1,120($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,120($a0)
    # Line 212
    lwc1	$f1,144($a2)
    lwc1	$f0,144($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,144($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db352e8
    # Line 213
    lwc1	$f2,104($a2)
    lwc1	$f2,176($a2)
    lwc1	$f1,176($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,176($a0)
.L0db35284:
    # Line 214
    lwc1	$f1,48($a2)
    lwc1	$f0,48($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,48($a0)
    lwc1	$f0,52($a2)
    lwc1	$f4,52($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,52($a0)
    lwc1	$f4,56($a2)
    lwc1	$f3,56($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,56($a0)
    lwc1	$f3,60($a2)
    lwc1	$f2,60($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    # Line 215
    jr	$ra
    # Line 214
    swc1	$f2,60($a0)
.L0db352e8:
    # Line 213
    lwc1	$f1,104($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    b	.L0db35284
    swc1	$f1,104($a0)
.end ClipIFT

# Function: ClipBIFT
# Declared: Line 217 (Source lines: 219-225)
# Address: 0x0db35300 - 0x0db3544c (Size: 332 bytes, Frame: 0)
.ent ClipBIFT
ClipBIFT:
    # Line 220
    lwc1	$f2,124($a2)
    lwc1	$f1,124($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    # Line 219
    lui	$v1,0xd
    addiu	$v1,$v1,-27752
    addu	$at,$t9,$v1
    # Line 220
    add.s	$f1,$f1,$f2
    lwc1	$f0,_lit_3f800000
    div.s	$f0,$f0,$f1
    swc1	$f1,124($a0)
    swc1	$f0,140($a0)
    lwc1	$f0,112($a2)
    lwc1	$f4,112($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,112($a0)
    lwc1	$f4,116($a2)
    lwc1	$f3,116($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,116($a0)
    lwc1	$f3,120($a2)
    lwc1	$f2,120($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,120($a0)
    # Line 221
    lwc1	$f2,144($a2)
    lwc1	$f1,144($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,144($a0)
    # Line 222
    lwc1	$f1,160($a2)
    lwc1	$f0,160($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,160($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db35434
    # Line 223
    lwc1	$f3,104($a2)
    lwc1	$f3,176($a2)
    lwc1	$f2,176($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,176($a0)
.L0db353d0:
    # Line 224
    lwc1	$f2,48($a2)
    lwc1	$f1,48($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,48($a0)
    lwc1	$f1,52($a2)
    lwc1	$f0,52($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,52($a0)
    lwc1	$f0,56($a2)
    lwc1	$f4,56($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,56($a0)
    lwc1	$f4,60($a2)
    lwc1	$f3,60($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    # Line 225
    jr	$ra
    # Line 224
    swc1	$f3,60($a0)
.L0db35434:
    # Line 223
    lwc1	$f2,104($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    b	.L0db353d0
    swc1	$f2,104($a0)
.end ClipBIFT

# Function: ClipCFT
# Declared: Line 227 (Source lines: 229-234)
# Address: 0x0db3544c - 0x0db355c8 (Size: 380 bytes, Frame: 0)
.ent ClipCFT
ClipCFT:
    # Line 230
    lwc1	$f4,124($a2)
    lwc1	$f3,124($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    # Line 229
    lui	$v1,0xd
    addiu	$v1,$v1,-28084
    addu	$at,$t9,$v1
    # Line 230
    add.s	$f3,$f3,$f4
    lwc1	$f2,_lit_3f800000
    div.s	$f2,$f2,$f3
    swc1	$f3,124($a0)
    swc1	$f2,140($a0)
    lwc1	$f2,112($a2)
    lwc1	$f1,112($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,112($a0)
    lwc1	$f1,116($a2)
    lwc1	$f0,116($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,116($a0)
    lwc1	$f0,120($a2)
    lwc1	$f4,120($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,120($a0)
    # Line 231
    lwc1	$f4,144($a2)
    lwc1	$f3,144($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,144($a0)
    lwc1	$f3,148($a2)
    lwc1	$f2,148($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,148($a0)
    lwc1	$f2,152($a2)
    lwc1	$f1,152($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,152($a0)
    lwc1	$f1,156($a2)
    lwc1	$f0,156($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,156($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db355b0
    # Line 232
    lwc1	$f1,104($a2)
    lwc1	$f1,176($a2)
    lwc1	$f0,176($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,176($a0)
.L0db3554c:
    # Line 233
    lwc1	$f0,48($a2)
    lwc1	$f4,48($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,48($a0)
    lwc1	$f4,52($a2)
    lwc1	$f3,52($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,52($a0)
    lwc1	$f3,56($a2)
    lwc1	$f2,56($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,56($a0)
    lwc1	$f2,60($a2)
    lwc1	$f1,60($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    # Line 234
    jr	$ra
    # Line 233
    swc1	$f1,60($a0)
.L0db355b0:
    # Line 232
    lwc1	$f0,104($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    b	.L0db3554c
    swc1	$f0,104($a0)
.end ClipCFT

# Function: ClipBCFT
# Declared: Line 236 (Source lines: 238-244)
# Address: 0x0db355c8 - 0x0db357a4 (Size: 476 bytes, Frame: 0)
.ent ClipBCFT
ClipBCFT:
    # Line 239
    lwc1	$f3,124($a2)
    lwc1	$f2,124($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    # Line 238
    lui	$v1,0xd
    addiu	$v1,$v1,-28464
    addu	$at,$t9,$v1
    # Line 239
    add.s	$f2,$f2,$f3
    lwc1	$f1,_lit_3f800000
    div.s	$f1,$f1,$f2
    swc1	$f2,124($a0)
    swc1	$f1,140($a0)
    lwc1	$f1,112($a2)
    lwc1	$f0,112($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,112($a0)
    lwc1	$f0,116($a2)
    lwc1	$f4,116($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,116($a0)
    lwc1	$f4,120($a2)
    lwc1	$f3,120($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,120($a0)
    # Line 240
    lwc1	$f3,144($a2)
    lwc1	$f2,144($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,144($a0)
    lwc1	$f2,148($a2)
    lwc1	$f1,148($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,148($a0)
    lwc1	$f1,152($a2)
    lwc1	$f0,152($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,152($a0)
    lwc1	$f0,156($a2)
    lwc1	$f4,156($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    swc1	$f4,156($a0)
    # Line 241
    lwc1	$f4,160($a2)
    lwc1	$f3,160($a1)
    sub.s	$f3,$f3,$f4
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f4
    swc1	$f3,160($a0)
    lwc1	$f3,164($a2)
    lwc1	$f2,164($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,164($a0)
    lwc1	$f2,168($a2)
    lwc1	$f1,168($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,168($a0)
    lwc1	$f1,172($a2)
    lwc1	$f0,172($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,172($a0)
    lw	$v0,0($a1)
    andi	$v0,$v0,0x40
    beqzl	$v0,.L0db3578c
    # Line 242
    lwc1	$f0,104($a2)
    lwc1	$f0,176($a2)
    lwc1	$f3,176($a1)
    sub.s	$f3,$f3,$f0
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f0
    swc1	$f3,176($a0)
.L0db35728:
    # Line 243
    lwc1	$f3,48($a2)
    lwc1	$f2,48($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f2,$f2,$f15
    add.s	$f2,$f2,$f3
    swc1	$f2,48($a0)
    lwc1	$f2,52($a2)
    lwc1	$f1,52($a1)
    sub.s	$f1,$f1,$f2
    mul.s	$f1,$f1,$f15
    add.s	$f1,$f1,$f2
    swc1	$f1,52($a0)
    lwc1	$f1,56($a2)
    lwc1	$f0,56($a1)
    sub.s	$f0,$f0,$f1
    mul.s	$f0,$f0,$f15
    add.s	$f0,$f0,$f1
    swc1	$f0,56($a0)
    lwc1	$f0,60($a2)
    lwc1	$f4,60($a1)
    sub.s	$f4,$f4,$f0
    mul.s	$f4,$f4,$f15
    add.s	$f4,$f4,$f0
    # Line 244
    jr	$ra
    # Line 243
    swc1	$f4,60($a0)
.L0db3578c:
    # Line 242
    lwc1	$f3,104($a1)
    sub.s	$f3,$f3,$f0
    mul.s	$f3,$f3,$f15
    add.s	$f3,$f3,$f0
    b	.L0db35728
    swc1	$f3,104($a0)
.end ClipBCFT

# Function: __glGenericPickParameterClipProcs
# Declared: Line 255 (Source lines: 256-294)
# Address: 0x0db357a4 - 0x0db358a4 (Size: 256 bytes, Frame: 0)
.globl __glGenericPickParameterClipProcs
.ent __glGenericPickParameterClipProcs
__glGenericPickParameterClipProcs:
    # Line 257
    move	$a3,$zero
    move	$a4,$zero
    lw	$v0,1696($a0)
    # Line 256
    lui	$v1,0xd
    addiu	$v1,$v1,-28940
    # Line 257
    andi	$v0,$v0,0x40
    beqz	$v0,.L0db35848
    # Line 256
    addu	$at,$t9,$v1
    # Line 257
    lbu	$a1,1325($a0)
    beqz	$a1,.L0db35848
    # Line 259
    li	$a7,1
    # Line 261
    lbu	$a2,3104($a0)
.L0db357d4:
    li	$t0,7424
    lw	$a6,1304($a0)
    beqz	$a2,.L0db35854
    lw	$a5,30488($a0)
    beq	$t0,$a6,.L0db357fc
    # Line 282
    andi	$v0,$a5,0x1000
    # Line 265
    beqz	$a7,.L0db3588c
    li	$a4,2
    # Line 267
    li	$a3,4
    # Line 282
    andi	$v0,$a5,0x1000
.L0db357fc:
    beqz	$v0,.L0db35870
    andi	$v1,$a5,0x2000
    # Line 286
    addiu	$a3,$a3,5
.L0db35808:
    # Line 285
    addiu	$a4,$a4,5
.L0db3580c:
    # Line 286
    lbu	$v1,28268($a0)
.L0db35810:
    # Line 290
    la	$v0,sub_0dbf0000
    # Line 286
    beqz	$v1,.L0db35824
    # Line 290
    addiu	$v0,$v0,12544
    addiu	$a3,$a3,10
    # Line 289
    addiu	$a4,$a4,10
.L0db35824:
    # Line 292
    sll	$a1,$a4,0x2
    # Line 293
    sll	$a2,$a3,0x2
    addu	$a2,$a2,$v0
    lw	$a2,0($a2)
    # Line 292
    addu	$a1,$a1,$v0
    lw	$a1,0($a1)
    # Line 293
    sw	$a2,12168($a0)
    # Line 294
    jr	$ra
    # Line 292
    sw	$a1,12548($a0)
.L0db35848:
    # Line 259
    move	$a7,$zero
    b	.L0db357d4
    # Line 261
    lbu	$a2,3104($a0)
.L0db35854:
    # Line 269
    beq	$t0,$a6,.L0db357fc
    # Line 282
    andi	$v0,$a5,0x1000
    # Line 274
    beqz	$a7,.L0db35898
    li	$a4,1
    # Line 276
    li	$a3,3
    b	.L0db357fc
    # Line 282
    andi	$v0,$a5,0x1000
.L0db35870:
    beqz	$v1,.L0db3580c
    lui	$a1,0x2
    and	$a1,$a5,$a1
    bnezl	$a1,.L0db35810
    # Line 286
    lbu	$v1,28268($a0)
    b	.L0db35808
    addiu	$a3,$a3,5
.L0db3588c:
    # Line 269
    li	$a3,2
    b	.L0db357fc
    # Line 282
    andi	$v0,$a5,0x1000
.L0db35898:
    # Line 278
    li	$a3,1
    b	.L0db357fc
    # Line 282
    andi	$v0,$a5,0x1000
.end __glGenericPickParameterClipProcs

.rdata
_lit_3f800000:
    .word 0x3f800000

