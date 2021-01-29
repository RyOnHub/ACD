.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global OSGetTime
OSGetTime:
/* 80093DF8 00090D38  7C 6D 42 E6 */	mftbu r3
/* 80093DFC 00090D3C  7C 8C 42 E6 */	mftb r4, 0x10c
/* 80093E00 00090D40  7C AD 42 E6 */	mftbu r5
/* 80093E04 00090D44  7C 03 28 00 */	cmpw r3, r5
/* 80093E08 00090D48  40 82 FF F0 */	bne OSGetTime
/* 80093E0C 00090D4C  4E 80 00 20 */	blr 

.global OSGetTick
OSGetTick:
/* 80093E10 00090D50  7C 6C 42 E6 */	mftb r3, 0x10c
/* 80093E14 00090D54  4E 80 00 20 */	blr 

.global __OSGetSystemTime
__OSGetSystemTime:
/* 80093E18 00090D58  7C 08 02 A6 */	mflr r0
/* 80093E1C 00090D5C  90 01 00 04 */	stw r0, 4(r1)
/* 80093E20 00090D60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80093E24 00090D64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80093E28 00090D68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80093E2C 00090D6C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80093E30 00090D70  4B FF C3 9D */	bl OSDisableInterrupts
/* 80093E34 00090D74  7C 7F 1B 78 */	mr r31, r3
/* 80093E38 00090D78  4B FF FF C1 */	bl OSGetTime
/* 80093E3C 00090D7C  3C C0 80 00 */	lis r6, 0x800030DC@ha
/* 80093E40 00090D80  80 A6 30 DC */	lwz r5, 0x800030DC@l(r6)
/* 80093E44 00090D84  80 06 30 D8 */	lwz r0, 0x30d8(r6)
/* 80093E48 00090D88  7F A5 20 14 */	addc r29, r5, r4
/* 80093E4C 00090D8C  7F C0 19 14 */	adde r30, r0, r3
/* 80093E50 00090D90  7F E3 FB 78 */	mr r3, r31
/* 80093E54 00090D94  4B FF C3 A1 */	bl OSRestoreInterrupts
/* 80093E58 00090D98  7F A4 EB 78 */	mr r4, r29
/* 80093E5C 00090D9C  7F C3 F3 78 */	mr r3, r30
/* 80093E60 00090DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80093E64 00090DA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80093E68 00090DA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80093E6C 00090DAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80093E70 00090DB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80093E74 00090DB4  7C 08 03 A6 */	mtlr r0
/* 80093E78 00090DB8  4E 80 00 20 */	blr 

