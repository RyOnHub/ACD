.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global SMS_GetSandRiseUpRatio__FPC10TLiveActor
SMS_GetSandRiseUpRatio__FPC10TLiveActor:
/* 800D1FB8 000CEEF8  7C 08 02 A6 */	mflr r0
/* 800D1FBC 000CEEFC  90 01 00 04 */	stw r0, 4(r1)
/* 800D1FC0 000CEF00  94 21 FF F8 */	stwu r1, -8(r1)
/* 800D1FC4 000CEF04  48 04 02 AD */	bl getModel__10TLiveActorCFv
/* 800D1FC8 000CEF08  80 63 00 58 */	lwz r3, 0x58(r3)
/* 800D1FCC 000CEF0C  C0 02 8E E0 */	lfs f0, $$21941@sda21(r2)
/* 800D1FD0 000CEF10  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 800D1FD4 000CEF14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D1FD8 000CEF18  40 81 00 0C */	ble lbl_800D1FE4
/* 800D1FDC 000CEF1C  FC 20 00 90 */	fmr f1, f0
/* 800D1FE0 000CEF20  48 00 00 14 */	b lbl_800D1FF4
lbl_800D1FE4:
/* 800D1FE4 000CEF24  C0 02 8E E4 */	lfs f0, $$21942@sda21(r2)
/* 800D1FE8 000CEF28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D1FEC 000CEF2C  40 80 00 08 */	bge lbl_800D1FF4
/* 800D1FF0 000CEF30  FC 20 00 90 */	fmr f1, f0
lbl_800D1FF4:
/* 800D1FF4 000CEF34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800D1FF8 000CEF38  38 21 00 08 */	addi r1, r1, 8
/* 800D1FFC 000CEF3C  7C 08 03 A6 */	mtlr r0
/* 800D2000 000CEF40  4E 80 00 20 */	blr 

.global SMS_GetGroundActor__FPC12TBGCheckDataUl
SMS_GetGroundActor__FPC12TBGCheckDataUl:
/* 800D2004 000CEF44  28 03 00 00 */	cmplwi r3, 0
/* 800D2008 000CEF48  38 A0 00 00 */	li r5, 0
/* 800D200C 000CEF4C  41 82 00 24 */	beq lbl_800D2030
/* 800D2010 000CEF50  80 63 00 44 */	lwz r3, 0x44(r3)
/* 800D2014 000CEF54  28 03 00 00 */	cmplwi r3, 0
/* 800D2018 000CEF58  38 A3 00 00 */	addi r5, r3, 0
/* 800D201C 000CEF5C  41 82 00 14 */	beq lbl_800D2030
/* 800D2020 000CEF60  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 800D2024 000CEF64  7C 04 00 40 */	cmplw r4, r0
/* 800D2028 000CEF68  41 82 00 08 */	beq lbl_800D2030
/* 800D202C 000CEF6C  38 A0 00 00 */	li r5, 0
lbl_800D2030:
/* 800D2030 000CEF70  7C A3 2B 78 */	mr r3, r5
/* 800D2034 000CEF74  4E 80 00 20 */	blr 

.global SMS_GetMonteVillageAreaInMario__Fv
SMS_GetMonteVillageAreaInMario__Fv:
/* 800D2038 000CEF78  80 8D 97 E8 */	lwz r4, gpMarDirector@sda21(r13)
/* 800D203C 000CEF7C  38 60 00 04 */	li r3, 4
/* 800D2040 000CEF80  88 04 00 7C */	lbz r0, 0x7c(r4)
/* 800D2044 000CEF84  28 00 00 08 */	cmplwi r0, 8
/* 800D2048 000CEF88  4C 82 00 20 */	bnelr 
/* 800D204C 000CEF8C  80 6D A8 B0 */	lwz r3, gpCamera@sda21(r13)
/* 800D2050 000CEF90  80 03 00 50 */	lwz r0, 0x50(r3)
/* 800D2054 000CEF94  2C 00 00 33 */	cmpwi r0, 0x33
/* 800D2058 000CEF98  40 82 00 0C */	bne lbl_800D2064
/* 800D205C 000CEF9C  38 60 00 01 */	li r3, 1
/* 800D2060 000CEFA0  4E 80 00 20 */	blr 
lbl_800D2064:
/* 800D2064 000CEFA4  80 6D A8 F8 */	lwz r3, gpCubeFastC@sda21(r13)
/* 800D2068 000CEFA8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800D206C 000CEFAC  2C 00 00 01 */	cmpwi r0, 1
/* 800D2070 000CEFB0  41 82 00 1C */	beq lbl_800D208C
/* 800D2074 000CEFB4  40 80 00 20 */	bge lbl_800D2094
/* 800D2078 000CEFB8  2C 00 00 00 */	cmpwi r0, 0
/* 800D207C 000CEFBC  40 80 00 08 */	bge lbl_800D2084
/* 800D2080 000CEFC0  48 00 00 14 */	b lbl_800D2094
lbl_800D2084:
/* 800D2084 000CEFC4  38 60 00 02 */	li r3, 2
/* 800D2088 000CEFC8  4E 80 00 20 */	blr 
lbl_800D208C:
/* 800D208C 000CEFCC  38 60 00 00 */	li r3, 0
/* 800D2090 000CEFD0  4E 80 00 20 */	blr 
lbl_800D2094:
/* 800D2094 000CEFD4  38 60 00 03 */	li r3, 3
/* 800D2098 000CEFD8  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21941:
	.incbin "baserom.dol", 0x3E4BE0, 0x4
$$21942:
  .4byte 0
