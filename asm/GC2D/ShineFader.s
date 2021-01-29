.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global __dt__11TShineFaderFv
__dt__11TShineFaderFv:
/* 8023DB6C 0023AAAC  7C 08 02 A6 */	mflr r0
/* 8023DB70 0023AAB0  90 01 00 04 */	stw r0, 4(r1)
/* 8023DB74 0023AAB4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8023DB78 0023AAB8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8023DB7C 0023AABC  3B E4 00 00 */	addi r31, r4, 0
/* 8023DB80 0023AAC0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8023DB84 0023AAC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8023DB88 0023AAC8  41 82 00 5C */	beq lbl_8023DBE4
/* 8023DB8C 0023AACC  3C 60 80 3D */	lis r3, __vt__11TShineFader@ha
/* 8023DB90 0023AAD0  38 03 1E 00 */	addi r0, r3, __vt__11TShineFader@l
/* 8023DB94 0023AAD4  90 1E 00 00 */	stw r0, 0(r30)
/* 8023DB98 0023AAD8  41 82 00 3C */	beq lbl_8023DBD4
/* 8023DB9C 0023AADC  3C 60 80 3B */	lis r3, __vt__10TSmplFader@ha
/* 8023DBA0 0023AAE0  38 03 3E 78 */	addi r0, r3, __vt__10TSmplFader@l
/* 8023DBA4 0023AAE4  90 1E 00 00 */	stw r0, 0(r30)
/* 8023DBA8 0023AAE8  41 82 00 2C */	beq lbl_8023DBD4
/* 8023DBAC 0023AAEC  3C 60 80 3D */	lis r3, __vt__9TSMSFader@ha
/* 8023DBB0 0023AAF0  38 03 0E E8 */	addi r0, r3, __vt__9TSMSFader@l
/* 8023DBB4 0023AAF4  90 1E 00 00 */	stw r0, 0(r30)
/* 8023DBB8 0023AAF8  41 82 00 1C */	beq lbl_8023DBD4
/* 8023DBBC 0023AAFC  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 8023DBC0 0023AB00  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 8023DBC4 0023AB04  90 1E 00 00 */	stw r0, 0(r30)
/* 8023DBC8 0023AB08  38 7E 00 00 */	addi r3, r30, 0
/* 8023DBCC 0023AB0C  38 80 00 00 */	li r4, 0
/* 8023DBD0 0023AB10  4B E0 6C 2D */	bl __dt__Q26JDrama8TNameRefFv
lbl_8023DBD4:
/* 8023DBD4 0023AB14  7F E0 07 35 */	extsh. r0, r31
/* 8023DBD8 0023AB18  40 81 00 0C */	ble lbl_8023DBE4
/* 8023DBDC 0023AB1C  7F C3 F3 78 */	mr r3, r30
/* 8023DBE0 0023AB20  4B DC EE D1 */	bl __dl__FPv
lbl_8023DBE4:
/* 8023DBE4 0023AB24  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8023DBE8 0023AB28  7F C3 F3 78 */	mr r3, r30
/* 8023DBEC 0023AB2C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8023DBF0 0023AB30  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8023DBF4 0023AB34  7C 08 03 A6 */	mtlr r0
/* 8023DBF8 0023AB38  38 21 00 18 */	addi r1, r1, 0x18
/* 8023DBFC 0023AB3C  4E 80 00 20 */	blr 

.global load__11TShineFaderFR20JSUMemoryInputStream
load__11TShineFaderFR20JSUMemoryInputStream:
/* 8023DC00 0023AB40  7C 08 02 A6 */	mflr r0
/* 8023DC04 0023AB44  90 01 00 04 */	stw r0, 4(r1)
/* 8023DC08 0023AB48  94 21 FF F8 */	stwu r1, -8(r1)
/* 8023DC0C 0023AB4C  4B E0 6C 45 */	bl load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
/* 8023DC10 0023AB50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8023DC14 0023AB54  38 21 00 08 */	addi r1, r1, 8
/* 8023DC18 0023AB58  7C 08 03 A6 */	mtlr r0
/* 8023DC1C 0023AB5C  4E 80 00 20 */	blr 

