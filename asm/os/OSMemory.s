.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
OnReset:
/* 80090C54 0008DB94  7C 08 02 A6 */	mflr r0
/* 80090C58 0008DB98  2C 03 00 00 */	cmpwi r3, 0
/* 80090C5C 0008DB9C  90 01 00 04 */	stw r0, 4(r1)
/* 80090C60 0008DBA0  94 21 FF F8 */	stwu r1, -8(r1)
/* 80090C64 0008DBA4  41 82 00 18 */	beq lbl_80090C7C
/* 80090C68 0008DBA8  3C 60 CC 00 */	lis r3, 0xCC004010@ha
/* 80090C6C 0008DBAC  38 00 00 FF */	li r0, 0xff
/* 80090C70 0008DBB0  B0 03 40 10 */	sth r0, 0xCC004010@l(r3)
/* 80090C74 0008DBB4  3C 60 F0 00 */	lis r3, 0xf000
/* 80090C78 0008DBB8  4B FF F9 1D */	bl __OSMaskInterrupts
lbl_80090C7C:
/* 80090C7C 0008DBBC  38 60 00 01 */	li r3, 1
/* 80090C80 0008DBC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80090C84 0008DBC4  38 21 00 08 */	addi r1, r1, 8
/* 80090C88 0008DBC8  7C 08 03 A6 */	mtlr r0
/* 80090C8C 0008DBCC  4E 80 00 20 */	blr 

.global MEMIntrruptHandler
MEMIntrruptHandler:
/* 80090C90 0008DBD0  7C 08 02 A6 */	mflr r0
/* 80090C94 0008DBD4  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 80090C98 0008DBD8  90 01 00 04 */	stw r0, 4(r1)
/* 80090C9C 0008DBDC  39 03 40 00 */	addi r8, r3, 0xCC004000@l
/* 80090CA0 0008DBE0  38 00 00 00 */	li r0, 0
/* 80090CA4 0008DBE4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80090CA8 0008DBE8  A0 E3 40 24 */	lhz r7, 0x4024(r3)
/* 80090CAC 0008DBEC  3C 60 80 3F */	lis r3, __OSErrorTable@ha
/* 80090CB0 0008DBF0  A0 C8 00 22 */	lhz r6, 0x22(r8)
/* 80090CB4 0008DBF4  38 63 B0 D0 */	addi r3, r3, __OSErrorTable@l
/* 80090CB8 0008DBF8  A0 A8 00 1E */	lhz r5, 0x1e(r8)
/* 80090CBC 0008DBFC  50 E6 81 9E */	rlwimi r6, r7, 0x10, 6, 0xf
/* 80090CC0 0008DC00  B0 08 00 20 */	sth r0, 0x20(r8)
/* 80090CC4 0008DC04  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80090CC8 0008DC08  28 0C 00 00 */	cmplwi r12, 0
/* 80090CCC 0008DC0C  41 82 00 18 */	beq lbl_80090CE4
/* 80090CD0 0008DC10  7D 88 03 A6 */	mtlr r12
/* 80090CD4 0008DC14  38 60 00 0F */	li r3, 0xf
/* 80090CD8 0008DC18  4C C6 31 82 */	crclr 6
/* 80090CDC 0008DC1C  4E 80 00 21 */	blrl 
/* 80090CE0 0008DC20  48 00 00 0C */	b lbl_80090CEC
lbl_80090CE4:
/* 80090CE4 0008DC24  38 60 00 0F */	li r3, 0xf
/* 80090CE8 0008DC28  4B FF E4 45 */	bl __OSUnhandledException
lbl_80090CEC:
/* 80090CEC 0008DC2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80090CF0 0008DC30  38 21 00 08 */	addi r1, r1, 8
/* 80090CF4 0008DC34  7C 08 03 A6 */	mtlr r0
/* 80090CF8 0008DC38  4E 80 00 20 */	blr 

