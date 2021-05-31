.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __dt__11TProgSelectFv
__dt__11TProgSelectFv:
/* 8023DD7C 0023ACBC  7C 08 02 A6 */	mflr r0
/* 8023DD80 0023ACC0  90 01 00 04 */	stw r0, 4(r1)
/* 8023DD84 0023ACC4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8023DD88 0023ACC8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8023DD8C 0023ACCC  3B E4 00 00 */	addi r31, r4, 0
/* 8023DD90 0023ACD0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8023DD94 0023ACD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8023DD98 0023ACD8  41 82 00 3C */	beq lbl_8023DDD4
/* 8023DD9C 0023ACDC  3C 60 80 3D */	lis r3, __vt__11TProgSelect@ha
/* 8023DDA0 0023ACE0  38 03 1E 30 */	addi r0, r3, __vt__11TProgSelect@l
/* 8023DDA4 0023ACE4  90 1E 00 00 */	stw r0, 0(r30)
/* 8023DDA8 0023ACE8  41 82 00 1C */	beq lbl_8023DDC4
/* 8023DDAC 0023ACEC  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 8023DDB0 0023ACF0  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 8023DDB4 0023ACF4  90 1E 00 00 */	stw r0, 0(r30)
/* 8023DDB8 0023ACF8  38 7E 00 00 */	addi r3, r30, 0
/* 8023DDBC 0023ACFC  38 80 00 00 */	li r4, 0
/* 8023DDC0 0023AD00  4B E0 6A 3D */	bl __dt__Q26JDrama8TNameRefFv
lbl_8023DDC4:
/* 8023DDC4 0023AD04  7F E0 07 35 */	extsh. r0, r31
/* 8023DDC8 0023AD08  40 81 00 0C */	ble lbl_8023DDD4
/* 8023DDCC 0023AD0C  7F C3 F3 78 */	mr r3, r30
/* 8023DDD0 0023AD10  4B DC EC E1 */	bl __dl__FPv
lbl_8023DDD4:
/* 8023DDD4 0023AD14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8023DDD8 0023AD18  7F C3 F3 78 */	mr r3, r30
/* 8023DDDC 0023AD1C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8023DDE0 0023AD20  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8023DDE4 0023AD24  7C 08 03 A6 */	mtlr r0
/* 8023DDE8 0023AD28  38 21 00 18 */	addi r1, r1, 0x18
/* 8023DDEC 0023AD2C  4E 80 00 20 */	blr 

