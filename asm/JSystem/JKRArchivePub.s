.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global check_mount_already__10JKRArchiveFl
check_mount_already__10JKRArchiveFl:
/* 800078D8 00004818  3C 80 80 40 */	lis r4, sVolumeList__13JKRFileLoader@ha
/* 800078DC 0000481C  80 A4 0B B0 */	lwz r5, sVolumeList__13JKRFileLoader@l(r4)
/* 800078E0 00004820  48 00 00 3C */	b lbl_8000791C
lbl_800078E4:
/* 800078E4 00004824  80 C5 00 00 */	lwz r6, 0(r5)
/* 800078E8 00004828  80 86 00 2C */	lwz r4, 0x2c(r6)
/* 800078EC 0000482C  3C 04 AD BF */	addis r0, r4, 0xadbf
/* 800078F0 00004830  28 00 52 43 */	cmplwi r0, 0x5243
/* 800078F4 00004834  40 82 00 24 */	bne lbl_80007918
/* 800078F8 00004838  80 06 00 40 */	lwz r0, 0x40(r6)
/* 800078FC 0000483C  7C 00 18 00 */	cmpw r0, r3
/* 80007900 00004840  40 82 00 18 */	bne lbl_80007918
/* 80007904 00004844  80 86 00 34 */	lwz r4, 0x34(r6)
/* 80007908 00004848  38 66 00 00 */	addi r3, r6, 0
/* 8000790C 0000484C  38 04 00 01 */	addi r0, r4, 1
/* 80007910 00004850  90 06 00 34 */	stw r0, 0x34(r6)
/* 80007914 00004854  4E 80 00 20 */	blr 
lbl_80007918:
/* 80007918 00004858  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_8000791C:
/* 8000791C 0000485C  28 05 00 00 */	cmplwi r5, 0
/* 80007920 00004860  40 82 FF C4 */	bne lbl_800078E4
/* 80007924 00004864  38 60 00 00 */	li r3, 0
/* 80007928 00004868  4E 80 00 20 */	blr 