.global registFadeout__11TShineFaderFUsUs
registFadeout__11TShineFaderFUsUs:
/* 8023DC20 0023AB60  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 8023DC24 0023AB64  38 C0 00 00 */	li r6, 0
/* 8023DC28 0023AB68  40 82 00 08 */	bne lbl_8023DC30
/* 8023DC2C 0023AB6C  38 80 00 01 */	li r4, 1
lbl_8023DC30:
/* 8023DC30 0023AB70  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8023DC34 0023AB74  2C 00 00 01 */	cmpwi r0, 1
/* 8023DC38 0023AB78  41 82 00 08 */	beq lbl_8023DC40
/* 8023DC3C 0023AB7C  48 00 00 20 */	b lbl_8023DC5C
lbl_8023DC40:
/* 8023DC40 0023AB80  38 00 00 03 */	li r0, 3
/* 8023DC44 0023AB84  90 03 00 20 */	stw r0, 0x20(r3)
/* 8023DC48 0023AB88  38 00 00 00 */	li r0, 0
/* 8023DC4C 0023AB8C  38 C0 00 01 */	li r6, 1
/* 8023DC50 0023AB90  B0 03 00 12 */	sth r0, 0x12(r3)
/* 8023DC54 0023AB94  B0 83 00 10 */	sth r4, 0x10(r3)
/* 8023DC58 0023AB98  B0 A3 00 38 */	sth r5, 0x38(r3)
lbl_8023DC5C:
/* 8023DC5C 0023AB9C  7C C3 33 78 */	mr r3, r6
/* 8023DC60 0023ABA0  4E 80 00 20 */	blr 

.global perform__11TShineFaderFUlPQ26JDrama9TGraphics
perform__11TShineFaderFUlPQ26JDrama9TGraphics:
/* 8023DC64 0023ABA4  7C 08 02 A6 */	mflr r0
/* 8023DC68 0023ABA8  90 01 00 04 */	stw r0, 4(r1)
/* 8023DC6C 0023ABAC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8023DC70 0023ABB0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8023DC74 0023ABB4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8023DC78 0023ABB8  3B E5 00 00 */	addi r31, r5, 0
/* 8023DC7C 0023ABBC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8023DC80 0023ABC0  3B C4 00 00 */	addi r30, r4, 0
/* 8023DC84 0023ABC4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8023DC88 0023ABC8  3B A3 00 00 */	addi r29, r3, 0
/* 8023DC8C 0023ABCC  41 82 00 18 */	beq lbl_8023DCA4
/* 8023DC90 0023ABD0  7F A3 EB 78 */	mr r3, r29
/* 8023DC94 0023ABD4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8023DC98 0023ABD8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8023DC9C 0023ABDC  7D 88 03 A6 */	mtlr r12
/* 8023DCA0 0023ABE0  4E 80 00 21 */	blrl 
lbl_8023DCA4:
/* 8023DCA4 0023ABE4  57 C0 07 39 */	rlwinm. r0, r30, 0, 0x1c, 0x1c
/* 8023DCA8 0023ABE8  41 82 00 1C */	beq lbl_8023DCC4
/* 8023DCAC 0023ABEC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8023DCB0 0023ABF0  7F A3 EB 78 */	mr r3, r29
/* 8023DCB4 0023ABF4  38 9F 00 54 */	addi r4, r31, 0x54
/* 8023DCB8 0023ABF8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8023DCBC 0023ABFC  7D 88 03 A6 */	mtlr r12
/* 8023DCC0 0023AC00  4E 80 00 21 */	blrl 
lbl_8023DCC4:
/* 8023DCC4 0023AC04  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8023DCC8 0023AC08  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8023DCCC 0023AC0C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8023DCD0 0023AC10  7C 08 03 A6 */	mtlr r0
/* 8023DCD4 0023AC14  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8023DCD8 0023AC18  38 21 00 28 */	addi r1, r1, 0x28
/* 8023DCDC 0023AC1C  4E 80 00 20 */	blr 

