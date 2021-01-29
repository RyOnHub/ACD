.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global __StringRead
__StringRead:
/* 80085AE8 00082A28  2C 05 00 01 */	cmpwi r5, 1
/* 80085AEC 00082A2C  41 82 00 50 */	beq lbl_80085B3C
/* 80085AF0 00082A30  40 80 00 10 */	bge lbl_80085B00
/* 80085AF4 00082A34  2C 05 00 00 */	cmpwi r5, 0
/* 80085AF8 00082A38  40 80 00 14 */	bge lbl_80085B0C
/* 80085AFC 00082A3C  48 00 00 74 */	b lbl_80085B70
lbl_80085B00:
/* 80085B00 00082A40  2C 05 00 03 */	cmpwi r5, 3
/* 80085B04 00082A44  40 80 00 6C */	bge lbl_80085B70
/* 80085B08 00082A48  48 00 00 60 */	b lbl_80085B68
lbl_80085B0C:
/* 80085B0C 00082A4C  80 83 00 00 */	lwz r4, 0(r3)
/* 80085B10 00082A50  88 A4 00 00 */	lbz r5, 0(r4)
/* 80085B14 00082A54  7C A0 07 75 */	extsb. r0, r5
/* 80085B18 00082A58  40 82 00 14 */	bne lbl_80085B2C
/* 80085B1C 00082A5C  38 00 00 01 */	li r0, 1
/* 80085B20 00082A60  90 03 00 04 */	stw r0, 4(r3)
/* 80085B24 00082A64  38 60 FF FF */	li r3, -1
/* 80085B28 00082A68  4E 80 00 20 */	blr 
lbl_80085B2C:
/* 80085B2C 00082A6C  38 04 00 01 */	addi r0, r4, 1
/* 80085B30 00082A70  90 03 00 00 */	stw r0, 0(r3)
/* 80085B34 00082A74  7C A3 07 74 */	extsb r3, r5
/* 80085B38 00082A78  4E 80 00 20 */	blr 
lbl_80085B3C:
/* 80085B3C 00082A7C  80 03 00 04 */	lwz r0, 4(r3)
/* 80085B40 00082A80  2C 00 00 00 */	cmpwi r0, 0
/* 80085B44 00082A84  40 82 00 14 */	bne lbl_80085B58
/* 80085B48 00082A88  80 A3 00 00 */	lwz r5, 0(r3)
/* 80085B4C 00082A8C  38 05 FF FF */	addi r0, r5, -1
/* 80085B50 00082A90  90 03 00 00 */	stw r0, 0(r3)
/* 80085B54 00082A94  48 00 00 0C */	b lbl_80085B60
lbl_80085B58:
/* 80085B58 00082A98  38 00 00 00 */	li r0, 0
/* 80085B5C 00082A9C  90 03 00 04 */	stw r0, 4(r3)
lbl_80085B60:
/* 80085B60 00082AA0  7C 83 23 78 */	mr r3, r4
/* 80085B64 00082AA4  4E 80 00 20 */	blr 
lbl_80085B68:
/* 80085B68 00082AA8  80 63 00 04 */	lwz r3, 4(r3)
/* 80085B6C 00082AAC  4E 80 00 20 */	blr 
lbl_80085B70:
/* 80085B70 00082AB0  38 60 00 00 */	li r3, 0
/* 80085B74 00082AB4  4E 80 00 20 */	blr 