.global GetDates
GetDates:
/* 80093E7C 00090DBC  3C A0 92 49 */	lis r5, 0x92492493@ha
/* 80093E80 00090DC0  38 05 24 93 */	addi r0, r5, 0x92492493@l
/* 80093E84 00090DC4  38 E3 00 06 */	addi r7, r3, 6
/* 80093E88 00090DC8  7C C0 38 96 */	mulhw r6, r0, r7
/* 80093E8C 00090DCC  3C A0 B3 8D */	lis r5, 0xB38CF9B1@ha
/* 80093E90 00090DD0  38 05 F9 B1 */	addi r0, r5, 0xB38CF9B1@l
/* 80093E94 00090DD4  7C 00 18 96 */	mulhw r0, r0, r3
/* 80093E98 00090DD8  7C A6 3A 14 */	add r5, r6, r7
/* 80093E9C 00090DDC  7C A5 16 70 */	srawi r5, r5, 2
/* 80093EA0 00090DE0  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 80093EA4 00090DE4  7C A5 32 14 */	add r5, r5, r6
/* 80093EA8 00090DE8  7C 00 1A 14 */	add r0, r0, r3
/* 80093EAC 00090DEC  1C C5 00 07 */	mulli r6, r5, 7
/* 80093EB0 00090DF0  7C 00 46 70 */	srawi r0, r0, 8
/* 80093EB4 00090DF4  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80093EB8 00090DF8  7C A0 2A 14 */	add r5, r0, r5
/* 80093EBC 00090DFC  7C 06 38 50 */	subf r0, r6, r7
/* 80093EC0 00090E00  1D 65 01 6D */	mulli r11, r5, 0x16d
/* 80093EC4 00090E04  90 04 00 18 */	stw r0, 0x18(r4)
/* 80093EC8 00090E08  48 00 00 04 */	b lbl_80093ECC
lbl_80093ECC:
/* 80093ECC 00090E0C  3C C0 51 EC */	lis r6, 0x51EB851F@ha
/* 80093ED0 00090E10  39 46 85 1F */	addi r10, r6, 0x51EB851F@l
/* 80093ED4 00090E14  48 00 00 04 */	b lbl_80093ED8
lbl_80093ED8:
/* 80093ED8 00090E18  48 00 00 0C */	b lbl_80093EE4
lbl_80093EDC:
/* 80093EDC 00090E1C  39 6B FE 93 */	addi r11, r11, -365
/* 80093EE0 00090E20  38 A5 FF FF */	addi r5, r5, -1
lbl_80093EE4:
/* 80093EE4 00090E24  2C 05 00 01 */	cmpwi r5, 1
/* 80093EE8 00090E28  40 80 00 0C */	bge lbl_80093EF4
/* 80093EEC 00090E2C  38 00 00 00 */	li r0, 0
/* 80093EF0 00090E30  48 00 00 38 */	b lbl_80093F28
lbl_80093EF4:
/* 80093EF4 00090E34  38 05 FF FF */	addi r0, r5, -1
/* 80093EF8 00090E38  7C 0A 00 96 */	mulhw r0, r10, r0
/* 80093EFC 00090E3C  7C 08 3E 70 */	srawi r8, r0, 7
/* 80093F00 00090E40  7C 06 2E 70 */	srawi r6, r0, 5
/* 80093F04 00090E44  38 05 00 03 */	addi r0, r5, 3
/* 80093F08 00090E48  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 80093F0C 00090E4C  7C 00 16 70 */	srawi r0, r0, 2
/* 80093F10 00090E50  55 09 0F FE */	srwi r9, r8, 0x1f
/* 80093F14 00090E54  7C C6 3A 14 */	add r6, r6, r7
/* 80093F18 00090E58  7C 00 01 94 */	addze r0, r0
/* 80093F1C 00090E5C  7C E8 4A 14 */	add r7, r8, r9
/* 80093F20 00090E60  7C 06 00 50 */	subf r0, r6, r0
/* 80093F24 00090E64  7C 07 02 14 */	add r0, r7, r0
lbl_80093F28:
/* 80093F28 00090E68  7C 0B 02 14 */	add r0, r11, r0
/* 80093F2C 00090E6C  7C 03 00 00 */	cmpw r3, r0
/* 80093F30 00090E70  41 80 FF AC */	blt lbl_80093EDC
/* 80093F34 00090E74  7C A6 16 70 */	srawi r6, r5, 2
/* 80093F38 00090E78  90 A4 00 14 */	stw r5, 0x14(r4)
/* 80093F3C 00090E7C  7C C6 01 94 */	addze r6, r6
/* 80093F40 00090E80  54 C6 10 3A */	slwi r6, r6, 2
/* 80093F44 00090E84  7C C6 28 10 */	subfc r6, r6, r5
/* 80093F48 00090E88  7C 00 18 50 */	subf r0, r0, r3
/* 80093F4C 00090E8C  2C 06 00 00 */	cmpwi r6, 0
/* 80093F50 00090E90  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80093F54 00090E94  38 E0 00 01 */	li r7, 1
/* 80093F58 00090E98  39 00 00 00 */	li r8, 0
/* 80093F5C 00090E9C  40 82 00 30 */	bne lbl_80093F8C
/* 80093F60 00090EA0  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 80093F64 00090EA4  38 63 85 1F */	addi r3, r3, 0x51EB851F@l
/* 80093F68 00090EA8  7C 63 28 96 */	mulhw r3, r3, r5
/* 80093F6C 00090EAC  7C 63 2E 70 */	srawi r3, r3, 5
/* 80093F70 00090EB0  54 66 0F FE */	srwi r6, r3, 0x1f
/* 80093F74 00090EB4  7C 63 32 14 */	add r3, r3, r6
/* 80093F78 00090EB8  1C 63 00 64 */	mulli r3, r3, 0x64
/* 80093F7C 00090EBC  7C 63 28 50 */	subf r3, r3, r5
/* 80093F80 00090EC0  2C 03 00 00 */	cmpwi r3, 0
/* 80093F84 00090EC4  41 82 00 08 */	beq lbl_80093F8C
/* 80093F88 00090EC8  7C E8 3B 78 */	mr r8, r7
lbl_80093F8C:
/* 80093F8C 00090ECC  2C 08 00 00 */	cmpwi r8, 0
/* 80093F90 00090ED0  40 82 00 30 */	bne lbl_80093FC0
/* 80093F94 00090ED4  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 80093F98 00090ED8  38 63 85 1F */	addi r3, r3, 0x51EB851F@l
/* 80093F9C 00090EDC  7C 63 28 96 */	mulhw r3, r3, r5
/* 80093FA0 00090EE0  7C 63 3E 70 */	srawi r3, r3, 7
/* 80093FA4 00090EE4  54 66 0F FE */	srwi r6, r3, 0x1f
/* 80093FA8 00090EE8  7C 63 32 14 */	add r3, r3, r6
/* 80093FAC 00090EEC  1C 63 01 90 */	mulli r3, r3, 0x190
/* 80093FB0 00090EF0  7C 63 28 50 */	subf r3, r3, r5
/* 80093FB4 00090EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80093FB8 00090EF8  41 82 00 08 */	beq lbl_80093FC0
/* 80093FBC 00090EFC  38 E0 00 00 */	li r7, 0
lbl_80093FC0:
/* 80093FC0 00090F00  2C 07 00 00 */	cmpwi r7, 0
/* 80093FC4 00090F04  41 82 00 10 */	beq lbl_80093FD4
/* 80093FC8 00090F08  3C 60 80 3B */	lis r3, LeapYearDays@ha
/* 80093FCC 00090F0C  38 C3 09 40 */	addi r6, r3, LeapYearDays@l
/* 80093FD0 00090F10  48 00 00 0C */	b lbl_80093FDC
lbl_80093FD4:
/* 80093FD4 00090F14  3C 60 80 3B */	lis r3, YearDays@ha
/* 80093FD8 00090F18  38 C3 09 10 */	addi r6, r3, YearDays@l
lbl_80093FDC:
/* 80093FDC 00090F1C  38 E0 00 0C */	li r7, 0xc
/* 80093FE0 00090F20  38 60 00 30 */	li r3, 0x30
/* 80093FE4 00090F24  48 00 00 04 */	b lbl_80093FE8
lbl_80093FE8:
/* 80093FE8 00090F28  48 00 00 04 */	b lbl_80093FEC
lbl_80093FEC:
/* 80093FEC 00090F2C  38 63 FF FC */	addi r3, r3, -4
/* 80093FF0 00090F30  7C A6 18 2E */	lwzx r5, r6, r3
/* 80093FF4 00090F34  38 E7 FF FF */	addi r7, r7, -1
/* 80093FF8 00090F38  7C 00 28 00 */	cmpw r0, r5
/* 80093FFC 00090F3C  41 80 FF F0 */	blt lbl_80093FEC
/* 80094000 00090F40  90 E4 00 10 */	stw r7, 0x10(r4)
/* 80094004 00090F44  7C 66 18 2E */	lwzx r3, r6, r3
/* 80094008 00090F48  7C 63 00 50 */	subf r3, r3, r0
/* 8009400C 00090F4C  38 03 00 01 */	addi r0, r3, 1
/* 80094010 00090F50  90 04 00 0C */	stw r0, 0xc(r4)
/* 80094014 00090F54  4E 80 00 20 */	blr 