.global mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection:
/* 8000792C 0000486C  7C 08 02 A6 */	mflr r0
/* 80007930 00004870  90 01 00 04 */	stw r0, 4(r1)
/* 80007934 00004874  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 80007938 00004878  BF 61 00 64 */	stmw r27, 0x64(r1)
/* 8000793C 0000487C  3B 64 00 00 */	addi r27, r4, 0
/* 80007940 00004880  3B 85 00 00 */	addi r28, r5, 0
/* 80007944 00004884  3B A6 00 00 */	addi r29, r6, 0
/* 80007948 00004888  48 08 E5 85 */	bl DVDConvertPathToEntrynum
/* 8000794C 0000488C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80007950 00004890  40 80 00 0C */	bge lbl_8000795C
/* 80007954 00004894  38 60 00 00 */	li r3, 0
/* 80007958 00004898  48 00 01 84 */	b lbl_80007ADC
lbl_8000795C:
/* 8000795C 0000489C  3C 60 80 40 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 80007960 000048A0  80 A3 0B B0 */	lwz r5, sVolumeList__13JKRFileLoader@l(r3)
/* 80007964 000048A4  48 00 00 38 */	b lbl_8000799C
lbl_80007968:
/* 80007968 000048A8  80 65 00 00 */	lwz r3, 0(r5)
/* 8000796C 000048AC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80007970 000048B0  3C 04 AD BF */	addis r0, r4, 0xadbf
/* 80007974 000048B4  28 00 52 43 */	cmplwi r0, 0x5243
/* 80007978 000048B8  40 82 00 20 */	bne lbl_80007998
/* 8000797C 000048BC  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80007980 000048C0  7C 00 F8 00 */	cmpw r0, r31
/* 80007984 000048C4  40 82 00 14 */	bne lbl_80007998
/* 80007988 000048C8  80 83 00 34 */	lwz r4, 0x34(r3)
/* 8000798C 000048CC  38 04 00 01 */	addi r0, r4, 1
/* 80007990 000048D0  90 03 00 34 */	stw r0, 0x34(r3)
/* 80007994 000048D4  48 00 00 14 */	b lbl_800079A8
lbl_80007998:
/* 80007998 000048D8  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_8000799C:
/* 8000799C 000048DC  28 05 00 00 */	cmplwi r5, 0
/* 800079A0 000048E0  40 82 FF C8 */	bne lbl_80007968
/* 800079A4 000048E4  38 60 00 00 */	li r3, 0
lbl_800079A8:
/* 800079A8 000048E8  28 03 00 00 */	cmplwi r3, 0
/* 800079AC 000048EC  41 82 00 08 */	beq lbl_800079B4
/* 800079B0 000048F0  48 00 01 2C */	b lbl_80007ADC
lbl_800079B4:
/* 800079B4 000048F4  2C 1D 00 01 */	cmpwi r29, 1
/* 800079B8 000048F8  40 82 00 0C */	bne lbl_800079C4
/* 800079BC 000048FC  38 00 00 04 */	li r0, 4
/* 800079C0 00004900  48 00 00 08 */	b lbl_800079C8
lbl_800079C4:
/* 800079C4 00004904  38 00 FF FC */	li r0, -4
lbl_800079C8:
/* 800079C8 00004908  2C 1B 00 03 */	cmpwi r27, 3
/* 800079CC 0000490C  7C 05 03 78 */	mr r5, r0
/* 800079D0 00004910  41 82 00 84 */	beq lbl_80007A54
/* 800079D4 00004914  40 80 00 14 */	bge lbl_800079E8
/* 800079D8 00004918  2C 1B 00 01 */	cmpwi r27, 1
/* 800079DC 0000491C  41 82 00 18 */	beq lbl_800079F4
/* 800079E0 00004920  40 80 00 4C */	bge lbl_80007A2C
/* 800079E4 00004924  48 00 00 BC */	b lbl_80007AA0
lbl_800079E8:
/* 800079E8 00004928  2C 1B 00 05 */	cmpwi r27, 5
/* 800079EC 0000492C  40 80 00 B4 */	bge lbl_80007AA0
/* 800079F0 00004930  48 00 00 8C */	b lbl_80007A7C
lbl_800079F4:
/* 800079F4 00004934  2C 1F FF FF */	cmpwi r31, -1
/* 800079F8 00004938  40 82 00 0C */	bne lbl_80007A04
/* 800079FC 0000493C  3B C0 00 00 */	li r30, 0
/* 80007A00 00004940  48 00 00 A0 */	b lbl_80007AA0
lbl_80007A04:
/* 80007A04 00004944  38 9C 00 00 */	addi r4, r28, 0
/* 80007A08 00004948  38 60 00 6C */	li r3, 0x6c
/* 80007A0C 0000494C  48 00 4F 39 */	bl __nw__FUlP7JKRHeapi
/* 80007A10 00004950  28 03 00 00 */	cmplwi r3, 0
/* 80007A14 00004954  41 82 00 10 */	beq lbl_80007A24
/* 80007A18 00004958  38 9F 00 00 */	addi r4, r31, 0
/* 80007A1C 0000495C  38 BD 00 00 */	addi r5, r29, 0
/* 80007A20 00004960  48 00 51 CD */	bl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
lbl_80007A24:
/* 80007A24 00004964  7C 7E 1B 78 */	mr r30, r3
/* 80007A28 00004968  48 00 00 78 */	b lbl_80007AA0
lbl_80007A2C:
/* 80007A2C 0000496C  38 9C 00 00 */	addi r4, r28, 0
/* 80007A30 00004970  38 60 00 68 */	li r3, 0x68
/* 80007A34 00004974  48 00 4F 11 */	bl __nw__FUlP7JKRHeapi
/* 80007A38 00004978  28 03 00 00 */	cmplwi r3, 0
/* 80007A3C 0000497C  41 82 00 10 */	beq lbl_80007A4C
/* 80007A40 00004980  38 9F 00 00 */	addi r4, r31, 0
/* 80007A44 00004984  38 BD 00 00 */	addi r5, r29, 0
/* 80007A48 00004988  4B FF E3 D5 */	bl __ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
lbl_80007A4C:
/* 80007A4C 0000498C  7C 7E 1B 78 */	mr r30, r3
/* 80007A50 00004990  48 00 00 50 */	b lbl_80007AA0
lbl_80007A54:
/* 80007A54 00004994  38 9C 00 00 */	addi r4, r28, 0
/* 80007A58 00004998  38 60 00 68 */	li r3, 0x68
/* 80007A5C 0000499C  48 00 4E E9 */	bl __nw__FUlP7JKRHeapi
/* 80007A60 000049A0  28 03 00 00 */	cmplwi r3, 0
/* 80007A64 000049A4  41 82 00 10 */	beq lbl_80007A74
/* 80007A68 000049A8  38 9F 00 00 */	addi r4, r31, 0
/* 80007A6C 000049AC  38 BD 00 00 */	addi r5, r29, 0
/* 80007A70 000049B0  48 00 13 41 */	bl __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection
lbl_80007A74:
/* 80007A74 000049B4  7C 7E 1B 78 */	mr r30, r3
/* 80007A78 000049B8  48 00 00 28 */	b lbl_80007AA0
lbl_80007A7C:
/* 80007A7C 000049BC  38 9C 00 00 */	addi r4, r28, 0
/* 80007A80 000049C0  38 60 00 7C */	li r3, 0x7c
/* 80007A84 000049C4  48 00 4E C1 */	bl __nw__FUlP7JKRHeapi
/* 80007A88 000049C8  28 03 00 00 */	cmplwi r3, 0
/* 80007A8C 000049CC  41 82 00 10 */	beq lbl_80007A9C
/* 80007A90 000049D0  38 9F 00 00 */	addi r4, r31, 0
/* 80007A94 000049D4  38 BD 00 00 */	addi r5, r29, 0
/* 80007A98 000049D8  48 00 06 ED */	bl __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection
lbl_80007A9C:
/* 80007A9C 000049DC  7C 7E 1B 78 */	mr r30, r3
lbl_80007AA0:
/* 80007AA0 000049E0  28 1E 00 00 */	cmplwi r30, 0
/* 80007AA4 000049E4  41 82 00 34 */	beq lbl_80007AD8
/* 80007AA8 000049E8  88 1E 00 3C */	lbz r0, 0x3c(r30)
/* 80007AAC 000049EC  28 00 00 00 */	cmplwi r0, 0
/* 80007AB0 000049F0  40 82 00 28 */	bne lbl_80007AD8
/* 80007AB4 000049F4  28 1E 00 00 */	cmplwi r30, 0
/* 80007AB8 000049F8  38 7E 00 00 */	addi r3, r30, 0
/* 80007ABC 000049FC  41 82 00 18 */	beq lbl_80007AD4
/* 80007AC0 00004A00  81 83 00 00 */	lwz r12, 0(r3)
/* 80007AC4 00004A04  38 80 00 01 */	li r4, 1
/* 80007AC8 00004A08  81 8C 00 08 */	lwz r12, 8(r12)
/* 80007ACC 00004A0C  7D 88 03 A6 */	mtlr r12
/* 80007AD0 00004A10  4E 80 00 21 */	blrl 
lbl_80007AD4:
/* 80007AD4 00004A14  3B C0 00 00 */	li r30, 0
lbl_80007AD8:
/* 80007AD8 00004A18  7F C3 F3 78 */	mr r3, r30
lbl_80007ADC:
/* 80007ADC 00004A1C  BB 61 00 64 */	lmw r27, 0x64(r1)
/* 80007AE0 00004A20  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80007AE4 00004A24  38 21 00 78 */	addi r1, r1, 0x78
/* 80007AE8 00004A28  7C 08 03 A6 */	mtlr r0
/* 80007AEC 00004A2C  4E 80 00 20 */	blr 