.global OSProtectRange
OSProtectRange:
/* 80090CFC 0008DC3C  7C 08 02 A6 */	mflr r0
/* 80090D00 0008DC40  90 01 00 04 */	stw r0, 4(r1)
/* 80090D04 0008DC44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80090D08 0008DC48  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80090D0C 0008DC4C  3B 43 00 00 */	addi r26, r3, 0
/* 80090D10 0008DC50  28 1A 00 04 */	cmplwi r26, 4
/* 80090D14 0008DC54  40 80 00 98 */	bge lbl_80090DAC
/* 80090D18 0008DC58  7C 64 2A 14 */	add r3, r4, r5
/* 80090D1C 0008DC5C  38 03 03 FF */	addi r0, r3, 0x3ff
/* 80090D20 0008DC60  54 9B 00 2A */	rlwinm r27, r4, 0, 0, 0x15
/* 80090D24 0008DC64  54 1D 00 2A */	rlwinm r29, r0, 0, 0, 0x15
/* 80090D28 0008DC68  38 7B 00 00 */	addi r3, r27, 0
/* 80090D2C 0008DC6C  54 DF 07 BE */	clrlwi r31, r6, 0x1e
/* 80090D30 0008DC70  7C 9B E8 50 */	subf r4, r27, r29
/* 80090D34 0008DC74  4B FF D2 79 */	bl DCFlushRange
/* 80090D38 0008DC78  4B FF F4 95 */	bl OSDisableInterrupts
/* 80090D3C 0008DC7C  3C 00 80 00 */	lis r0, 0x8000
/* 80090D40 0008DC80  7C 1E D4 30 */	srw r30, r0, r26
/* 80090D44 0008DC84  3B 83 00 00 */	addi r28, r3, 0
/* 80090D48 0008DC88  38 7E 00 00 */	addi r3, r30, 0
/* 80090D4C 0008DC8C  4B FF F8 49 */	bl __OSMaskInterrupts
/* 80090D50 0008DC90  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 80090D54 0008DC94  38 A3 40 00 */	addi r5, r3, 0xCC004000@l
/* 80090D58 0008DC98  57 43 10 3A */	slwi r3, r26, 2
/* 80090D5C 0008DC9C  57 60 B4 3E */	rlwinm r0, r27, 0x16, 0x10, 0x1f
/* 80090D60 0008DCA0  7C 05 1B 2E */	sthx r0, r5, r3
/* 80090D64 0008DCA4  57 A4 B4 3E */	rlwinm r4, r29, 0x16, 0x10, 0x1f
/* 80090D68 0008DCA8  7C 65 1A 14 */	add r3, r5, r3
/* 80090D6C 0008DCAC  B0 83 00 02 */	sth r4, 2(r3)
/* 80090D70 0008DCB0  38 85 00 10 */	addi r4, r5, 0x10
/* 80090D74 0008DCB4  57 46 08 3C */	slwi r6, r26, 1
/* 80090D78 0008DCB8  38 00 00 03 */	li r0, 3
/* 80090D7C 0008DCBC  A0 A5 00 10 */	lhz r5, 0x10(r5)
/* 80090D80 0008DCC0  7C 03 30 30 */	slw r3, r0, r6
/* 80090D84 0008DCC4  7F E0 30 30 */	slw r0, r31, r6
/* 80090D88 0008DCC8  7C A5 18 78 */	andc r5, r5, r3
/* 80090D8C 0008DCCC  7C A5 03 78 */	or r5, r5, r0
/* 80090D90 0008DCD0  28 1F 00 03 */	cmplwi r31, 3
/* 80090D94 0008DCD4  B0 A4 00 00 */	sth r5, 0(r4)
/* 80090D98 0008DCD8  41 82 00 0C */	beq lbl_80090DA4
/* 80090D9C 0008DCDC  7F C3 F3 78 */	mr r3, r30
/* 80090DA0 0008DCE0  4B FF F8 7D */	bl __OSUnmaskInterrupts
lbl_80090DA4:
/* 80090DA4 0008DCE4  7F 83 E3 78 */	mr r3, r28
/* 80090DA8 0008DCE8  4B FF F4 4D */	bl OSRestoreInterrupts
lbl_80090DAC:
/* 80090DAC 0008DCEC  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80090DB0 0008DCF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80090DB4 0008DCF4  38 21 00 30 */	addi r1, r1, 0x30
/* 80090DB8 0008DCF8  7C 08 03 A6 */	mtlr r0
/* 80090DBC 0008DCFC  4E 80 00 20 */	blr 

