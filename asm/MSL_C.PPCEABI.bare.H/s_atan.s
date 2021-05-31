.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global atan
atan:
/* 80086848 00083788  7C 08 02 A6 */	mflr r0
/* 8008684C 0008378C  3C 60 80 37 */	lis r3, atanhi@ha
/* 80086850 00083790  90 01 00 04 */	stw r0, 4(r1)
/* 80086854 00083794  3C 00 44 10 */	lis r0, 0x4410
/* 80086858 00083798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008685C 0008379C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80086860 000837A0  3B E3 19 30 */	addi r31, r3, atanhi@l
/* 80086864 000837A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80086868 000837A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8008686C 000837AC  D8 21 00 08 */	stfd f1, 8(r1)
/* 80086870 000837B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80086874 000837B4  57 DD 00 7E */	clrlwi r29, r30, 1
/* 80086878 000837B8  7C 1D 00 00 */	cmpw r29, r0
/* 8008687C 000837BC  41 80 00 60 */	blt lbl_800868DC
/* 80086880 000837C0  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80086884 000837C4  7C 1D 00 00 */	cmpw r29, r0
/* 80086888 000837C8  41 81 00 1C */	bgt lbl_800868A4
/* 8008688C 000837CC  3C 1D 80 10 */	addis r0, r29, 0x8010
/* 80086890 000837D0  28 00 00 00 */	cmplwi r0, 0
/* 80086894 000837D4  40 82 00 1C */	bne lbl_800868B0
/* 80086898 000837D8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8008689C 000837DC  2C 00 00 00 */	cmpwi r0, 0
/* 800868A0 000837E0  41 82 00 10 */	beq lbl_800868B0
lbl_800868A4:
/* 800868A4 000837E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 800868A8 000837E8  FC 20 00 2A */	fadd f1, f0, f0
/* 800868AC 000837EC  48 00 01 C0 */	b lbl_80086A6C
lbl_800868B0:
/* 800868B0 000837F0  2C 1E 00 00 */	cmpwi r30, 0
/* 800868B4 000837F4  40 81 00 14 */	ble lbl_800868C8
/* 800868B8 000837F8  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 800868BC 000837FC  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 800868C0 00083800  FC 21 00 2A */	fadd f1, f1, f0
/* 800868C4 00083804  48 00 01 A8 */	b lbl_80086A6C
lbl_800868C8:
/* 800868C8 00083808  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 800868CC 0008380C  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 800868D0 00083810  FC 20 08 50 */	fneg f1, f1
/* 800868D4 00083814  FC 21 00 28 */	fsub f1, f1, f0
/* 800868D8 00083818  48 00 01 94 */	b lbl_80086A6C
lbl_800868DC:
/* 800868DC 0008381C  3C 00 3F DC */	lis r0, 0x3fdc
/* 800868E0 00083820  7C 1D 00 00 */	cmpw r29, r0
/* 800868E4 00083824  40 80 00 34 */	bge lbl_80086918
/* 800868E8 00083828  3C 00 3E 20 */	lis r0, 0x3e20
/* 800868EC 0008382C  7C 1D 00 00 */	cmpw r29, r0
/* 800868F0 00083830  40 80 00 20 */	bge lbl_80086910
/* 800868F4 00083834  C8 42 89 E0 */	lfd f2, $$2155@sda21(r2)
/* 800868F8 00083838  C8 21 00 08 */	lfd f1, 8(r1)
/* 800868FC 0008383C  C8 02 89 E8 */	lfd f0, $$2156@sda21(r2)
/* 80086900 00083840  FC 42 08 2A */	fadd f2, f2, f1
/* 80086904 00083844  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80086908 00083848  40 81 00 08 */	ble lbl_80086910
/* 8008690C 0008384C  48 00 01 60 */	b lbl_80086A6C
lbl_80086910:
/* 80086910 00083850  38 00 FF FF */	li r0, -1
/* 80086914 00083854  48 00 00 B4 */	b lbl_800869C8
lbl_80086918:
/* 80086918 00083858  C8 21 00 08 */	lfd f1, 8(r1)
/* 8008691C 0008385C  4B FF FC 8D */	bl fabs__Fd
/* 80086920 00083860  3C 00 3F F3 */	lis r0, 0x3ff3
/* 80086924 00083864  D8 21 00 08 */	stfd f1, 8(r1)
/* 80086928 00083868  7C 1D 00 00 */	cmpw r29, r0
/* 8008692C 0008386C  40 80 00 54 */	bge lbl_80086980
/* 80086930 00083870  3C 00 3F E6 */	lis r0, 0x3fe6
/* 80086934 00083874  7C 1D 00 00 */	cmpw r29, r0
/* 80086938 00083878  40 80 00 28 */	bge lbl_80086960
/* 8008693C 0008387C  C8 61 00 08 */	lfd f3, 8(r1)
/* 80086940 00083880  38 00 00 00 */	li r0, 0
/* 80086944 00083884  C8 42 89 F0 */	lfd f2, $$2157@sda21(r2)
/* 80086948 00083888  C8 22 89 E8 */	lfd f1, $$2156@sda21(r2)
/* 8008694C 0008388C  FC 02 18 2A */	fadd f0, f2, f3
/* 80086950 00083890  FC 22 08 F8 */	fmsub f1, f2, f3, f1
/* 80086954 00083894  FC 01 00 24 */	fdiv f0, f1, f0
/* 80086958 00083898  D8 01 00 08 */	stfd f0, 8(r1)
/* 8008695C 0008389C  48 00 00 6C */	b lbl_800869C8
lbl_80086960:
/* 80086960 000838A0  C8 41 00 08 */	lfd f2, 8(r1)
/* 80086964 000838A4  38 00 00 01 */	li r0, 1
/* 80086968 000838A8  C8 02 89 E8 */	lfd f0, $$2156@sda21(r2)
/* 8008696C 000838AC  FC 22 00 28 */	fsub f1, f2, f0
/* 80086970 000838B0  FC 00 10 2A */	fadd f0, f0, f2
/* 80086974 000838B4  FC 01 00 24 */	fdiv f0, f1, f0
/* 80086978 000838B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8008697C 000838BC  48 00 00 4C */	b lbl_800869C8
lbl_80086980:
/* 80086980 000838C0  3C 60 40 04 */	lis r3, 0x40038000@ha
/* 80086984 000838C4  38 03 80 00 */	addi r0, r3, 0x40038000@l
/* 80086988 000838C8  7C 1D 00 00 */	cmpw r29, r0
/* 8008698C 000838CC  40 80 00 28 */	bge lbl_800869B4
/* 80086990 000838D0  C8 61 00 08 */	lfd f3, 8(r1)
/* 80086994 000838D4  38 00 00 02 */	li r0, 2
/* 80086998 000838D8  C8 42 89 F8 */	lfd f2, $$2158@sda21(r2)
/* 8008699C 000838DC  C8 02 89 E8 */	lfd f0, $$2156@sda21(r2)
/* 800869A0 000838E0  FC 23 10 28 */	fsub f1, f3, f2
/* 800869A4 000838E4  FC 02 00 FA */	fmadd f0, f2, f3, f0
/* 800869A8 000838E8  FC 01 00 24 */	fdiv f0, f1, f0
/* 800869AC 000838EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 800869B0 000838F0  48 00 00 18 */	b lbl_800869C8
lbl_800869B4:
/* 800869B4 000838F4  C8 22 8A 00 */	lfd f1, $$2159@sda21(r2)
/* 800869B8 000838F8  38 00 00 03 */	li r0, 3
/* 800869BC 000838FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 800869C0 00083900  FC 01 00 24 */	fdiv f0, f1, f0
/* 800869C4 00083904  D8 01 00 08 */	stfd f0, 8(r1)
lbl_800869C8:
/* 800869C8 00083908  C9 41 00 08 */	lfd f10, 8(r1)
/* 800869CC 0008390C  2C 00 00 00 */	cmpwi r0, 0
/* 800869D0 00083910  C8 BF 00 90 */	lfd f5, 0x90(r31)
/* 800869D4 00083914  FD 8A 02 B2 */	fmul f12, f10, f10
/* 800869D8 00083918  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 800869DC 0008391C  C9 1F 00 70 */	lfd f8, 0x70(r31)
/* 800869E0 00083920  C8 9F 00 88 */	lfd f4, 0x88(r31)
/* 800869E4 00083924  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 800869E8 00083928  FD 6C 03 32 */	fmul f11, f12, f12
/* 800869EC 0008392C  C8 FF 00 60 */	lfd f7, 0x60(r31)
/* 800869F0 00083930  C8 5F 00 68 */	lfd f2, 0x68(r31)
/* 800869F4 00083934  C8 DF 00 50 */	lfd f6, 0x50(r31)
/* 800869F8 00083938  C8 3F 00 58 */	lfd f1, 0x58(r31)
/* 800869FC 0008393C  FD 2B 01 7A */	fmadd f9, f11, f5, f0
/* 80086A00 00083940  C8 BF 00 40 */	lfd f5, 0x40(r31)
/* 80086A04 00083944  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80086A08 00083948  FC 6B 19 3A */	fmadd f3, f11, f4, f3
/* 80086A0C 0008394C  FC 8B 42 7A */	fmadd f4, f11, f9, f8
/* 80086A10 00083950  FC 4B 10 FA */	fmadd f2, f11, f3, f2
/* 80086A14 00083954  FC 6B 39 3A */	fmadd f3, f11, f4, f7
/* 80086A18 00083958  FC 2B 08 BA */	fmadd f1, f11, f2, f1
/* 80086A1C 0008395C  FC 4B 30 FA */	fmadd f2, f11, f3, f6
/* 80086A20 00083960  FC 0B 00 7A */	fmadd f0, f11, f1, f0
/* 80086A24 00083964  FC 2B 28 BA */	fmadd f1, f11, f2, f5
/* 80086A28 00083968  FC 4B 00 32 */	fmul f2, f11, f0
/* 80086A2C 0008396C  FC 0C 00 72 */	fmul f0, f12, f1
/* 80086A30 00083970  40 80 00 10 */	bge lbl_80086A40
/* 80086A34 00083974  FC 00 10 2A */	fadd f0, f0, f2
/* 80086A38 00083978  FC 2A 50 3C */	fnmsub f1, f10, f0, f10
/* 80086A3C 0008397C  48 00 00 30 */	b lbl_80086A6C
lbl_80086A40:
/* 80086A40 00083980  54 00 18 38 */	slwi r0, r0, 3
/* 80086A44 00083984  FC 20 10 2A */	fadd f1, f0, f2
/* 80086A48 00083988  7C 7F 02 14 */	add r3, r31, r0
/* 80086A4C 0008398C  7C 5F 04 AE */	lfdx f2, r31, r0
/* 80086A50 00083990  C8 03 00 20 */	lfd f0, 0x20(r3)
/* 80086A54 00083994  2C 1E 00 00 */	cmpwi r30, 0
/* 80086A58 00083998  FC 0A 00 78 */	fmsub f0, f10, f1, f0
/* 80086A5C 0008399C  FC 00 50 28 */	fsub f0, f0, f10
/* 80086A60 000839A0  FC 22 00 28 */	fsub f1, f2, f0
/* 80086A64 000839A4  40 80 00 08 */	bge lbl_80086A6C
/* 80086A68 000839A8  FC 20 08 50 */	fneg f1, f1
lbl_80086A6C:
/* 80086A6C 000839AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80086A70 000839B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80086A74 000839B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80086A78 000839B8  7C 08 03 A6 */	mtlr r0
/* 80086A7C 000839BC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80086A80 000839C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80086A84 000839C4  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
atanhi:
	.incbin "baserom.dol", 0x36E930, 0x20
atanlo:
	.incbin "baserom.dol", 0x36E950, 0x20
aT:
	.incbin "baserom.dol", 0x36E970, 0x58

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2155:
	.incbin "baserom.dol", 0x3E46E0, 0x8
$$2156:
	.incbin "baserom.dol", 0x3E46E8, 0x8
$$2157:
	.incbin "baserom.dol", 0x3E46F0, 0x8
$$2158:
	.incbin "baserom.dol", 0x3E46F8, 0x8
$$2159:
	.incbin "baserom.dol", 0x3E4700, 0x8