.global becomeCurrent__10JKRArchiveFPCc
becomeCurrent__10JKRArchiveFPCc:
/* 80007AF0 00004A30  7C 08 02 A6 */	mflr r0
/* 80007AF4 00004A34  90 01 00 04 */	stw r0, 4(r1)
/* 80007AF8 00004A38  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80007AFC 00004A3C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80007B00 00004A40  3B E3 00 00 */	addi r31, r3, 0
/* 80007B04 00004A44  88 04 00 00 */	lbz r0, 0(r4)
/* 80007B08 00004A48  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80007B0C 00004A4C  40 82 00 24 */	bne lbl_80007B30
/* 80007B10 00004A50  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80007B14 00004A54  7C 00 07 75 */	extsb. r0, r0
/* 80007B18 00004A58  40 82 00 08 */	bne lbl_80007B20
/* 80007B1C 00004A5C  38 80 00 00 */	li r4, 0
lbl_80007B20:
/* 80007B20 00004A60  38 7F 00 00 */	addi r3, r31, 0
/* 80007B24 00004A64  38 A0 00 00 */	li r5, 0
/* 80007B28 00004A68  4B FF DC AD */	bl findDirectory__10JKRArchiveCFPCcUl
/* 80007B2C 00004A6C  48 00 00 10 */	b lbl_80007B3C
lbl_80007B30:
/* 80007B30 00004A70  80 AD 8D 00 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 80007B34 00004A74  7F E3 FB 78 */	mr r3, r31
/* 80007B38 00004A78  4B FF DC 9D */	bl findDirectory__10JKRArchiveCFPCcUl
lbl_80007B3C:
/* 80007B3C 00004A7C  7C 83 00 D0 */	neg r4, r3
/* 80007B40 00004A80  30 04 FF FF */	addic r0, r4, -1
/* 80007B44 00004A84  28 03 00 00 */	cmplwi r3, 0
/* 80007B48 00004A88  7C 80 21 10 */	subfe r4, r0, r4
/* 80007B4C 00004A8C  41 82 00 1C */	beq lbl_80007B68
/* 80007B50 00004A90  93 ED 8D 60 */	stw r31, sCurrentVolume__13JKRFileLoader@sda21(r13)
/* 80007B54 00004A94  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80007B58 00004A98  7C 00 18 50 */	subf r0, r0, r3
/* 80007B5C 00004A9C  7C 00 26 70 */	srawi r0, r0, 4
/* 80007B60 00004AA0  7C 00 01 94 */	addze r0, r0
/* 80007B64 00004AA4  90 0D 8D 00 */	stw r0, sCurrentDirID__10JKRArchive@sda21(r13)
lbl_80007B68:
/* 80007B68 00004AA8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80007B6C 00004AAC  7C 83 23 78 */	mr r3, r4
/* 80007B70 00004AB0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80007B74 00004AB4  38 21 00 18 */	addi r1, r1, 0x18
/* 80007B78 00004AB8  7C 08 03 A6 */	mtlr r0
/* 80007B7C 00004ABC  4E 80 00 20 */	blr 

.global getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl
getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl:
/* 80007B80 00004AC0  7C 08 02 A6 */	mflr r0
/* 80007B84 00004AC4  90 01 00 04 */	stw r0, 4(r1)
/* 80007B88 00004AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007B8C 00004ACC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80007B90 00004AD0  3B E4 00 00 */	addi r31, r4, 0
/* 80007B94 00004AD4  38 85 00 00 */	addi r4, r5, 0
/* 80007B98 00004AD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80007B9C 00004ADC  3B C3 00 00 */	addi r30, r3, 0
/* 80007BA0 00004AE0  4B FF DF F1 */	bl findIdxResource__10JKRArchiveCFUl
/* 80007BA4 00004AE4  28 03 00 00 */	cmplwi r3, 0
/* 80007BA8 00004AE8  40 82 00 0C */	bne lbl_80007BB4
/* 80007BAC 00004AEC  38 60 00 00 */	li r3, 0
/* 80007BB0 00004AF0  48 00 00 30 */	b lbl_80007BE0
lbl_80007BB4:
/* 80007BB4 00004AF4  80 03 00 04 */	lwz r0, 4(r3)
/* 80007BB8 00004AF8  54 00 46 3E */	srwi r0, r0, 0x18
/* 80007BBC 00004AFC  98 1F 00 00 */	stb r0, 0(r31)
/* 80007BC0 00004B00  A0 03 00 00 */	lhz r0, 0(r3)
/* 80007BC4 00004B04  B0 1F 00 02 */	sth r0, 2(r31)
/* 80007BC8 00004B08  80 03 00 04 */	lwz r0, 4(r3)
/* 80007BCC 00004B0C  38 60 00 01 */	li r3, 1
/* 80007BD0 00004B10  80 9E 00 50 */	lwz r4, 0x50(r30)
/* 80007BD4 00004B14  54 00 02 3E */	clrlwi r0, r0, 8
/* 80007BD8 00004B18  7C 04 02 14 */	add r0, r4, r0
/* 80007BDC 00004B1C  90 1F 00 04 */	stw r0, 4(r31)
lbl_80007BE0:
/* 80007BE0 00004B20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007BE4 00004B24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80007BE8 00004B28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80007BEC 00004B2C  7C 08 03 A6 */	mtlr r0
/* 80007BF0 00004B30  38 21 00 20 */	addi r1, r1, 0x20
/* 80007BF4 00004B34  4E 80 00 20 */	blr 