.global Config24MB
Config24MB:
/* 80090DC0 0008DD00  38 E0 00 00 */	li r7, 0
/* 80090DC4 0008DD04  3C 80 00 00 */	lis r4, 0x00000002@ha
/* 80090DC8 0008DD08  38 84 00 02 */	addi r4, r4, 0x00000002@l
/* 80090DCC 0008DD0C  3C 60 80 00 */	lis r3, 0x800001FF@ha
/* 80090DD0 0008DD10  38 63 01 FF */	addi r3, r3, 0x800001FF@l
/* 80090DD4 0008DD14  3C C0 01 00 */	lis r6, 0x01000002@ha
/* 80090DD8 0008DD18  38 C6 00 02 */	addi r6, r6, 0x01000002@l
/* 80090DDC 0008DD1C  3C A0 81 00 */	lis r5, 0x810000FF@ha
/* 80090DE0 0008DD20  38 A5 00 FF */	addi r5, r5, 0x810000FF@l
/* 80090DE4 0008DD24  4C 00 01 2C */	isync 
/* 80090DE8 0008DD28  7C F8 83 A6 */	mtdbatu 0, r7
/* 80090DEC 0008DD2C  7C 99 83 A6 */	mtdbatl 0, r4
/* 80090DF0 0008DD30  7C 78 83 A6 */	mtdbatu 0, r3
/* 80090DF4 0008DD34  4C 00 01 2C */	isync 
/* 80090DF8 0008DD38  7C F0 83 A6 */	mtibatu 0, r7
/* 80090DFC 0008DD3C  7C 91 83 A6 */	mtibatl 0, r4
/* 80090E00 0008DD40  7C 70 83 A6 */	mtibatu 0, r3
/* 80090E04 0008DD44  4C 00 01 2C */	isync 
/* 80090E08 0008DD48  7C FC 83 A6 */	mtdbatu 2, r7
/* 80090E0C 0008DD4C  7C DD 83 A6 */	mtdbatl 2, r6
/* 80090E10 0008DD50  7C BC 83 A6 */	mtdbatu 2, r5
/* 80090E14 0008DD54  4C 00 01 2C */	isync 
/* 80090E18 0008DD58  7C F4 83 A6 */	mtibatu 2, r7
/* 80090E1C 0008DD5C  7C D5 83 A6 */	mtibatl 2, r6
/* 80090E20 0008DD60  7C B4 83 A6 */	mtibatu 2, r5
/* 80090E24 0008DD64  4C 00 01 2C */	isync 
/* 80090E28 0008DD68  7C 60 00 A6 */	mfmsr r3
/* 80090E2C 0008DD6C  60 63 00 30 */	ori r3, r3, 0x30
/* 80090E30 0008DD70  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80090E34 0008DD74  7C 68 02 A6 */	mflr r3
/* 80090E38 0008DD78  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80090E3C 0008DD7C  4C 00 00 64 */	rfi 

.global Config48MB
Config48MB:
/* 80090E40 0008DD80  38 E0 00 00 */	li r7, 0
/* 80090E44 0008DD84  3C 80 00 00 */	lis r4, 0x00000002@ha
/* 80090E48 0008DD88  38 84 00 02 */	addi r4, r4, 0x00000002@l
/* 80090E4C 0008DD8C  3C 60 80 00 */	lis r3, 0x800003FF@ha
/* 80090E50 0008DD90  38 63 03 FF */	addi r3, r3, 0x800003FF@l
/* 80090E54 0008DD94  3C C0 02 00 */	lis r6, 0x02000002@ha
/* 80090E58 0008DD98  38 C6 00 02 */	addi r6, r6, 0x02000002@l
/* 80090E5C 0008DD9C  3C A0 82 00 */	lis r5, 0x820001FF@ha
/* 80090E60 0008DDA0  38 A5 01 FF */	addi r5, r5, 0x820001FF@l
/* 80090E64 0008DDA4  4C 00 01 2C */	isync 
/* 80090E68 0008DDA8  7C F8 83 A6 */	mtdbatu 0, r7
/* 80090E6C 0008DDAC  7C 99 83 A6 */	mtdbatl 0, r4
/* 80090E70 0008DDB0  7C 78 83 A6 */	mtdbatu 0, r3
/* 80090E74 0008DDB4  4C 00 01 2C */	isync 
/* 80090E78 0008DDB8  7C F0 83 A6 */	mtibatu 0, r7
/* 80090E7C 0008DDBC  7C 91 83 A6 */	mtibatl 0, r4
/* 80090E80 0008DDC0  7C 70 83 A6 */	mtibatu 0, r3
/* 80090E84 0008DDC4  4C 00 01 2C */	isync 
/* 80090E88 0008DDC8  7C FC 83 A6 */	mtdbatu 2, r7
/* 80090E8C 0008DDCC  7C DD 83 A6 */	mtdbatl 2, r6
/* 80090E90 0008DDD0  7C BC 83 A6 */	mtdbatu 2, r5
/* 80090E94 0008DDD4  4C 00 01 2C */	isync 
/* 80090E98 0008DDD8  7C F4 83 A6 */	mtibatu 2, r7
/* 80090E9C 0008DDDC  7C D5 83 A6 */	mtibatl 2, r6
/* 80090EA0 0008DDE0  7C B4 83 A6 */	mtibatu 2, r5
/* 80090EA4 0008DDE4  4C 00 01 2C */	isync 
/* 80090EA8 0008DDE8  7C 60 00 A6 */	mfmsr r3
/* 80090EAC 0008DDEC  60 63 00 30 */	ori r3, r3, 0x30
/* 80090EB0 0008DDF0  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80090EB4 0008DDF4  7C 68 02 A6 */	mflr r3
/* 80090EB8 0008DDF8  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80090EBC 0008DDFC  4C 00 00 64 */	rfi 