.global OSTicksToCalendarTime
OSTicksToCalendarTime:
/* 80094018 00090F58  7C 08 02 A6 */	mflr r0
/* 8009401C 00090F5C  90 01 00 04 */	stw r0, 4(r1)
/* 80094020 00090F60  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80094024 00090F64  BF 21 00 1C */	stmw r25, 0x1c(r1)
/* 80094028 00090F68  7C 7D 1B 78 */	mr r29, r3
/* 8009402C 00090F6C  7C 9E 23 78 */	mr r30, r4
/* 80094030 00090F70  7C BF 2B 78 */	mr r31, r5
/* 80094034 00090F74  3F 60 80 00 */	lis r27, 0x800000F8@ha
/* 80094038 00090F78  80 1B 00 F8 */	lwz r0, 0x800000F8@l(r27)
/* 8009403C 00090F7C  7F A3 EB 78 */	mr r3, r29
/* 80094040 00090F80  7F C4 F3 78 */	mr r4, r30
/* 80094044 00090F84  54 06 F0 BE */	srwi r6, r0, 2
/* 80094048 00090F88  38 A0 00 00 */	li r5, 0
/* 8009404C 00090F8C  4B FE EE D5 */	bl __mod2i
/* 80094050 00090F90  7C 7A 1B 78 */	mr r26, r3
/* 80094054 00090F94  38 A0 00 00 */	li r5, 0
/* 80094058 00090F98  7C 99 23 78 */	mr r25, r4
/* 8009405C 00090F9C  6F 44 80 00 */	xoris r4, r26, 0x8000
/* 80094060 00090FA0  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 80094064 00090FA4  7C 05 C8 10 */	subfc r0, r5, r25
/* 80094068 00090FA8  7C 63 21 10 */	subfe r3, r3, r4
/* 8009406C 00090FAC  7C 64 21 10 */	subfe r3, r4, r4
/* 80094070 00090FB0  7C 63 00 D0 */	neg r3, r3
/* 80094074 00090FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80094078 00090FB8  41 82 00 14 */	beq lbl_8009408C
/* 8009407C 00090FBC  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 80094080 00090FC0  54 00 F0 BE */	srwi r0, r0, 2
/* 80094084 00090FC4  7F 39 00 14 */	addc r25, r25, r0
/* 80094088 00090FC8  7F 5A 29 14 */	adde r26, r26, r5
lbl_8009408C:
/* 8009408C 00090FCC  38 80 00 08 */	li r4, 8
/* 80094090 00090FD0  7C 7A 21 D6 */	mullw r3, r26, r4
/* 80094094 00090FD4  7C 19 20 16 */	mulhwu r0, r25, r4
/* 80094098 00090FD8  3F 60 80 00 */	lis r27, 0x800000F8@ha
/* 8009409C 00090FDC  80 DB 00 F8 */	lwz r6, 0x800000F8@l(r27)
/* 800940A0 00090FE0  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 800940A4 00090FE4  38 A5 DE 83 */	addi r5, r5, 0x431BDE83@l
/* 800940A8 00090FE8  54 C6 F0 BE */	srwi r6, r6, 2
/* 800940AC 00090FEC  7C A5 30 16 */	mulhwu r5, r5, r6
/* 800940B0 00090FF0  54 A6 8B FE */	srwi r6, r5, 0xf
/* 800940B4 00090FF4  3B 80 00 00 */	li r28, 0
/* 800940B8 00090FF8  7C 63 02 14 */	add r3, r3, r0
/* 800940BC 00090FFC  7C 19 E1 D6 */	mullw r0, r25, r28
/* 800940C0 00091000  7C 99 21 D6 */	mullw r4, r25, r4
/* 800940C4 00091004  7C 63 02 14 */	add r3, r3, r0
/* 800940C8 00091008  38 A0 00 00 */	li r5, 0
/* 800940CC 0009100C  4B FE EC 39 */	bl __div2i
/* 800940D0 00091010  38 A0 00 00 */	li r5, 0
/* 800940D4 00091014  38 C0 03 E8 */	li r6, 0x3e8
/* 800940D8 00091018  4B FE EE 49 */	bl __mod2i
/* 800940DC 0009101C  90 9F 00 24 */	stw r4, 0x24(r31)
/* 800940E0 00091020  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 800940E4 00091024  38 A3 4D D3 */	addi r5, r3, 0x10624DD3@l
/* 800940E8 00091028  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 800940EC 0009102C  7F 43 D3 78 */	mr r3, r26
/* 800940F0 00091030  7F 24 CB 78 */	mr r4, r25
/* 800940F4 00091034  54 00 F0 BE */	srwi r0, r0, 2
/* 800940F8 00091038  7C 05 00 16 */	mulhwu r0, r5, r0
/* 800940FC 0009103C  54 06 D1 BE */	srwi r6, r0, 6
/* 80094100 00091040  38 A0 00 00 */	li r5, 0
/* 80094104 00091044  4B FE EC 01 */	bl __div2i
/* 80094108 00091048  38 A0 00 00 */	li r5, 0
/* 8009410C 0009104C  38 C0 03 E8 */	li r6, 0x3e8
/* 80094110 00091050  4B FE EE 11 */	bl __mod2i
/* 80094114 00091054  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80094118 00091058  7F D9 F0 10 */	subfc r30, r25, r30
/* 8009411C 0009105C  7F BA E9 10 */	subfe r29, r26, r29
/* 80094120 00091060  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 80094124 00091064  3C A0 00 01 */	lis r5, 0x00015180@ha
/* 80094128 00091068  3B 25 51 80 */	addi r25, r5, 0x00015180@l
/* 8009412C 0009106C  7F A3 EB 78 */	mr r3, r29
/* 80094130 00091070  54 06 F0 BE */	srwi r6, r0, 2
/* 80094134 00091074  7F C4 F3 78 */	mr r4, r30
/* 80094138 00091078  38 A0 00 00 */	li r5, 0
/* 8009413C 0009107C  4B FE EB C9 */	bl __div2i
/* 80094140 00091080  7F 26 CB 78 */	mr r6, r25
/* 80094144 00091084  38 A0 00 00 */	li r5, 0
/* 80094148 00091088  4B FE EB BD */	bl __div2i
/* 8009414C 0009108C  3C A0 00 0B */	lis r5, 0x000B2575@ha
/* 80094150 00091090  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 80094154 00091094  38 A5 25 75 */	addi r5, r5, 0x000B2575@l
/* 80094158 00091098  7F 44 28 14 */	addc r26, r4, r5
/* 8009415C 0009109C  54 06 F0 BE */	srwi r6, r0, 2
/* 80094160 000910A0  7C 03 E1 14 */	adde r0, r3, r28
/* 80094164 000910A4  7F A3 EB 78 */	mr r3, r29
/* 80094168 000910A8  7F C4 F3 78 */	mr r4, r30
/* 8009416C 000910AC  38 A0 00 00 */	li r5, 0
/* 80094170 000910B0  4B FE EB 95 */	bl __div2i
/* 80094174 000910B4  7F 26 CB 78 */	mr r6, r25
/* 80094178 000910B8  38 A0 00 00 */	li r5, 0
/* 8009417C 000910BC  4B FE ED A5 */	bl __mod2i
/* 80094180 000910C0  7C 9B 23 78 */	mr r27, r4
/* 80094184 000910C4  2C 1B 00 00 */	cmpwi r27, 0
/* 80094188 000910C8  40 80 00 10 */	bge lbl_80094198
/* 8009418C 000910CC  3F 7B 00 01 */	addis r27, r27, 1
/* 80094190 000910D0  3B 5A FF FF */	addi r26, r26, -1
/* 80094194 000910D4  3B 7B 51 80 */	addi r27, r27, 0x5180
lbl_80094198:
/* 80094198 000910D8  7F 43 D3 78 */	mr r3, r26
/* 8009419C 000910DC  7F E4 FB 78 */	mr r4, r31
/* 800941A0 000910E0  4B FF FC DD */	bl GetDates
/* 800941A4 000910E4  3C 60 88 89 */	lis r3, 0x88888889@ha
/* 800941A8 000910E8  38 A3 88 89 */	addi r5, r3, 0x88888889@l
/* 800941AC 000910EC  7C 05 D8 96 */	mulhw r0, r5, r27
/* 800941B0 000910F0  7C 80 DA 14 */	add r4, r0, r27
/* 800941B4 000910F4  7C 80 2E 70 */	srawi r0, r4, 5
/* 800941B8 000910F8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800941BC 000910FC  7C E0 1A 14 */	add r7, r0, r3
/* 800941C0 00091100  7C 05 38 96 */	mulhw r0, r5, r7
/* 800941C4 00091104  7C 00 3A 14 */	add r0, r0, r7
/* 800941C8 00091108  7C 05 2E 70 */	srawi r5, r0, 5
/* 800941CC 0009110C  7C 00 2E 70 */	srawi r0, r0, 5
/* 800941D0 00091110  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800941D4 00091114  7C 60 1A 14 */	add r3, r0, r3
/* 800941D8 00091118  7C 80 2E 70 */	srawi r0, r4, 5
/* 800941DC 0009111C  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 800941E0 00091120  1C 83 00 3C */	mulli r4, r3, 0x3c
/* 800941E4 00091124  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800941E8 00091128  7C A5 32 14 */	add r5, r5, r6
/* 800941EC 0009112C  7C 00 1A 14 */	add r0, r0, r3
/* 800941F0 00091130  90 BF 00 08 */	stw r5, 8(r31)
/* 800941F4 00091134  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 800941F8 00091138  7C 64 38 50 */	subf r3, r4, r7
/* 800941FC 0009113C  90 7F 00 04 */	stw r3, 4(r31)
/* 80094200 00091140  7C 00 D8 50 */	subf r0, r0, r27
/* 80094204 00091144  90 1F 00 00 */	stw r0, 0(r31)
/* 80094208 00091148  BB 21 00 1C */	lmw r25, 0x1c(r1)
/* 8009420C 0009114C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80094210 00091150  38 21 00 38 */	addi r1, r1, 0x38
/* 80094214 00091154  7C 08 03 A6 */	mtlr r0
/* 80094218 00091158  4E 80 00 20 */	blr 