.global getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
getGlbResource__10JKRArchiveFUlPCcP10JKRArchive:
/* 80007BF8 00004B38  7C 08 02 A6 */	mflr r0
/* 80007BFC 00004B3C  28 05 00 00 */	cmplwi r5, 0
/* 80007C00 00004B40  90 01 00 04 */	stw r0, 4(r1)
/* 80007C04 00004B44  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80007C08 00004B48  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80007C0C 00004B4C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80007C10 00004B50  3B C4 00 00 */	addi r30, r4, 0
/* 80007C14 00004B54  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80007C18 00004B58  3B A3 00 00 */	addi r29, r3, 0
/* 80007C1C 00004B5C  38 60 00 00 */	li r3, 0
/* 80007C20 00004B60  41 82 00 24 */	beq lbl_80007C44
/* 80007C24 00004B64  7C A3 2B 78 */	mr r3, r5
/* 80007C28 00004B68  81 85 00 00 */	lwz r12, 0(r5)
/* 80007C2C 00004B6C  38 9D 00 00 */	addi r4, r29, 0
/* 80007C30 00004B70  38 BE 00 00 */	addi r5, r30, 0
/* 80007C34 00004B74  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80007C38 00004B78  7D 88 03 A6 */	mtlr r12
/* 80007C3C 00004B7C  4E 80 00 21 */	blrl 
/* 80007C40 00004B80  48 00 00 54 */	b lbl_80007C94
lbl_80007C44:
/* 80007C44 00004B84  3C 80 80 40 */	lis r4, sVolumeList__13JKRFileLoader@ha
/* 80007C48 00004B88  83 E4 0B B0 */	lwz r31, sVolumeList__13JKRFileLoader@l(r4)
/* 80007C4C 00004B8C  48 00 00 40 */	b lbl_80007C8C
lbl_80007C50:
/* 80007C50 00004B90  80 BF 00 00 */	lwz r5, 0(r31)
/* 80007C54 00004B94  80 85 00 2C */	lwz r4, 0x2c(r5)
/* 80007C58 00004B98  3C 04 AD BF */	addis r0, r4, 0xadbf
/* 80007C5C 00004B9C  28 00 52 43 */	cmplwi r0, 0x5243
/* 80007C60 00004BA0  40 82 00 28 */	bne lbl_80007C88
/* 80007C64 00004BA4  81 85 00 00 */	lwz r12, 0(r5)
/* 80007C68 00004BA8  7C A3 2B 78 */	mr r3, r5
/* 80007C6C 00004BAC  38 9D 00 00 */	addi r4, r29, 0
/* 80007C70 00004BB0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80007C74 00004BB4  38 BE 00 00 */	addi r5, r30, 0
/* 80007C78 00004BB8  7D 88 03 A6 */	mtlr r12
/* 80007C7C 00004BBC  4E 80 00 21 */	blrl 
/* 80007C80 00004BC0  28 03 00 00 */	cmplwi r3, 0
/* 80007C84 00004BC4  40 82 00 10 */	bne lbl_80007C94
lbl_80007C88:
/* 80007C88 00004BC8  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_80007C8C:
/* 80007C8C 00004BCC  28 1F 00 00 */	cmplwi r31, 0
/* 80007C90 00004BD0  40 82 FF C0 */	bne lbl_80007C50
lbl_80007C94:
/* 80007C94 00004BD4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80007C98 00004BD8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80007C9C 00004BDC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80007CA0 00004BE0  7C 08 03 A6 */	mtlr r0
/* 80007CA4 00004BE4  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80007CA8 00004BE8  38 21 00 70 */	addi r1, r1, 0x70
/* 80007CAC 00004BEC  4E 80 00 20 */	blr 

.global getResource__10JKRArchiveFPCc
getResource__10JKRArchiveFPCc:
/* 80007CB0 00004BF0  7C 08 02 A6 */	mflr r0
/* 80007CB4 00004BF4  90 01 00 04 */	stw r0, 4(r1)
/* 80007CB8 00004BF8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80007CBC 00004BFC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80007CC0 00004C00  3B E3 00 00 */	addi r31, r3, 0
/* 80007CC4 00004C04  88 04 00 00 */	lbz r0, 0(r4)
/* 80007CC8 00004C08  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80007CCC 00004C0C  40 82 00 1C */	bne lbl_80007CE8
/* 80007CD0 00004C10  38 7F 00 00 */	addi r3, r31, 0
/* 80007CD4 00004C14  38 84 00 01 */	addi r4, r4, 1
/* 80007CD8 00004C18  38 A0 00 00 */	li r5, 0
/* 80007CDC 00004C1C  4B FF DD B1 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 80007CE0 00004C20  7C 64 1B 78 */	mr r4, r3
/* 80007CE4 00004C24  48 00 00 14 */	b lbl_80007CF8
lbl_80007CE8:
/* 80007CE8 00004C28  80 AD 8D 00 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 80007CEC 00004C2C  7F E3 FB 78 */	mr r3, r31
/* 80007CF0 00004C30  4B FF DD 9D */	bl findFsResource__10JKRArchiveCFPCcUl
/* 80007CF4 00004C34  7C 64 1B 78 */	mr r4, r3
lbl_80007CF8:
/* 80007CF8 00004C38  28 04 00 00 */	cmplwi r4, 0
/* 80007CFC 00004C3C  41 82 00 20 */	beq lbl_80007D1C
/* 80007D00 00004C40  81 9F 00 00 */	lwz r12, 0(r31)
/* 80007D04 00004C44  7F E3 FB 78 */	mr r3, r31
/* 80007D08 00004C48  38 A0 00 00 */	li r5, 0
/* 80007D0C 00004C4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80007D10 00004C50  7D 88 03 A6 */	mtlr r12
/* 80007D14 00004C54  4E 80 00 21 */	blrl 
/* 80007D18 00004C58  48 00 00 08 */	b lbl_80007D20
lbl_80007D1C:
/* 80007D1C 00004C5C  38 60 00 00 */	li r3, 0
lbl_80007D20:
/* 80007D20 00004C60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80007D24 00004C64  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80007D28 00004C68  38 21 00 18 */	addi r1, r1, 0x18
/* 80007D2C 00004C6C  7C 08 03 A6 */	mtlr r0
/* 80007D30 00004C70  4E 80 00 20 */	blr 