.global update__11TShineFaderFv
update__11TShineFaderFv:
/* 8023DCE0 0023AC20  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8023DCE4 0023AC24  2C 00 00 02 */	cmpwi r0, 2
/* 8023DCE8 0023AC28  4D 82 00 20 */	beqlr 
/* 8023DCEC 0023AC2C  40 80 00 14 */	bge lbl_8023DD00
/* 8023DCF0 0023AC30  2C 00 00 00 */	cmpwi r0, 0
/* 8023DCF4 0023AC34  41 82 00 24 */	beq lbl_8023DD18
/* 8023DCF8 0023AC38  40 80 00 14 */	bge lbl_8023DD0C
/* 8023DCFC 0023AC3C  4E 80 00 20 */	blr 
lbl_8023DD00:
/* 8023DD00 0023AC40  2C 00 00 04 */	cmpwi r0, 4
/* 8023DD04 0023AC44  4C 80 00 20 */	bgelr 
/* 8023DD08 0023AC48  48 00 00 1C */	b lbl_8023DD24
lbl_8023DD0C:
/* 8023DD0C 0023AC4C  38 00 00 00 */	li r0, 0
/* 8023DD10 0023AC50  98 03 00 1B */	stb r0, 0x1b(r3)
/* 8023DD14 0023AC54  4E 80 00 20 */	blr 
lbl_8023DD18:
/* 8023DD18 0023AC58  38 00 00 FF */	li r0, 0xff
/* 8023DD1C 0023AC5C  98 03 00 1B */	stb r0, 0x1b(r3)
/* 8023DD20 0023AC60  4E 80 00 20 */	blr 
lbl_8023DD24:
/* 8023DD24 0023AC64  A0 83 00 12 */	lhz r4, 0x12(r3)
/* 8023DD28 0023AC68  38 04 00 01 */	addi r0, r4, 1
/* 8023DD2C 0023AC6C  B0 03 00 12 */	sth r0, 0x12(r3)
/* 8023DD30 0023AC70  A0 83 00 38 */	lhz r4, 0x38(r3)
/* 8023DD34 0023AC74  A0 C3 00 10 */	lhz r6, 0x10(r3)
/* 8023DD38 0023AC78  A0 A3 00 12 */	lhz r5, 0x12(r3)
/* 8023DD3C 0023AC7C  7C 04 32 14 */	add r0, r4, r6
/* 8023DD40 0023AC80  7C 05 00 00 */	cmpw r5, r0
/* 8023DD44 0023AC84  40 81 00 14 */	ble lbl_8023DD58
/* 8023DD48 0023AC88  38 00 00 00 */	li r0, 0
/* 8023DD4C 0023AC8C  90 03 00 20 */	stw r0, 0x20(r3)
/* 8023DD50 0023AC90  98 03 00 1C */	stb r0, 0x1c(r3)
/* 8023DD54 0023AC94  4E 80 00 20 */	blr 
lbl_8023DD58:
/* 8023DD58 0023AC98  7C 05 20 40 */	cmplw r5, r4
/* 8023DD5C 0023AC9C  4C 81 00 20 */	blelr 
/* 8023DD60 0023ACA0  38 05 FF FF */	addi r0, r5, -1
/* 8023DD64 0023ACA4  7C 04 00 50 */	subf r0, r4, r0
/* 8023DD68 0023ACA8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8023DD6C 0023ACAC  1C 00 00 FF */	mulli r0, r0, 0xff
/* 8023DD70 0023ACB0  7C 00 33 D6 */	divw r0, r0, r6
/* 8023DD74 0023ACB4  98 03 00 1B */	stb r0, 0x1b(r3)
/* 8023DD78 0023ACB8  4E 80 00 20 */	blr 