.global RealMode
RealMode:
/* 80090EC0 0008DE00  54 63 00 BE */	clrlwi r3, r3, 2
/* 80090EC4 0008DE04  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80090EC8 0008DE08  7C 60 00 A6 */	mfmsr r3
/* 80090ECC 0008DE0C  54 63 07 32 */	rlwinm r3, r3, 0, 0x1c, 0x19
/* 80090ED0 0008DE10  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 80090ED4 0008DE14  4C 00 00 64 */	rfi 

.global __OSInitMemoryProtection
__OSInitMemoryProtection:
/* 80090ED8 0008DE18  7C 08 02 A6 */	mflr r0
/* 80090EDC 0008DE1C  90 01 00 04 */	stw r0, 4(r1)
/* 80090EE0 0008DE20  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80090EE4 0008DE24  93 E1 00 44 */	stw r31, 0x44(r1)
/* 80090EE8 0008DE28  93 C1 00 40 */	stw r30, 0x40(r1)
/* 80090EEC 0008DE2C  93 A1 00 3C */	stw r29, 0x3c(r1)
/* 80090EF0 0008DE30  3C 60 80 00 */	lis r3, 0x800000F0@ha
/* 80090EF4 0008DE34  83 A3 00 F0 */	lwz r29, 0x800000F0@l(r3)
/* 80090EF8 0008DE38  4B FF F2 D5 */	bl OSDisableInterrupts
/* 80090EFC 0008DE3C  3C 00 01 80 */	lis r0, 0x180
/* 80090F00 0008DE40  7C 1D 00 40 */	cmplw r29, r0
/* 80090F04 0008DE44  7C 7F 1B 78 */	mr r31, r3
/* 80090F08 0008DE48  41 81 00 14 */	bgt lbl_80090F1C
/* 80090F0C 0008DE4C  3C 60 80 09 */	lis r3, Config24MB@ha
/* 80090F10 0008DE50  38 63 0D C0 */	addi r3, r3, Config24MB@l
/* 80090F14 0008DE54  4B FF FF AD */	bl RealMode
/* 80090F18 0008DE58  48 00 00 1C */	b lbl_80090F34
lbl_80090F1C:
/* 80090F1C 0008DE5C  3C 00 03 00 */	lis r0, 0x300
/* 80090F20 0008DE60  7C 1D 00 40 */	cmplw r29, r0
/* 80090F24 0008DE64  41 81 00 10 */	bgt lbl_80090F34
/* 80090F28 0008DE68  3C 60 80 09 */	lis r3, Config48MB@ha
/* 80090F2C 0008DE6C  38 63 0E 40 */	addi r3, r3, Config48MB@l
/* 80090F30 0008DE70  4B FF FF 91 */	bl RealMode
lbl_80090F34:
/* 80090F34 0008DE74  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 80090F38 0008DE78  3B A3 40 00 */	addi r29, r3, 0xCC004000@l
/* 80090F3C 0008DE7C  38 00 00 00 */	li r0, 0
/* 80090F40 0008DE80  B0 1D 00 20 */	sth r0, 0x20(r29)
/* 80090F44 0008DE84  38 00 00 FF */	li r0, 0xff
/* 80090F48 0008DE88  3C 60 F0 00 */	lis r3, 0xf000
/* 80090F4C 0008DE8C  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 80090F50 0008DE90  4B FF F6 45 */	bl __OSMaskInterrupts
/* 80090F54 0008DE94  3C 60 80 09 */	lis r3, MEMIntrruptHandler@ha
/* 80090F58 0008DE98  3B C3 0C 90 */	addi r30, r3, MEMIntrruptHandler@l
/* 80090F5C 0008DE9C  7F C4 F3 78 */	mr r4, r30
/* 80090F60 0008DEA0  38 60 00 00 */	li r3, 0
/* 80090F64 0008DEA4  4B FF F2 B5 */	bl __OSSetInterruptHandler
/* 80090F68 0008DEA8  7F C4 F3 78 */	mr r4, r30
/* 80090F6C 0008DEAC  38 60 00 01 */	li r3, 1
/* 80090F70 0008DEB0  4B FF F2 A9 */	bl __OSSetInterruptHandler
/* 80090F74 0008DEB4  7F C4 F3 78 */	mr r4, r30
/* 80090F78 0008DEB8  38 60 00 02 */	li r3, 2
/* 80090F7C 0008DEBC  4B FF F2 9D */	bl __OSSetInterruptHandler
/* 80090F80 0008DEC0  7F C4 F3 78 */	mr r4, r30
/* 80090F84 0008DEC4  38 60 00 03 */	li r3, 3
/* 80090F88 0008DEC8  4B FF F2 91 */	bl __OSSetInterruptHandler
/* 80090F8C 0008DECC  7F C4 F3 78 */	mr r4, r30
/* 80090F90 0008DED0  38 60 00 04 */	li r3, 4
/* 80090F94 0008DED4  4B FF F2 85 */	bl __OSSetInterruptHandler
/* 80090F98 0008DED8  3C 60 80 3B */	lis r3, ResetFunctionInfo@ha
/* 80090F9C 0008DEDC  38 63 09 00 */	addi r3, r3, ResetFunctionInfo@l
/* 80090FA0 0008DEE0  48 00 06 81 */	bl OSRegisterResetFunction
/* 80090FA4 0008DEE4  3C 60 80 00 */	lis r3, 0x800000F0@ha
/* 80090FA8 0008DEE8  80 83 00 F0 */	lwz r4, 0x800000F0@l(r3)
/* 80090FAC 0008DEEC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80090FB0 0008DEF0  7C 04 00 40 */	cmplw r4, r0
/* 80090FB4 0008DEF4  40 80 00 18 */	bge lbl_80090FCC
/* 80090FB8 0008DEF8  3C 04 FE 80 */	addis r0, r4, 0xfe80
/* 80090FBC 0008DEFC  28 00 00 00 */	cmplwi r0, 0
/* 80090FC0 0008DF00  40 82 00 0C */	bne lbl_80090FCC
/* 80090FC4 0008DF04  38 00 00 02 */	li r0, 2
/* 80090FC8 0008DF08  B0 1D 00 28 */	sth r0, 0x28(r29)
lbl_80090FCC:
/* 80090FCC 0008DF0C  3C 60 08 00 */	lis r3, 0x800
/* 80090FD0 0008DF10  4B FF F6 4D */	bl __OSUnmaskInterrupts
/* 80090FD4 0008DF14  7F E3 FB 78 */	mr r3, r31
/* 80090FD8 0008DF18  4B FF F2 1D */	bl OSRestoreInterrupts
/* 80090FDC 0008DF1C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80090FE0 0008DF20  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 80090FE4 0008DF24  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 80090FE8 0008DF28  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 80090FEC 0008DF2C  38 21 00 48 */	addi r1, r1, 0x48
/* 80090FF0 0008DF30  7C 08 03 A6 */	mtlr r0
/* 80090FF4 0008DF34  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
ResetFunctionInfo:
    .4byte OnReset
    .4byte 0x7F
    .4byte 0
    .4byte 0