.global getResource__10JKRArchiveFUlPCc
getResource__10JKRArchiveFUlPCc:
/* 80007D34 00004C74  7C 08 02 A6 */	mflr r0
/* 80007D38 00004C78  28 04 00 00 */	cmplwi r4, 0
/* 80007D3C 00004C7C  90 01 00 04 */	stw r0, 4(r1)
/* 80007D40 00004C80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007D44 00004C84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80007D48 00004C88  3B E3 00 00 */	addi r31, r3, 0
/* 80007D4C 00004C8C  41 82 00 10 */	beq lbl_80007D5C
/* 80007D50 00004C90  3C 04 C0 C1 */	addis r0, r4, 0xc0c1
/* 80007D54 00004C94  28 00 3F 3F */	cmplwi r0, 0x3f3f
/* 80007D58 00004C98  40 82 00 18 */	bne lbl_80007D70
lbl_80007D5C:
/* 80007D5C 00004C9C  38 7F 00 00 */	addi r3, r31, 0
/* 80007D60 00004CA0  38 85 00 00 */	addi r4, r5, 0
/* 80007D64 00004CA4  4B FF DE 55 */	bl findNameResource__10JKRArchiveCFPCc
/* 80007D68 00004CA8  7C 64 1B 78 */	mr r4, r3
/* 80007D6C 00004CAC  48 00 00 10 */	b lbl_80007D7C
lbl_80007D70:
/* 80007D70 00004CB0  7F E3 FB 78 */	mr r3, r31
/* 80007D74 00004CB4  4B FF DC 21 */	bl findTypeResource__10JKRArchiveCFUlPCc
/* 80007D78 00004CB8  7C 64 1B 78 */	mr r4, r3
lbl_80007D7C:
/* 80007D7C 00004CBC  28 04 00 00 */	cmplwi r4, 0
/* 80007D80 00004CC0  41 82 00 20 */	beq lbl_80007DA0
/* 80007D84 00004CC4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80007D88 00004CC8  7F E3 FB 78 */	mr r3, r31
/* 80007D8C 00004CCC  38 A0 00 00 */	li r5, 0
/* 80007D90 00004CD0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80007D94 00004CD4  7D 88 03 A6 */	mtlr r12
/* 80007D98 00004CD8  4E 80 00 21 */	blrl 
/* 80007D9C 00004CDC  48 00 00 08 */	b lbl_80007DA4
lbl_80007DA0:
/* 80007DA0 00004CE0  38 60 00 00 */	li r3, 0
lbl_80007DA4:
/* 80007DA4 00004CE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007DA8 00004CE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80007DAC 00004CEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80007DB0 00004CF0  7C 08 03 A6 */	mtlr r0
/* 80007DB4 00004CF4  4E 80 00 20 */	blr 

.global readResource__10JKRArchiveFPvUlUlPCc
readResource__10JKRArchiveFPvUlUlPCc:
/* 80007DB8 00004CF8  7C 08 02 A6 */	mflr r0
/* 80007DBC 00004CFC  28 06 00 00 */	cmplwi r6, 0
/* 80007DC0 00004D00  90 01 00 04 */	stw r0, 4(r1)
/* 80007DC4 00004D04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80007DC8 00004D08  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80007DCC 00004D0C  3B E5 00 00 */	addi r31, r5, 0
/* 80007DD0 00004D10  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80007DD4 00004D14  3B C4 00 00 */	addi r30, r4, 0
/* 80007DD8 00004D18  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80007DDC 00004D1C  3B A3 00 00 */	addi r29, r3, 0
/* 80007DE0 00004D20  41 82 00 10 */	beq lbl_80007DF0
/* 80007DE4 00004D24  3C 06 C0 C1 */	addis r0, r6, 0xc0c1
/* 80007DE8 00004D28  28 00 3F 3F */	cmplwi r0, 0x3f3f
/* 80007DEC 00004D2C  40 82 00 18 */	bne lbl_80007E04
lbl_80007DF0:
/* 80007DF0 00004D30  38 7D 00 00 */	addi r3, r29, 0
/* 80007DF4 00004D34  38 87 00 00 */	addi r4, r7, 0
/* 80007DF8 00004D38  4B FF DD C1 */	bl findNameResource__10JKRArchiveCFPCc
/* 80007DFC 00004D3C  7C 66 1B 78 */	mr r6, r3
/* 80007E00 00004D40  48 00 00 18 */	b lbl_80007E18
lbl_80007E04:
/* 80007E04 00004D44  38 7D 00 00 */	addi r3, r29, 0
/* 80007E08 00004D48  38 86 00 00 */	addi r4, r6, 0
/* 80007E0C 00004D4C  38 A7 00 00 */	addi r5, r7, 0
/* 80007E10 00004D50  4B FF DB 85 */	bl findTypeResource__10JKRArchiveCFUlPCc
/* 80007E14 00004D54  7C 66 1B 78 */	mr r6, r3
lbl_80007E18:
/* 80007E18 00004D58  28 06 00 00 */	cmplwi r6, 0
/* 80007E1C 00004D5C  41 82 00 2C */	beq lbl_80007E48
/* 80007E20 00004D60  81 9D 00 00 */	lwz r12, 0(r29)
/* 80007E24 00004D64  7F A3 EB 78 */	mr r3, r29
/* 80007E28 00004D68  38 9E 00 00 */	addi r4, r30, 0
/* 80007E2C 00004D6C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80007E30 00004D70  38 BF 00 00 */	addi r5, r31, 0
/* 80007E34 00004D74  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80007E38 00004D78  7D 88 03 A6 */	mtlr r12
/* 80007E3C 00004D7C  4E 80 00 21 */	blrl 
/* 80007E40 00004D80  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80007E44 00004D84  48 00 00 08 */	b lbl_80007E4C
lbl_80007E48:
/* 80007E48 00004D88  38 60 00 00 */	li r3, 0
lbl_80007E4C:
/* 80007E4C 00004D8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80007E50 00004D90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80007E54 00004D94  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80007E58 00004D98  7C 08 03 A6 */	mtlr r0
/* 80007E5C 00004D9C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80007E60 00004DA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80007E64 00004DA4  4E 80 00 20 */	blr 

