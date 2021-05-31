.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ieee754_atan2
__ieee754_atan2:
/* 800865B0 000834F0  7C 08 02 A6 */	mflr r0
/* 800865B4 000834F4  3C 60 7F F0 */	lis r3, 0x7ff0
/* 800865B8 000834F8  90 01 00 04 */	stw r0, 4(r1)
/* 800865BC 000834FC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800865C0 00083500  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800865C4 00083504  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 800865C8 00083508  81 01 00 14 */	lwz r8, 0x14(r1)
/* 800865CC 0008350C  D8 21 00 08 */	stfd f1, 8(r1)
/* 800865D0 00083510  7C 08 00 D0 */	neg r0, r8
/* 800865D4 00083514  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800865D8 00083518  7D 00 03 78 */	or r0, r8, r0
/* 800865DC 0008351C  80 A1 00 08 */	lwz r5, 8(r1)
/* 800865E0 00083520  54 86 00 7E */	clrlwi r6, r4, 1
/* 800865E4 00083524  81 21 00 0C */	lwz r9, 0xc(r1)
/* 800865E8 00083528  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800865EC 0008352C  7C C0 03 78 */	or r0, r6, r0
/* 800865F0 00083530  7C 00 18 40 */	cmplw r0, r3
/* 800865F4 00083534  54 A7 00 7E */	clrlwi r7, r5, 1
/* 800865F8 00083538  41 81 00 1C */	bgt lbl_80086614
/* 800865FC 0008353C  7C 09 00 D0 */	neg r0, r9
/* 80086600 00083540  7D 20 03 78 */	or r0, r9, r0
/* 80086604 00083544  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80086608 00083548  7C E0 03 78 */	or r0, r7, r0
/* 8008660C 0008354C  7C 00 18 40 */	cmplw r0, r3
/* 80086610 00083550  40 81 00 14 */	ble lbl_80086624
lbl_80086614:
/* 80086614 00083554  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80086618 00083558  C8 01 00 08 */	lfd f0, 8(r1)
/* 8008661C 0008355C  FC 21 00 2A */	fadd f1, f1, f0
/* 80086620 00083560  48 00 02 14 */	b lbl_80086834
lbl_80086624:
/* 80086624 00083564  3C 04 C0 10 */	addis r0, r4, 0xc010
/* 80086628 00083568  7C 00 43 79 */	or. r0, r0, r8
/* 8008662C 0008356C  40 82 00 10 */	bne lbl_8008663C
/* 80086630 00083570  C8 21 00 08 */	lfd f1, 8(r1)
/* 80086634 00083574  48 00 02 15 */	bl atan
/* 80086638 00083578  48 00 01 FC */	b lbl_80086834
lbl_8008663C:
/* 8008663C 0008357C  7C E0 4B 79 */	or. r0, r7, r9
/* 80086640 00083580  54 80 17 BC */	rlwinm r0, r4, 2, 0x1e, 0x1e
/* 80086644 00083584  7C 1F 03 78 */	mr r31, r0
/* 80086648 00083588  50 BF 0F FE */	rlwimi r31, r5, 1, 0x1f, 0x1f
/* 8008664C 0008358C  40 82 00 40 */	bne lbl_8008668C
/* 80086650 00083590  2C 1F 00 02 */	cmpwi r31, 2
/* 80086654 00083594  41 82 00 28 */	beq lbl_8008667C
/* 80086658 00083598  40 80 00 10 */	bge lbl_80086668
/* 8008665C 0008359C  2C 1F 00 00 */	cmpwi r31, 0
/* 80086660 000835A0  40 80 00 14 */	bge lbl_80086674
/* 80086664 000835A4  48 00 00 28 */	b lbl_8008668C
lbl_80086668:
/* 80086668 000835A8  2C 1F 00 04 */	cmpwi r31, 4
/* 8008666C 000835AC  40 80 00 20 */	bge lbl_8008668C
/* 80086670 000835B0  48 00 00 14 */	b lbl_80086684
lbl_80086674:
/* 80086674 000835B4  C8 21 00 08 */	lfd f1, 8(r1)
/* 80086678 000835B8  48 00 01 BC */	b lbl_80086834
lbl_8008667C:
/* 8008667C 000835BC  C8 22 89 88 */	lfd f1, $$2182@sda21(r2)
/* 80086680 000835C0  48 00 01 B4 */	b lbl_80086834
lbl_80086684:
/* 80086684 000835C4  C8 22 89 90 */	lfd f1, $$2183@sda21(r2)
/* 80086688 000835C8  48 00 01 AC */	b lbl_80086834
lbl_8008668C:
/* 8008668C 000835CC  7C C0 43 79 */	or. r0, r6, r8
/* 80086690 000835D0  40 82 00 1C */	bne lbl_800866AC
/* 80086694 000835D4  2C 05 00 00 */	cmpwi r5, 0
/* 80086698 000835D8  40 80 00 0C */	bge lbl_800866A4
/* 8008669C 000835DC  C8 22 89 98 */	lfd f1, $$2184@sda21(r2)
/* 800866A0 000835E0  48 00 01 94 */	b lbl_80086834
lbl_800866A4:
/* 800866A4 000835E4  C8 22 89 A0 */	lfd f1, $$2185@sda21(r2)
/* 800866A8 000835E8  48 00 01 8C */	b lbl_80086834
lbl_800866AC:
/* 800866AC 000835EC  3C 06 80 10 */	addis r0, r6, 0x8010
/* 800866B0 000835F0  28 00 00 00 */	cmplwi r0, 0
/* 800866B4 000835F4  40 82 00 A0 */	bne lbl_80086754
/* 800866B8 000835F8  3C 07 80 10 */	addis r0, r7, 0x8010
/* 800866BC 000835FC  28 00 00 00 */	cmplwi r0, 0
/* 800866C0 00083600  40 82 00 4C */	bne lbl_8008670C
/* 800866C4 00083604  2C 1F 00 02 */	cmpwi r31, 2
/* 800866C8 00083608  41 82 00 34 */	beq lbl_800866FC
/* 800866CC 0008360C  40 80 00 14 */	bge lbl_800866E0
/* 800866D0 00083610  2C 1F 00 00 */	cmpwi r31, 0
/* 800866D4 00083614  41 82 00 18 */	beq lbl_800866EC
/* 800866D8 00083618  40 80 00 1C */	bge lbl_800866F4
/* 800866DC 0008361C  48 00 00 78 */	b lbl_80086754
lbl_800866E0:
/* 800866E0 00083620  2C 1F 00 04 */	cmpwi r31, 4
/* 800866E4 00083624  40 80 00 70 */	bge lbl_80086754
/* 800866E8 00083628  48 00 00 1C */	b lbl_80086704
lbl_800866EC:
/* 800866EC 0008362C  C8 22 89 A8 */	lfd f1, $$2186@sda21(r2)
/* 800866F0 00083630  48 00 01 44 */	b lbl_80086834
lbl_800866F4:
/* 800866F4 00083634  C8 22 89 B0 */	lfd f1, $$2187@sda21(r2)
/* 800866F8 00083638  48 00 01 3C */	b lbl_80086834
lbl_800866FC:
/* 800866FC 0008363C  C8 22 89 B8 */	lfd f1, $$2188@sda21(r2)
/* 80086700 00083640  48 00 01 34 */	b lbl_80086834
lbl_80086704:
/* 80086704 00083644  C8 22 89 C0 */	lfd f1, $$2189@sda21(r2)
/* 80086708 00083648  48 00 01 2C */	b lbl_80086834
lbl_8008670C:
/* 8008670C 0008364C  2C 1F 00 02 */	cmpwi r31, 2
/* 80086710 00083650  41 82 00 34 */	beq lbl_80086744
/* 80086714 00083654  40 80 00 14 */	bge lbl_80086728
/* 80086718 00083658  2C 1F 00 00 */	cmpwi r31, 0
/* 8008671C 0008365C  41 82 00 18 */	beq lbl_80086734
/* 80086720 00083660  40 80 00 1C */	bge lbl_8008673C
/* 80086724 00083664  48 00 00 30 */	b lbl_80086754
lbl_80086728:
/* 80086728 00083668  2C 1F 00 04 */	cmpwi r31, 4
/* 8008672C 0008366C  40 80 00 28 */	bge lbl_80086754
/* 80086730 00083670  48 00 00 1C */	b lbl_8008674C
lbl_80086734:
/* 80086734 00083674  C8 22 89 C8 */	lfd f1, $$2190@sda21(r2)
/* 80086738 00083678  48 00 00 FC */	b lbl_80086834
lbl_8008673C:
/* 8008673C 0008367C  C8 22 89 D0 */	lfd f1, $$2191@sda21(r2)
/* 80086740 00083680  48 00 00 F4 */	b lbl_80086834
lbl_80086744:
/* 80086744 00083684  C8 22 89 88 */	lfd f1, $$2182@sda21(r2)
/* 80086748 00083688  48 00 00 EC */	b lbl_80086834
lbl_8008674C:
/* 8008674C 0008368C  C8 22 89 90 */	lfd f1, $$2183@sda21(r2)
/* 80086750 00083690  48 00 00 E4 */	b lbl_80086834
lbl_80086754:
/* 80086754 00083694  3C 07 80 10 */	addis r0, r7, 0x8010
/* 80086758 00083698  28 00 00 00 */	cmplwi r0, 0
/* 8008675C 0008369C  40 82 00 1C */	bne lbl_80086778
/* 80086760 000836A0  2C 05 00 00 */	cmpwi r5, 0
/* 80086764 000836A4  40 80 00 0C */	bge lbl_80086770
/* 80086768 000836A8  C8 22 89 98 */	lfd f1, $$2184@sda21(r2)
/* 8008676C 000836AC  48 00 00 C8 */	b lbl_80086834
lbl_80086770:
/* 80086770 000836B0  C8 22 89 A0 */	lfd f1, $$2185@sda21(r2)
/* 80086774 000836B4  48 00 00 C0 */	b lbl_80086834
lbl_80086778:
/* 80086778 000836B8  7C 06 38 50 */	subf r0, r6, r7
/* 8008677C 000836BC  7C 00 A6 70 */	srawi r0, r0, 0x14
/* 80086780 000836C0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80086784 000836C4  40 81 00 10 */	ble lbl_80086794
/* 80086788 000836C8  C8 02 89 A0 */	lfd f0, $$2185@sda21(r2)
/* 8008678C 000836CC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80086790 000836D0  48 00 00 38 */	b lbl_800867C8
lbl_80086794:
/* 80086794 000836D4  2C 04 00 00 */	cmpwi r4, 0
/* 80086798 000836D8  40 80 00 18 */	bge lbl_800867B0
/* 8008679C 000836DC  2C 00 FF C4 */	cmpwi r0, -60
/* 800867A0 000836E0  40 80 00 10 */	bge lbl_800867B0
/* 800867A4 000836E4  C8 02 89 C8 */	lfd f0, $$2190@sda21(r2)
/* 800867A8 000836E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800867AC 000836EC  48 00 00 1C */	b lbl_800867C8
lbl_800867B0:
/* 800867B0 000836F0  C8 21 00 08 */	lfd f1, 8(r1)
/* 800867B4 000836F4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800867B8 000836F8  FC 21 00 24 */	fdiv f1, f1, f0
/* 800867BC 000836FC  4B FF FD ED */	bl fabs__Fd
/* 800867C0 00083700  48 00 00 89 */	bl atan
/* 800867C4 00083704  D8 21 00 18 */	stfd f1, 0x18(r1)
lbl_800867C8:
/* 800867C8 00083708  2C 1F 00 01 */	cmpwi r31, 1
/* 800867CC 0008370C  41 82 00 28 */	beq lbl_800867F4
/* 800867D0 00083710  40 80 00 10 */	bge lbl_800867E0
/* 800867D4 00083714  2C 1F 00 00 */	cmpwi r31, 0
/* 800867D8 00083718  40 80 00 14 */	bge lbl_800867EC
/* 800867DC 0008371C  48 00 00 44 */	b lbl_80086820
lbl_800867E0:
/* 800867E0 00083720  2C 1F 00 03 */	cmpwi r31, 3
/* 800867E4 00083724  40 80 00 3C */	bge lbl_80086820
/* 800867E8 00083728  48 00 00 20 */	b lbl_80086808
lbl_800867EC:
/* 800867EC 0008372C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800867F0 00083730  48 00 00 44 */	b lbl_80086834
lbl_800867F4:
/* 800867F4 00083734  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800867F8 00083738  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800867FC 0008373C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80086800 00083740  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80086804 00083744  48 00 00 30 */	b lbl_80086834
lbl_80086808:
/* 80086808 00083748  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8008680C 0008374C  C8 02 89 D8 */	lfd f0, $$2192@sda21(r2)
/* 80086810 00083750  C8 42 89 88 */	lfd f2, $$2182@sda21(r2)
/* 80086814 00083754  FC 01 00 28 */	fsub f0, f1, f0
/* 80086818 00083758  FC 22 00 28 */	fsub f1, f2, f0
/* 8008681C 0008375C  48 00 00 18 */	b lbl_80086834
lbl_80086820:
/* 80086820 00083760  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80086824 00083764  C8 22 89 D8 */	lfd f1, $$2192@sda21(r2)
/* 80086828 00083768  C8 02 89 88 */	lfd f0, $$2182@sda21(r2)
/* 8008682C 0008376C  FC 22 08 28 */	fsub f1, f2, f1
/* 80086830 00083770  FC 21 00 28 */	fsub f1, f1, f0
lbl_80086834:
/* 80086834 00083774  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80086838 00083778  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8008683C 0008377C  38 21 00 28 */	addi r1, r1, 0x28
/* 80086840 00083780  7C 08 03 A6 */	mtlr r0
/* 80086844 00083784  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2182:
	.incbin "baserom.dol", 0x3E4688, 0x8
$$2183:
	.incbin "baserom.dol", 0x3E4690, 0x8
$$2184:
	.incbin "baserom.dol", 0x3E4698, 0x8
$$2185:
	.incbin "baserom.dol", 0x3E46A0, 0x8
$$2186:
	.incbin "baserom.dol", 0x3E46A8, 0x8
$$2187:
	.incbin "baserom.dol", 0x3E46B0, 0x8
$$2188:
	.incbin "baserom.dol", 0x3E46B8, 0x8
$$2189:
	.incbin "baserom.dol", 0x3E46C0, 0x8
$$2190:
  .4byte 0
  .4byte 0
$$2191:
  .4byte 0x80000000
  .4byte 0
$$2192:
	.incbin "baserom.dol", 0x3E46D8, 0x8
