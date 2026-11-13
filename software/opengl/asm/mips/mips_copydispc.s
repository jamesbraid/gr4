# Source: ../mips/mips_copydispc.c
# Category: mips
# Compiler Options: /xlv55/kudzu-apr12/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_NUMBER_OF_AUX_BUFFERS=1 -DNEW_LISTS -DDLPULL -D__GL_IGLOO_INTERFACE -DMGRAS -DI2_64 -DIP28 -DR10000 -DALLOW_FASTPATH=0 -DFORCEDCXTSWITCH -I. -I../include -I../MGRAS -I../../../include/MGRAS/gl -I../MGRAS.IP28 -use_readonly_const -fullwarn -OPT:Olimit=3390 -use_readonly_const -nostdinc -I/xlv55/kudzu-apr12/root/usr/include -mips3 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../mips/mips_copydispc.c
# Total Functions: 1

.text

# Function: __glMipsCopyDispatch
# Declared: Line 11 (Source lines: 14-15)
# Address: 0x0db04520 - 0x0db0454c (Size: 44 bytes, Frame: 0)
.globl __glMipsCopyDispatch
.ent __glMipsCopyDispatch
__glMipsCopyDispatch:
    # Line 14
    move	$a4,$zero
    li	$a3,257
.L0db04528:
    addu	$v0,$a4,$a1
    addu	$at,$a4,$a0
    addiu	$a4,$a4,8
    ld	$at,0($at)
    addiu	$a3,$a3,-1
    bgtz	$a3,.L0db04528
    sd	$at,0($v0)
    # Line 15
    jr	$ra
    nop
.end __glMipsCopyDispatch