.global readResource__10JKRArchiveFPvUlPCc
readResource__10JKRArchiveFPvUlPCc:
/* 80007E68 00004DA8  7C 08 02 A6 */	mflr r0
/* 80007E6C 00004DAC  90 01 00 04 */	stw r0, 4(r1)
/* 80007E70 00004DB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80007E74 00004DB4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80007E78 00004DB8  3B E5 00 00 */	addi r31, r5, 0
/* 80007E7C 00004DBC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80007E80 00004DC0  3B C4 00 00 */	addi r30, r4, 0
/* 80007E84 00004DC4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80007E88 00004DC8  3B A3 00 00 */	addi r29, r3, 0
/* 80007E8C 00004DCC  88 06 00 00 */	lbz r0, 0(r6)
/* 80007E90 00004DD0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80007E94 00004DD4  40 82 00 1C */	bne lbl_80007EB0
/* 80007E98 00004DD8  38 7D 00 00 */	addi r3, r29, 0
/* 80007E9C 00004DDC  38 86 00 01 */	addi r4, r6, 1
/* 80007EA0 00004DE0  38 A0 00 00 */	li r5, 0
/* 80007EA4 00004DE4  4B FF DB E9 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 80007EA8 00004DE8  7C 66 1B 78 */	mr r6, r3
/* 80007EAC 00004DEC  48 00 00 18 */	b lbl_80007EC4
lbl_80007EB0:
/* 80007EB0 00004DF0  80 AD 8D 00 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 80007EB4 00004DF4  38 7D 00 00 */	addi r3, r29, 0
/* 80007EB8 00004DF8  38 86 00 00 */	addi r4, r6, 0
/* 80007EBC 00004DFC  4B FF DB D1 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 80007EC0 00004E00  7C 66 1B 78 */	mr r6, r3
lbl_80007EC4:
/* 80007EC4 00004E04  28 06 00 00 */	cmplwi r6, 0
/* 80007EC8 00004E08  41 82 00 2C */	beq lbl_80007EF4
/* 80007ECC 00004E0C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80007ED0 00004E10  7F A3 EB 78 */	mr r3, r29
/* 80007ED4 00004E14  38 9E 00 00 */	addi r4, r30, 0
/* 80007ED8 00004E18  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80007EDC 00004E1C  38 BF 00 00 */	addi r5, r31, 0
/* 80007EE0 00004E20  38 E1 00 18 */	addi r7, r1, 0x18
/* 80007EE4 00004E24  7D 88 03 A6 */	mtlr r12
/* 80007EE8 00004E28  4E 80 00 21 */	blrl 
/* 80007EEC 00004E2C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80007EF0 00004E30  48 00 00 08 */	b lbl_80007EF8
lbl_80007EF4:
/* 80007EF4 00004E34  38 60 00 00 */	li r3, 0
lbl_80007EF8:
/* 80007EF8 00004E38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80007EFC 00004E3C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80007F00 00004E40  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80007F04 00004E44  7C 08 03 A6 */	mtlr r0
/* 80007F08 00004E48  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80007F0C 00004E4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80007F10 00004E50  4E 80 00 20 */	blr 

.global removeResourceAll__10JKRArchiveFv
removeResourceAll__10JKRArchiveFv:
/* 80007F14 00004E54  7C 08 02 A6 */	mflr r0
/* 80007F18 00004E58  90 01 00 04 */	stw r0, 4(r1)
/* 80007F1C 00004E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80007F20 00004E60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80007F24 00004E64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80007F28 00004E68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80007F2C 00004E6C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80007F30 00004E70  7C 7C 1B 78 */	mr r28, r3
/* 80007F34 00004E74  80 03 00 44 */	lwz r0, 0x44(r3)
/* 80007F38 00004E78  28 00 00 00 */	cmplwi r0, 0
/* 80007F3C 00004E7C  41 82 00 50 */	beq lbl_80007F8C
/* 80007F40 00004E80  88 1C 00 3C */	lbz r0, 0x3c(r28)
/* 80007F44 00004E84  28 00 00 01 */	cmplwi r0, 1
/* 80007F48 00004E88  41 82 00 44 */	beq lbl_80007F8C
/* 80007F4C 00004E8C  83 DC 00 4C */	lwz r30, 0x4c(r28)
/* 80007F50 00004E90  3B A0 00 00 */	li r29, 0
/* 80007F54 00004E94  3B E0 00 00 */	li r31, 0
/* 80007F58 00004E98  48 00 00 24 */	b lbl_80007F7C
lbl_80007F5C:
/* 80007F5C 00004E9C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80007F60 00004EA0  28 00 00 00 */	cmplwi r0, 0
/* 80007F64 00004EA4  41 82 00 14 */	beq lbl_80007F78
/* 80007F68 00004EA8  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80007F6C 00004EAC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80007F70 00004EB0  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 80007F74 00004EB4  48 00 45 51 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_80007F78:
/* 80007F78 00004EB8  3B BD 00 01 */	addi r29, r29, 1
lbl_80007F7C:
/* 80007F7C 00004EBC  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 80007F80 00004EC0  80 03 00 08 */	lwz r0, 8(r3)
/* 80007F84 00004EC4  7C 1D 00 40 */	cmplw r29, r0
/* 80007F88 00004EC8  41 80 FF D4 */	blt lbl_80007F5C
lbl_80007F8C:
/* 80007F8C 00004ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80007F90 00004ED0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80007F94 00004ED4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80007F98 00004ED8  7C 08 03 A6 */	mtlr r0
/* 80007F9C 00004EDC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80007FA0 00004EE0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80007FA4 00004EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80007FA8 00004EE8  4E 80 00 20 */	blr 