.global perform__11TProgSelectFUlPQ26JDrama9TGraphics
perform__11TProgSelectFUlPQ26JDrama9TGraphics:
/* 8023DDF0 0023AD30  7C 08 02 A6 */	mflr r0
/* 8023DDF4 0023AD34  90 01 00 04 */	stw r0, 4(r1)
/* 8023DDF8 0023AD38  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8023DDFC 0023AD3C  94 21 FE 08 */	stwu r1, -0x1f8(r1)
/* 8023DE00 0023AD40  93 E1 01 F4 */	stw r31, 0x1f4(r1)
/* 8023DE04 0023AD44  93 C1 01 F0 */	stw r30, 0x1f0(r1)
/* 8023DE08 0023AD48  3B C5 00 00 */	addi r30, r5, 0
/* 8023DE0C 0023AD4C  93 A1 01 EC */	stw r29, 0x1ec(r1)
/* 8023DE10 0023AD50  3B A4 00 00 */	addi r29, r4, 0
/* 8023DE14 0023AD54  93 81 01 E8 */	stw r28, 0x1e8(r1)
/* 8023DE18 0023AD58  3B 83 00 00 */	addi r28, r3, 0
/* 8023DE1C 0023AD5C  41 82 02 1C */	beq lbl_8023E038
/* 8023DE20 0023AD60  88 1C 00 15 */	lbz r0, 0x15(r28)
/* 8023DE24 0023AD64  28 00 00 00 */	cmplwi r0, 0
/* 8023DE28 0023AD68  41 82 00 30 */	beq lbl_8023DE58
/* 8023DE2C 0023AD6C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8023DE30 0023AD70  38 03 00 10 */	addi r0, r3, 0x10
/* 8023DE34 0023AD74  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8023DE38 0023AD78  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8023DE3C 0023AD7C  2C 00 00 FF */	cmpwi r0, 0xff
/* 8023DE40 0023AD80  40 81 00 40 */	ble lbl_8023DE80
/* 8023DE44 0023AD84  38 00 00 FF */	li r0, 0xff
/* 8023DE48 0023AD88  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8023DE4C 0023AD8C  38 00 00 00 */	li r0, 0
/* 8023DE50 0023AD90  98 1C 00 15 */	stb r0, 0x15(r28)
/* 8023DE54 0023AD94  48 00 00 2C */	b lbl_8023DE80
lbl_8023DE58:
/* 8023DE58 0023AD98  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8023DE5C 0023AD9C  38 03 FF F0 */	addi r0, r3, -16
/* 8023DE60 0023ADA0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8023DE64 0023ADA4  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8023DE68 0023ADA8  2C 00 00 00 */	cmpwi r0, 0
/* 8023DE6C 0023ADAC  40 80 00 14 */	bge lbl_8023DE80
/* 8023DE70 0023ADB0  38 00 00 00 */	li r0, 0
/* 8023DE74 0023ADB4  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8023DE78 0023ADB8  38 00 00 01 */	li r0, 1
/* 8023DE7C 0023ADBC  98 1C 00 15 */	stb r0, 0x15(r28)
lbl_8023DE80:
/* 8023DE80 0023ADC0  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8023DE84 0023ADC4  8B FC 00 14 */	lbz r31, 0x14(r28)
/* 8023DE88 0023ADC8  80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 8023DE8C 0023ADCC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8023DE90 0023ADD0  41 82 00 1C */	beq lbl_8023DEAC
/* 8023DE94 0023ADD4  28 1F 00 00 */	cmplwi r31, 0
/* 8023DE98 0023ADD8  41 82 00 D8 */	beq lbl_8023DF70
/* 8023DE9C 0023ADDC  38 00 00 00 */	li r0, 0
/* 8023DEA0 0023ADE0  98 1C 00 14 */	stb r0, 0x14(r28)
/* 8023DEA4 0023ADE4  90 1C 01 28 */	stw r0, 0x128(r28)
/* 8023DEA8 0023ADE8  48 00 00 C8 */	b lbl_8023DF70
lbl_8023DEAC:
/* 8023DEAC 0023ADEC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8023DEB0 0023ADF0  41 82 00 20 */	beq lbl_8023DED0
/* 8023DEB4 0023ADF4  28 1F 00 01 */	cmplwi r31, 1
/* 8023DEB8 0023ADF8  41 82 00 B8 */	beq lbl_8023DF70
/* 8023DEBC 0023ADFC  38 00 00 01 */	li r0, 1
/* 8023DEC0 0023AE00  98 1C 00 14 */	stb r0, 0x14(r28)
/* 8023DEC4 0023AE04  38 00 00 00 */	li r0, 0
/* 8023DEC8 0023AE08  90 1C 01 28 */	stw r0, 0x128(r28)
/* 8023DECC 0023AE0C  48 00 00 A4 */	b lbl_8023DF70
lbl_8023DED0:
/* 8023DED0 0023AE10  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8023DED4 0023AE14  40 82 00 44 */	bne lbl_8023DF18
/* 8023DED8 0023AE18  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 8023DEDC 0023AE1C  3C 00 43 30 */	lis r0, 0x4330
/* 8023DEE0 0023AE20  38 63 00 01 */	addi r3, r3, 1
/* 8023DEE4 0023AE24  90 7C 01 28 */	stw r3, 0x128(r28)
/* 8023DEE8 0023AE28  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 8023DEEC 0023AE2C  C8 62 DA 50 */	lfd f3, $$21688@sda21(r2)
/* 8023DEF0 0023AE30  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8023DEF4 0023AE34  C0 3C 01 2C */	lfs f1, 0x12c(r28)
/* 8023DEF8 0023AE38  90 61 01 E4 */	stw r3, 0x1e4(r1)
/* 8023DEFC 0023AE3C  C0 02 DA 48 */	lfs f0, $$21684@sda21(r2)
/* 8023DF00 0023AE40  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 8023DF04 0023AE44  C8 41 01 E0 */	lfd f2, 0x1e0(r1)
/* 8023DF08 0023AE48  EC 42 18 28 */	fsubs f2, f2, f3
/* 8023DF0C 0023AE4C  EC 22 08 24 */	fdivs f1, f2, f1
/* 8023DF10 0023AE50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8023DF14 0023AE54  40 81 00 5C */	ble lbl_8023DF70
lbl_8023DF18:
/* 8023DF18 0023AE58  88 1C 00 14 */	lbz r0, 0x14(r28)
/* 8023DF1C 0023AE5C  28 00 00 00 */	cmplwi r0, 0
/* 8023DF20 0023AE60  40 82 00 28 */	bne lbl_8023DF48
/* 8023DF24 0023AE64  3C 60 80 39 */	lis r3, $$21685@ha
/* 8023DF28 0023AE68  4C C6 31 82 */	crclr 6
/* 8023DF2C 0023AE6C  38 A3 44 50 */	addi r5, r3, $$21685@l
/* 8023DF30 0023AE70  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8023DF34 0023AE74  38 80 01 00 */	li r4, 0x100
/* 8023DF38 0023AE78  4B E4 61 8D */	bl snprintf
/* 8023DF3C 0023AE7C  38 60 00 01 */	li r3, 1
/* 8023DF40 0023AE80  4B E5 47 ED */	bl OSSetProgressiveMode
/* 8023DF44 0023AE84  48 00 00 24 */	b lbl_8023DF68
lbl_8023DF48:
/* 8023DF48 0023AE88  3C 60 80 39 */	lis r3, $$21686@ha
/* 8023DF4C 0023AE8C  4C C6 31 82 */	crclr 6
/* 8023DF50 0023AE90  38 A3 44 C4 */	addi r5, r3, $$21686@l
/* 8023DF54 0023AE94  38 7C 00 1C */	addi r3, r28, 0x1c
/* 8023DF58 0023AE98  38 80 01 00 */	li r4, 0x100
/* 8023DF5C 0023AE9C  4B E4 61 69 */	bl snprintf
/* 8023DF60 0023AEA0  38 60 00 00 */	li r3, 0
/* 8023DF64 0023AEA4  4B E5 47 C9 */	bl OSSetProgressiveMode
lbl_8023DF68:
/* 8023DF68 0023AEA8  38 00 00 01 */	li r0, 1
/* 8023DF6C 0023AEAC  98 1C 00 16 */	stb r0, 0x16(r28)
lbl_8023DF70:
/* 8023DF70 0023AEB0  88 1C 00 14 */	lbz r0, 0x14(r28)
/* 8023DF74 0023AEB4  7C 1F 00 40 */	cmplw r31, r0
/* 8023DF78 0023AEB8  41 82 00 84 */	beq lbl_8023DFFC
/* 8023DF7C 0023AEBC  38 C0 00 FF */	li r6, 0xff
/* 8023DF80 0023AEC0  3C 80 00 FF */	lis r4, 0x00FF00FF@ha
/* 8023DF84 0023AEC4  90 DC 00 10 */	stw r6, 0x10(r28)
/* 8023DF88 0023AEC8  38 04 00 FF */	addi r0, r4, 0x00FF00FF@l
/* 8023DF8C 0023AECC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8023DF90 0023AED0  57 E0 10 3A */	slwi r0, r31, 2
/* 8023DF94 0023AED4  3C 60 7F 7F */	lis r3, 0x7F7F7FFF@ha
/* 8023DF98 0023AED8  80 A1 00 74 */	lwz r5, 0x74(r1)
/* 8023DF9C 0023AEDC  7C FC 02 14 */	add r7, r28, r0
/* 8023DFA0 0023AEE0  90 81 00 7C */	stw r4, 0x7c(r1)
/* 8023DFA4 0023AEE4  38 83 7F FF */	addi r4, r3, 0x7F7F7FFF@l
/* 8023DFA8 0023AEE8  38 03 7F 00 */	addi r0, r3, 0x7f00
/* 8023DFAC 0023AEEC  90 A1 00 78 */	stw r5, 0x78(r1)
/* 8023DFB0 0023AEF0  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 8023DFB4 0023AEF4  88 BC 00 14 */	lbz r5, 0x14(r28)
/* 8023DFB8 0023AEF8  54 A5 10 3A */	slwi r5, r5, 2
/* 8023DFBC 0023AEFC  7C BC 2A 14 */	add r5, r28, r5
/* 8023DFC0 0023AF00  80 A5 01 20 */	lwz r5, 0x120(r5)
/* 8023DFC4 0023AF04  90 65 01 20 */	stw r3, 0x120(r5)
/* 8023DFC8 0023AF08  80 61 00 78 */	lwz r3, 0x78(r1)
/* 8023DFCC 0023AF0C  90 65 01 1C */	stw r3, 0x11c(r5)
/* 8023DFD0 0023AF10  90 81 00 64 */	stw r4, 0x64(r1)
/* 8023DFD4 0023AF14  80 61 00 64 */	lwz r3, 0x64(r1)
/* 8023DFD8 0023AF18  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8023DFDC 0023AF1C  90 61 00 68 */	stw r3, 0x68(r1)
/* 8023DFE0 0023AF20  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8023DFE4 0023AF24  80 67 01 20 */	lwz r3, 0x120(r7)
/* 8023DFE8 0023AF28  90 03 01 20 */	stw r0, 0x120(r3)
/* 8023DFEC 0023AF2C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8023DFF0 0023AF30  90 03 01 1C */	stw r0, 0x11c(r3)
/* 8023DFF4 0023AF34  80 67 01 20 */	lwz r3, 0x120(r7)
/* 8023DFF8 0023AF38  98 C3 00 CC */	stb r6, 0xcc(r3)
lbl_8023DFFC:
/* 8023DFFC 0023AF3C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8023E000 0023AF40  3C 00 00 FF */	lis r0, 0xff
/* 8023E004 0023AF44  3C 63 00 FF */	addis r3, r3, 0xff
/* 8023E008 0023AF48  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8023E00C 0023AF4C  90 61 00 54 */	stw r3, 0x54(r1)
/* 8023E010 0023AF50  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8023E014 0023AF54  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8023E018 0023AF58  90 61 00 58 */	stw r3, 0x58(r1)
/* 8023E01C 0023AF5C  88 7C 00 14 */	lbz r3, 0x14(r28)
/* 8023E020 0023AF60  54 63 10 3A */	slwi r3, r3, 2
/* 8023E024 0023AF64  7C 7C 1A 14 */	add r3, r28, r3
/* 8023E028 0023AF68  80 63 01 20 */	lwz r3, 0x120(r3)
/* 8023E02C 0023AF6C  90 03 01 20 */	stw r0, 0x120(r3)
/* 8023E030 0023AF70  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8023E034 0023AF74  90 03 01 1C */	stw r0, 0x11c(r3)
lbl_8023E038:
/* 8023E038 0023AF78  57 A0 07 39 */	rlwinm. r0, r29, 0, 0x1c, 0x1c
/* 8023E03C 0023AF7C  41 82 00 AC */	beq lbl_8023E0E8
/* 8023E040 0023AF80  38 9E 00 54 */	addi r4, r30, 0x54
/* 8023E044 0023AF84  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8023E048 0023AF88  4B DF 8A F1 */	bl __ct__13J2DOrthoGraphFRC7JUTRect
/* 8023E04C 0023AF8C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8023E050 0023AF90  4B DF 71 D9 */	bl setup2D__14J2DGrafContextFv
/* 8023E054 0023AF94  80 8D 97 F8 */	lwz r4, gpSystemFont@sda21(r13)
/* 8023E058 0023AF98  38 61 00 84 */	addi r3, r1, 0x84
/* 8023E05C 0023AF9C  38 A0 00 00 */	li r5, 0
/* 8023E060 0023AFA0  4B DD 8C D9 */	bl __ct__8J2DPrintFP7JUTFonti
/* 8023E064 0023AFA4  38 00 00 20 */	li r0, 0x20
/* 8023E068 0023AFA8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8023E06C 0023AFAC  38 00 00 FF */	li r0, 0xff
/* 8023E070 0023AFB0  38 61 00 84 */	addi r3, r1, 0x84
/* 8023E074 0023AFB4  90 01 00 08 */	stw r0, 8(r1)
/* 8023E078 0023AFB8  38 9C 00 1C */	addi r4, r28, 0x1c
/* 8023E07C 0023AFBC  38 A0 01 2C */	li r5, 0x12c
/* 8023E080 0023AFC0  38 C0 00 A0 */	li r6, 0xa0
/* 8023E084 0023AFC4  38 E0 00 00 */	li r7, 0
/* 8023E088 0023AFC8  39 00 00 02 */	li r8, 2
/* 8023E08C 0023AFCC  39 20 00 AF */	li r9, 0xaf
/* 8023E090 0023AFD0  39 40 01 2C */	li r10, 0x12c
/* 8023E094 0023AFD4  4B DD 93 C9 */	bl printReturn__8J2DPrintFPCcii18J2DTextBoxHBinding18J2DTextBoxVBindingiiUc
/* 8023E098 0023AFD8  88 1C 00 16 */	lbz r0, 0x16(r28)
/* 8023E09C 0023AFDC  28 00 00 00 */	cmplwi r0, 0
/* 8023E0A0 0023AFE0  40 82 00 24 */	bne lbl_8023E0C4
/* 8023E0A4 0023AFE4  80 7C 01 20 */	lwz r3, 0x120(r28)
/* 8023E0A8 0023AFE8  38 80 00 F0 */	li r4, 0xf0
/* 8023E0AC 0023AFEC  38 A0 01 90 */	li r5, 0x190
/* 8023E0B0 0023AFF0  4B DD BB 35 */	bl draw__10J2DTextBoxFii
/* 8023E0B4 0023AFF4  80 7C 01 24 */	lwz r3, 0x124(r28)
/* 8023E0B8 0023AFF8  38 80 01 54 */	li r4, 0x154
/* 8023E0BC 0023AFFC  38 A0 01 90 */	li r5, 0x190
/* 8023E0C0 0023B000  4B DD BB 25 */	bl draw__10J2DTextBoxFii
lbl_8023E0C4:
/* 8023E0C4 0023B004  38 61 00 84 */	addi r3, r1, 0x84
/* 8023E0C8 0023B008  38 80 FF FF */	li r4, -1
/* 8023E0CC 0023B00C  4B DD 8D 61 */	bl __dt__8J2DPrintFv
/* 8023E0D0 0023B010  3C 60 80 3B */	lis r3, __vt__13J2DOrthoGraph@ha
/* 8023E0D4 0023B014  38 03 9B B0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 8023E0D8 0023B018  3C 60 80 3B */	lis r3, __vt__14J2DGrafContext@ha
/* 8023E0DC 0023B01C  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8023E0E0 0023B020  38 03 9B 48 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 8023E0E4 0023B024  90 01 00 E8 */	stw r0, 0xe8(r1)
lbl_8023E0E8:
/* 8023E0E8 0023B028  80 01 01 FC */	lwz r0, 0x1fc(r1)
/* 8023E0EC 0023B02C  83 E1 01 F4 */	lwz r31, 0x1f4(r1)
/* 8023E0F0 0023B030  83 C1 01 F0 */	lwz r30, 0x1f0(r1)
/* 8023E0F4 0023B034  7C 08 03 A6 */	mtlr r0
/* 8023E0F8 0023B038  83 A1 01 EC */	lwz r29, 0x1ec(r1)
/* 8023E0FC 0023B03C  83 81 01 E8 */	lwz r28, 0x1e8(r1)
/* 8023E100 0023B040  38 21 01 F8 */	addi r1, r1, 0x1f8
/* 8023E104 0023B044  4E 80 00 20 */	blr 