.global removeResource__10JKRArchiveFPv
removeResource__10JKRArchiveFPv:
/* 80007FAC 00004EEC  7C 08 02 A6 */	mflr r0
/* 80007FB0 00004EF0  90 01 00 04 */	stw r0, 4(r1)
/* 80007FB4 00004EF4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80007FB8 00004EF8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80007FBC 00004EFC  3B E4 00 00 */	addi r31, r4, 0
/* 80007FC0 00004F00  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80007FC4 00004F04  3B C3 00 00 */	addi r30, r3, 0
/* 80007FC8 00004F08  4B FF DC B1 */	bl findPtrResource__10JKRArchiveCFPCv
/* 80007FCC 00004F0C  28 03 00 00 */	cmplwi r3, 0
/* 80007FD0 00004F10  40 82 00 0C */	bne lbl_80007FDC
/* 80007FD4 00004F14  38 60 00 00 */	li r3, 0
/* 80007FD8 00004F18  48 00 00 1C */	b lbl_80007FF4
lbl_80007FDC:
/* 80007FDC 00004F1C  38 00 00 00 */	li r0, 0
/* 80007FE0 00004F20  90 03 00 10 */	stw r0, 0x10(r3)
/* 80007FE4 00004F24  7F E3 FB 78 */	mr r3, r31
/* 80007FE8 00004F28  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80007FEC 00004F2C  48 00 44 D9 */	bl free__7JKRHeapFPvP7JKRHeap
/* 80007FF0 00004F30  38 60 00 01 */	li r3, 1
lbl_80007FF4:
/* 80007FF4 00004F34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80007FF8 00004F38  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80007FFC 00004F3C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80008000 00004F40  7C 08 03 A6 */	mtlr r0
/* 80008004 00004F44  38 21 00 18 */	addi r1, r1, 0x18
/* 80008008 00004F48  4E 80 00 20 */	blr 

.global detachResource__10JKRArchiveFPv
detachResource__10JKRArchiveFPv:
/* 8000800C 00004F4C  7C 08 02 A6 */	mflr r0
/* 80008010 00004F50  90 01 00 04 */	stw r0, 4(r1)
/* 80008014 00004F54  94 21 FF F8 */	stwu r1, -8(r1)
/* 80008018 00004F58  4B FF DC 61 */	bl findPtrResource__10JKRArchiveCFPCv
/* 8000801C 00004F5C  28 03 00 00 */	cmplwi r3, 0
/* 80008020 00004F60  40 82 00 0C */	bne lbl_8000802C
/* 80008024 00004F64  38 60 00 00 */	li r3, 0
/* 80008028 00004F68  48 00 00 10 */	b lbl_80008038
lbl_8000802C:
/* 8000802C 00004F6C  38 00 00 00 */	li r0, 0
/* 80008030 00004F70  90 03 00 10 */	stw r0, 0x10(r3)
/* 80008034 00004F74  38 60 00 01 */	li r3, 1
lbl_80008038:
/* 80008038 00004F78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000803C 00004F7C  38 21 00 08 */	addi r1, r1, 8
/* 80008040 00004F80  7C 08 03 A6 */	mtlr r0
/* 80008044 00004F84  4E 80 00 20 */	blr 

.global getResSize__10JKRArchiveCFPCv
getResSize__10JKRArchiveCFPCv:
/* 80008048 00004F88  7C 08 02 A6 */	mflr r0
/* 8000804C 00004F8C  90 01 00 04 */	stw r0, 4(r1)
/* 80008050 00004F90  94 21 FF F8 */	stwu r1, -8(r1)
/* 80008054 00004F94  4B FF DC 25 */	bl findPtrResource__10JKRArchiveCFPCv
/* 80008058 00004F98  28 03 00 00 */	cmplwi r3, 0
/* 8000805C 00004F9C  40 82 00 0C */	bne lbl_80008068
/* 80008060 00004FA0  38 60 FF FF */	li r3, -1
/* 80008064 00004FA4  48 00 00 08 */	b lbl_8000806C
lbl_80008068:
/* 80008068 00004FA8  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_8000806C:
/* 8000806C 00004FAC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80008070 00004FB0  38 21 00 08 */	addi r1, r1, 8
/* 80008074 00004FB4  7C 08 03 A6 */	mtlr r0
/* 80008078 00004FB8  4E 80 00 20 */	blr 