.global __ct__11TProgSelectFUcPCc
__ct__11TProgSelectFUcPCc:
/* 8023E108 0023B048  7C 08 02 A6 */	mflr r0
/* 8023E10C 0023B04C  90 01 00 04 */	stw r0, 4(r1)
/* 8023E110 0023B050  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 8023E114 0023B054  93 E1 00 94 */	stw r31, 0x94(r1)
/* 8023E118 0023B058  93 C1 00 90 */	stw r30, 0x90(r1)
/* 8023E11C 0023B05C  93 A1 00 8C */	stw r29, 0x8c(r1)
/* 8023E120 0023B060  3B A4 00 00 */	addi r29, r4, 0
/* 8023E124 0023B064  90 61 00 08 */	stw r3, 8(r1)
/* 8023E128 0023B068  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TNameRef@ha
/* 8023E12C 0023B06C  38 03 A8 60 */	addi r0, r3, __vt__Q26JDrama8TNameRef@l
/* 8023E130 0023B070  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023E134 0023B074  7C A3 2B 78 */	mr r3, r5
/* 8023E138 0023B078  90 1E 00 00 */	stw r0, 0(r30)
/* 8023E13C 0023B07C  90 BE 00 04 */	stw r5, 4(r30)
/* 8023E140 0023B080  4B E0 65 4D */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8023E144 0023B084  3C 80 80 3B */	lis r4, __vt__Q26JDrama8TViewObj@ha
/* 8023E148 0023B088  B0 7E 00 08 */	sth r3, 8(r30)
/* 8023E14C 0023B08C  38 04 A0 C0 */	addi r0, r4, __vt__Q26JDrama8TViewObj@l
/* 8023E150 0023B090  90 1E 00 00 */	stw r0, 0(r30)
/* 8023E154 0023B094  3B E0 00 00 */	li r31, 0
/* 8023E158 0023B098  3C 60 80 3D */	lis r3, __vt__11TProgSelect@ha
/* 8023E15C 0023B09C  B3 FE 00 0C */	sth r31, 0xc(r30)
/* 8023E160 0023B0A0  38 63 1E 30 */	addi r3, r3, __vt__11TProgSelect@l
/* 8023E164 0023B0A4  38 00 00 FF */	li r0, 0xff
/* 8023E168 0023B0A8  90 7E 00 00 */	stw r3, 0(r30)
/* 8023E16C 0023B0AC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8023E170 0023B0B0  9B BE 00 14 */	stb r29, 0x14(r30)
/* 8023E174 0023B0B4  9B FE 00 15 */	stb r31, 0x15(r30)
/* 8023E178 0023B0B8  9B FE 00 16 */	stb r31, 0x16(r30)
/* 8023E17C 0023B0BC  4B EB D4 D1 */	bl SMSGetVSyncTimesPerSec__Fv
/* 8023E180 0023B0C0  93 FE 01 28 */	stw r31, 0x128(r30)
/* 8023E184 0023B0C4  3C 60 80 39 */	lis r3, $$21734@ha
/* 8023E188 0023B0C8  38 A3 45 38 */	addi r5, r3, $$21734@l
/* 8023E18C 0023B0CC  4C C6 31 82 */	crclr 6
/* 8023E190 0023B0D0  D0 3E 01 2C */	stfs f1, 0x12c(r30)
/* 8023E194 0023B0D4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8023E198 0023B0D8  38 80 01 00 */	li r4, 0x100
/* 8023E19C 0023B0DC  4B E4 5F 29 */	bl snprintf
/* 8023E1A0 0023B0E0  38 60 01 28 */	li r3, 0x128
/* 8023E1A4 0023B0E4  4B DC E7 0D */	bl __nw__FUl
/* 8023E1A8 0023B0E8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8023E1AC 0023B0EC  41 82 00 18 */	beq lbl_8023E1C4
/* 8023E1B0 0023B0F0  80 8D 97 F8 */	lwz r4, gpSystemFont@sda21(r13)
/* 8023E1B4 0023B0F4  38 7D 00 00 */	addi r3, r29, 0
/* 8023E1B8 0023B0F8  38 A2 DA 58 */	addi r5, r2, $$21735@sda21
/* 8023E1BC 0023B0FC  80 84 00 48 */	lwz r4, 0x48(r4)
/* 8023E1C0 0023B100  4B DD B1 F1 */	bl __ct__10J2DTextBoxFPC7ResFONTPCc
lbl_8023E1C4:
/* 8023E1C4 0023B104  80 81 00 08 */	lwz r4, 8(r1)
/* 8023E1C8 0023B108  38 60 01 28 */	li r3, 0x128
/* 8023E1CC 0023B10C  93 A4 01 20 */	stw r29, 0x120(r4)
/* 8023E1D0 0023B110  4B DC E6 E1 */	bl __nw__FUl
/* 8023E1D4 0023B114  7C 7D 1B 79 */	or. r29, r3, r3
/* 8023E1D8 0023B118  41 82 00 18 */	beq lbl_8023E1F0
/* 8023E1DC 0023B11C  80 8D 97 F8 */	lwz r4, gpSystemFont@sda21(r13)
/* 8023E1E0 0023B120  38 7D 00 00 */	addi r3, r29, 0
/* 8023E1E4 0023B124  38 A2 DA 60 */	addi r5, r2, $$21736@sda21
/* 8023E1E8 0023B128  80 84 00 48 */	lwz r4, 0x48(r4)
/* 8023E1EC 0023B12C  4B DD B1 C5 */	bl __ct__10J2DTextBoxFPC7ResFONTPCc
lbl_8023E1F0:
/* 8023E1F0 0023B130  80 C1 00 08 */	lwz r6, 8(r1)
/* 8023E1F4 0023B134  38 00 00 1C */	li r0, 0x1c
/* 8023E1F8 0023B138  93 A6 01 24 */	stw r29, 0x124(r6)
/* 8023E1FC 0023B13C  80 66 01 20 */	lwz r3, 0x120(r6)
/* 8023E200 0023B140  90 03 01 14 */	stw r0, 0x114(r3)
/* 8023E204 0023B144  90 03 01 18 */	stw r0, 0x118(r3)
/* 8023E208 0023B148  80 66 01 24 */	lwz r3, 0x124(r6)
/* 8023E20C 0023B14C  90 03 01 14 */	stw r0, 0x114(r3)
/* 8023E210 0023B150  90 03 01 18 */	stw r0, 0x118(r3)
/* 8023E214 0023B154  88 06 00 14 */	lbz r0, 0x14(r6)
/* 8023E218 0023B158  28 00 00 00 */	cmplwi r0, 0
/* 8023E21C 0023B15C  40 82 00 64 */	bne lbl_8023E280
/* 8023E220 0023B160  3C 60 00 FF */	lis r3, 0x00FF00FF@ha
/* 8023E224 0023B164  38 03 00 FF */	addi r0, r3, 0x00FF00FF@l
/* 8023E228 0023B168  90 61 00 7C */	stw r3, 0x7c(r1)
/* 8023E22C 0023B16C  3C 60 7F 7F */	lis r3, 0x7F7F7FFF@ha
/* 8023E230 0023B170  90 01 00 74 */	stw r0, 0x74(r1)
/* 8023E234 0023B174  38 83 7F FF */	addi r4, r3, 0x7F7F7FFF@l
/* 8023E238 0023B178  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 8023E23C 0023B17C  38 03 7F 00 */	addi r0, r3, 0x7f00
/* 8023E240 0023B180  80 61 00 74 */	lwz r3, 0x74(r1)
/* 8023E244 0023B184  90 61 00 78 */	stw r3, 0x78(r1)
/* 8023E248 0023B188  80 E6 01 20 */	lwz r7, 0x120(r6)
/* 8023E24C 0023B18C  90 A7 01 20 */	stw r5, 0x120(r7)
/* 8023E250 0023B190  80 61 00 78 */	lwz r3, 0x78(r1)
/* 8023E254 0023B194  90 67 01 1C */	stw r3, 0x11c(r7)
/* 8023E258 0023B198  90 81 00 64 */	stw r4, 0x64(r1)
/* 8023E25C 0023B19C  80 61 00 64 */	lwz r3, 0x64(r1)
/* 8023E260 0023B1A0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8023E264 0023B1A4  90 61 00 68 */	stw r3, 0x68(r1)
/* 8023E268 0023B1A8  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8023E26C 0023B1AC  80 66 01 24 */	lwz r3, 0x124(r6)
/* 8023E270 0023B1B0  90 03 01 20 */	stw r0, 0x120(r3)
/* 8023E274 0023B1B4  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8023E278 0023B1B8  90 03 01 1C */	stw r0, 0x11c(r3)
/* 8023E27C 0023B1BC  48 00 00 60 */	b lbl_8023E2DC
lbl_8023E280:
/* 8023E280 0023B1C0  3C 60 00 FF */	lis r3, 0x00FF00FF@ha
/* 8023E284 0023B1C4  38 03 00 FF */	addi r0, r3, 0x00FF00FF@l
/* 8023E288 0023B1C8  90 61 00 5C */	stw r3, 0x5c(r1)
/* 8023E28C 0023B1CC  3C 60 7F 7F */	lis r3, 0x7F7F7FFF@ha
/* 8023E290 0023B1D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8023E294 0023B1D4  38 83 7F FF */	addi r4, r3, 0x7F7F7FFF@l
/* 8023E298 0023B1D8  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 8023E29C 0023B1DC  38 03 7F 00 */	addi r0, r3, 0x7f00
/* 8023E2A0 0023B1E0  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8023E2A4 0023B1E4  90 61 00 58 */	stw r3, 0x58(r1)
/* 8023E2A8 0023B1E8  80 E6 01 24 */	lwz r7, 0x124(r6)
/* 8023E2AC 0023B1EC  90 A7 01 20 */	stw r5, 0x120(r7)
/* 8023E2B0 0023B1F0  80 61 00 58 */	lwz r3, 0x58(r1)
/* 8023E2B4 0023B1F4  90 67 01 1C */	stw r3, 0x11c(r7)
/* 8023E2B8 0023B1F8  90 81 00 44 */	stw r4, 0x44(r1)
/* 8023E2BC 0023B1FC  80 61 00 44 */	lwz r3, 0x44(r1)
/* 8023E2C0 0023B200  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8023E2C4 0023B204  90 61 00 48 */	stw r3, 0x48(r1)
/* 8023E2C8 0023B208  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8023E2CC 0023B20C  80 66 01 20 */	lwz r3, 0x120(r6)
/* 8023E2D0 0023B210  90 03 01 20 */	stw r0, 0x120(r3)
/* 8023E2D4 0023B214  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8023E2D8 0023B218  90 03 01 1C */	stw r0, 0x11c(r3)
lbl_8023E2DC:
/* 8023E2DC 0023B21C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8023E2E0 0023B220  80 61 00 08 */	lwz r3, 8(r1)
/* 8023E2E4 0023B224  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 8023E2E8 0023B228  7C 08 03 A6 */	mtlr r0
/* 8023E2EC 0023B22C  83 C1 00 90 */	lwz r30, 0x90(r1)
/* 8023E2F0 0023B230  83 A1 00 8C */	lwz r29, 0x8c(r1)
/* 8023E2F4 0023B234  38 21 00 98 */	addi r1, r1, 0x98
/* 8023E2F8 0023B238  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21685:
	.incbin "baserom.dol", 0x391450, 0x74
$$21686:
	.incbin "baserom.dol", 0x3914C4, 0x74
$$21734:
	.incbin "baserom.dol", 0x391538, 0x28

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__11TProgSelect
__vt__11TProgSelect:
  .4byte 0
  .4byte 0
  .4byte __dt__11TProgSelectFv
  .4byte getType__Q26JDrama8TNameRefCFv
  .4byte load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
  .4byte save__Q26JDrama8TNameRefFR21JSUMemoryOutputStream
  .4byte loadAfter__Q26JDrama8TNameRefFv
  .4byte searchF__Q26JDrama8TNameRefFUsPCc
  .4byte perform__11TProgSelectFUlPQ26JDrama9TGraphics
  .4byte 0

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21684:
	.incbin "baserom.dol", 0x3E9748, 0x8
$$21688:
	.incbin "baserom.dol", 0x3E9750, 0x8
$$21735:
	.incbin "baserom.dol", 0x3E9758, 0x8
$$21736:
	.incbin "baserom.dol", 0x3E9760, 0x8