.global countFile__10JKRArchiveCFPCc
countFile__10JKRArchiveCFPCc:
/* 8000807C 00004FBC  7C 08 02 A6 */	mflr r0
/* 80008080 00004FC0  90 01 00 04 */	stw r0, 4(r1)
/* 80008084 00004FC4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80008088 00004FC8  88 04 00 00 */	lbz r0, 0(r4)
/* 8000808C 00004FCC  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80008090 00004FD0  40 82 00 20 */	bne lbl_800080B0
/* 80008094 00004FD4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80008098 00004FD8  7C 00 07 75 */	extsb. r0, r0
/* 8000809C 00004FDC  40 82 00 08 */	bne lbl_800080A4
/* 800080A0 00004FE0  38 80 00 00 */	li r4, 0
lbl_800080A4:
/* 800080A4 00004FE4  38 A0 00 00 */	li r5, 0
/* 800080A8 00004FE8  4B FF D7 2D */	bl findDirectory__10JKRArchiveCFPCcUl
/* 800080AC 00004FEC  48 00 00 0C */	b lbl_800080B8
lbl_800080B0:
/* 800080B0 00004FF0  80 AD 8D 00 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 800080B4 00004FF4  4B FF D7 21 */	bl findDirectory__10JKRArchiveCFPCcUl
lbl_800080B8:
/* 800080B8 00004FF8  28 03 00 00 */	cmplwi r3, 0
/* 800080BC 00004FFC  41 82 00 0C */	beq lbl_800080C8
/* 800080C0 00005000  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 800080C4 00005004  48 00 00 08 */	b lbl_800080CC
lbl_800080C8:
/* 800080C8 00005008  38 60 00 00 */	li r3, 0
lbl_800080CC:
/* 800080CC 0000500C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800080D0 00005010  38 21 00 08 */	addi r1, r1, 8
/* 800080D4 00005014  7C 08 03 A6 */	mtlr r0
/* 800080D8 00005018  4E 80 00 20 */	blr 

.global getFirstFile__10JKRArchiveCFPCc
getFirstFile__10JKRArchiveCFPCc:
/* 800080DC 0000501C  7C 08 02 A6 */	mflr r0
/* 800080E0 00005020  90 01 00 04 */	stw r0, 4(r1)
/* 800080E4 00005024  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800080E8 00005028  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800080EC 0000502C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800080F0 00005030  3B C3 00 00 */	addi r30, r3, 0
/* 800080F4 00005034  88 04 00 00 */	lbz r0, 0(r4)
/* 800080F8 00005038  2C 00 00 2F */	cmpwi r0, 0x2f
/* 800080FC 0000503C  40 82 00 28 */	bne lbl_80008124
/* 80008100 00005040  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80008104 00005044  7C 00 07 75 */	extsb. r0, r0
/* 80008108 00005048  40 82 00 08 */	bne lbl_80008110
/* 8000810C 0000504C  38 80 00 00 */	li r4, 0
lbl_80008110:
/* 80008110 00005050  38 7E 00 00 */	addi r3, r30, 0
/* 80008114 00005054  38 A0 00 00 */	li r5, 0
/* 80008118 00005058  4B FF D6 BD */	bl findDirectory__10JKRArchiveCFPCcUl
/* 8000811C 0000505C  7C 7F 1B 78 */	mr r31, r3
/* 80008120 00005060  48 00 00 14 */	b lbl_80008134
lbl_80008124:
/* 80008124 00005064  80 AD 8D 00 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 80008128 00005068  7F C3 F3 78 */	mr r3, r30
/* 8000812C 0000506C  4B FF D6 A9 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 80008130 00005070  7C 7F 1B 78 */	mr r31, r3
lbl_80008134:
/* 80008134 00005074  28 1F 00 00 */	cmplwi r31, 0
/* 80008138 00005078  41 82 00 30 */	beq lbl_80008168
/* 8000813C 0000507C  80 8D 8D 68 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 80008140 00005080  38 60 00 24 */	li r3, 0x24
/* 80008144 00005084  38 A0 00 00 */	li r5, 0
/* 80008148 00005088  48 00 47 FD */	bl __nw__FUlP7JKRHeapi
/* 8000814C 0000508C  28 03 00 00 */	cmplwi r3, 0
/* 80008150 00005090  41 82 00 1C */	beq lbl_8000816C
/* 80008154 00005094  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80008158 00005098  7F C4 F3 78 */	mr r4, r30
/* 8000815C 0000509C  A0 DF 00 0A */	lhz r6, 0xa(r31)
/* 80008160 000050A0  48 00 37 C1 */	bl __ct__12JKRArcFinderFP10JKRArchivell
/* 80008164 000050A4  48 00 00 08 */	b lbl_8000816C
lbl_80008168:
/* 80008168 000050A8  38 60 00 00 */	li r3, 0
lbl_8000816C:
/* 8000816C 000050AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80008170 000050B0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80008174 000050B4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80008178 000050B8  7C 08 03 A6 */	mtlr r0
/* 8000817C 000050BC  38 21 00 18 */	addi r1, r1, 0x18
/* 80008180 000050C0  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__10JKRArchive
__vt__10JKRArchive:
  .4byte 0
  .4byte 0
  .4byte __dt__10JKRArchiveFv
  .4byte unmount__13JKRFileLoaderFv
  .4byte becomeCurrent__10JKRArchiveFPCc
  .4byte getResource__10JKRArchiveFPCc
  .4byte getResource__10JKRArchiveFUlPCc
  .4byte readResource__10JKRArchiveFPvUlPCc
  .4byte readResource__10JKRArchiveFPvUlUlPCc
  .4byte removeResourceAll__10JKRArchiveFv
  .4byte removeResource__10JKRArchiveFPv
  .4byte detachResource__10JKRArchiveFPv
  .4byte getResSize__10JKRArchiveCFPCv
  .4byte countFile__10JKRArchiveCFPCc
  .4byte getFirstFile__10JKRArchiveCFPCc
  .4byte 0
  .4byte 0
  .4byte 0
