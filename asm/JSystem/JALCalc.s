.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0

.global linearTransform__7JALCalcFfffffb
linearTransform__7JALCalcFfffffb:
/* 80047200 00044140  EC 03 10 28 */	fsubs f0, f3, f2
/* 80047204 00044144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80047208 00044148  EC 65 20 28 */	fsubs f3, f5, f4
/* 8004720C 0004414C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80047210 00044150  EC 03 00 24 */	fdivs f0, f3, f0
/* 80047214 00044154  EC 21 20 3A */	fmadds f1, f1, f0, f4
/* 80047218 00044158  4C 82 00 20 */	bnelr 
/* 8004721C 0004415C  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 80047220 00044160  40 80 00 2C */	bge lbl_8004724C
/* 80047224 00044164  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 80047228 00044168  40 81 00 08 */	ble lbl_80047230
/* 8004722C 0004416C  48 00 00 18 */	b lbl_80047244
lbl_80047230:
/* 80047230 00044170  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 80047234 00044174  40 80 00 08 */	bge lbl_8004723C
/* 80047238 00044178  48 00 00 08 */	b lbl_80047240
lbl_8004723C:
/* 8004723C 0004417C  FC 80 08 90 */	fmr f4, f1
lbl_80047240:
/* 80047240 00044180  FC A0 20 90 */	fmr f5, f4
lbl_80047244:
/* 80047244 00044184  FC 20 28 90 */	fmr f1, f5
/* 80047248 00044188  4E 80 00 20 */	blr 
lbl_8004724C:
/* 8004724C 0004418C  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 80047250 00044190  40 81 00 08 */	ble lbl_80047258
/* 80047254 00044194  48 00 00 18 */	b lbl_8004726C
lbl_80047258:
/* 80047258 00044198  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 8004725C 0004419C  40 80 00 08 */	bge lbl_80047264
/* 80047260 000441A0  48 00 00 08 */	b lbl_80047268
lbl_80047264:
/* 80047264 000441A4  FC A0 08 90 */	fmr f5, f1
lbl_80047268:
/* 80047268 000441A8  FC 80 28 90 */	fmr f4, f5
lbl_8004726C:
/* 8004726C 000441AC  FC 20 20 90 */	fmr f1, f4
/* 80047270 000441B0  4E 80 00 20 */	blr 

.global getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign
getParamByExp__7JALCalcFffffffQ27JALCalc9CurveSign:
/* 80047274 000441B4  7C 08 02 A6 */	mflr r0
/* 80047278 000441B8  2C 03 00 01 */	cmpwi r3, 1
/* 8004727C 000441BC  90 01 00 04 */	stw r0, 4(r1)
/* 80047280 000441C0  94 21 FF 58 */	stwu r1, -0xa8(r1)
/* 80047284 000441C4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80047288 000441C8  FF E0 30 90 */	fmr f31, f6
/* 8004728C 000441CC  DB C1 00 98 */	stfd f30, 0x98(r1)
/* 80047290 000441D0  FF C0 28 90 */	fmr f30, f5
/* 80047294 000441D4  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80047298 000441D8  DB 81 00 88 */	stfd f28, 0x88(r1)
/* 8004729C 000441DC  FF 80 20 90 */	fmr f28, f4
/* 800472A0 000441E0  40 82 00 48 */	bne lbl_800472E8
/* 800472A4 000441E4  C0 82 84 10 */	lfs f4, $$2244-_SDA2_BASE_(r2)
/* 800472A8 000441E8  EC 03 10 28 */	fsubs f0, f3, f2
/* 800472AC 000441EC  EC 41 10 28 */	fsubs f2, f1, f2
/* 800472B0 000441F0  EC 3C 20 28 */	fsubs f1, f28, f4
/* 800472B4 000441F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 800472B8 000441F8  EC 22 20 3A */	fmadds f1, f2, f0, f4
/* 800472BC 000441FC  48 04 07 5D */	bl expf
/* 800472C0 00044200  FF A0 08 90 */	fmr f29, f1
/* 800472C4 00044204  FC 20 E0 90 */	fmr f1, f28
/* 800472C8 00044208  48 04 07 51 */	bl expf
/* 800472CC 0004420C  C0 62 84 14 */	lfs f3, $$2245-_SDA2_BASE_(r2)
/* 800472D0 00044210  EC 5F F0 28 */	fsubs f2, f31, f30
/* 800472D4 00044214  EC 01 18 28 */	fsubs f0, f1, f3
/* 800472D8 00044218  EC 3D 18 28 */	fsubs f1, f29, f3
/* 800472DC 0004421C  EC 02 00 24 */	fdivs f0, f2, f0
/* 800472E0 00044220  EC 21 F0 3A */	fmadds f1, f1, f0, f30
/* 800472E4 00044224  48 00 00 A8 */	b lbl_8004738C
lbl_800472E8:
/* 800472E8 00044228  2C 03 00 00 */	cmpwi r3, 0
/* 800472EC 0004422C  40 82 00 48 */	bne lbl_80047334
/* 800472F0 00044230  C0 82 84 10 */	lfs f4, $$2244-_SDA2_BASE_(r2)
/* 800472F4 00044234  EC 03 10 28 */	fsubs f0, f3, f2
/* 800472F8 00044238  EC 41 10 28 */	fsubs f2, f1, f2
/* 800472FC 0004423C  EC 24 E0 28 */	fsubs f1, f4, f28
/* 80047300 00044240  EC 01 00 24 */	fdivs f0, f1, f0
/* 80047304 00044244  EC 22 E0 3A */	fmadds f1, f2, f0, f28
/* 80047308 00044248  48 04 07 11 */	bl expf
/* 8004730C 0004424C  FF A0 08 90 */	fmr f29, f1
/* 80047310 00044250  FC 20 E0 90 */	fmr f1, f28
/* 80047314 00044254  48 04 07 05 */	bl expf
/* 80047318 00044258  C0 02 84 14 */	lfs f0, $$2245-_SDA2_BASE_(r2)
/* 8004731C 0004425C  EC 5F F0 28 */	fsubs f2, f31, f30
/* 80047320 00044260  EC 7D 08 28 */	fsubs f3, f29, f1
/* 80047324 00044264  EC 00 08 28 */	fsubs f0, f0, f1
/* 80047328 00044268  EC 02 00 24 */	fdivs f0, f2, f0
/* 8004732C 0004426C  EC 23 F0 3A */	fmadds f1, f3, f0, f30
/* 80047330 00044270  48 00 00 5C */	b lbl_8004738C
lbl_80047334:
/* 80047334 00044274  EC 9F F0 28 */	fsubs f4, f31, f30
/* 80047338 00044278  EC 03 10 28 */	fsubs f0, f3, f2
/* 8004733C 0004427C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80047340 00044280  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 80047344 00044284  EC 04 00 24 */	fdivs f0, f4, f0
/* 80047348 00044288  EC 21 F0 3A */	fmadds f1, f1, f0, f30
/* 8004734C 0004428C  40 80 00 24 */	bge lbl_80047370
/* 80047350 00044290  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80047354 00044294  40 81 00 0C */	ble lbl_80047360
/* 80047358 00044298  FC 20 F8 90 */	fmr f1, f31
/* 8004735C 0004429C  48 00 00 30 */	b lbl_8004738C
lbl_80047360:
/* 80047360 000442A0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80047364 000442A4  40 80 00 28 */	bge lbl_8004738C
/* 80047368 000442A8  FC 20 F0 90 */	fmr f1, f30
/* 8004736C 000442AC  48 00 00 20 */	b lbl_8004738C
lbl_80047370:
/* 80047370 000442B0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80047374 000442B4  40 81 00 0C */	ble lbl_80047380
/* 80047378 000442B8  FC 20 F0 90 */	fmr f1, f30
/* 8004737C 000442BC  48 00 00 10 */	b lbl_8004738C
lbl_80047380:
/* 80047380 000442C0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80047384 000442C4  40 80 00 08 */	bge lbl_8004738C
/* 80047388 000442C8  FC 20 F8 90 */	fmr f1, f31
lbl_8004738C:
/* 8004738C 000442CC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80047390 000442D0  40 81 00 0C */	ble lbl_8004739C
/* 80047394 000442D4  FC 20 F8 90 */	fmr f1, f31
/* 80047398 000442D8  48 00 00 10 */	b lbl_800473A8
lbl_8004739C:
/* 8004739C 000442DC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 800473A0 000442E0  40 80 00 08 */	bge lbl_800473A8
/* 800473A4 000442E4  FC 20 F0 90 */	fmr f1, f30
lbl_800473A8:
/* 800473A8 000442E8  80 01 00 AC */	lwz r0, 0xac(r1)
/* 800473AC 000442EC  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800473B0 000442F0  CB C1 00 98 */	lfd f30, 0x98(r1)
/* 800473B4 000442F4  7C 08 03 A6 */	mtlr r0
/* 800473B8 000442F8  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 800473BC 000442FC  CB 81 00 88 */	lfd f28, 0x88(r1)
/* 800473C0 00044300  38 21 00 A8 */	addi r1, r1, 0xa8
/* 800473C4 00044304  4E 80 00 20 */	blr 

.global getRandom__7JALCalcFfff
getRandom__7JALCalcFfff:
/* 800473C8 00044308  7C 08 02 A6 */	mflr r0
/* 800473CC 0004430C  90 01 00 04 */	stw r0, 4(r1)
/* 800473D0 00044310  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800473D4 00044314  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 800473D8 00044318  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800473DC 0004431C  DB A1 00 28 */	stfd f29, 0x28(r1)
/* 800473E0 00044320  FF A0 18 90 */	fmr f29, f3
/* 800473E4 00044324  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 800473E8 00044328  FF 80 10 90 */	fmr f28, f2
/* 800473EC 0004432C  DB 61 00 18 */	stfd f27, 0x18(r1)
/* 800473F0 00044330  FF 60 08 90 */	fmr f27, f1
/* 800473F4 00044334  C0 02 84 14 */	lfs f0, $$2245-_SDA2_BASE_(r2)
/* 800473F8 00044338  C0 62 84 18 */	lfs f3, $$2354-_SDA2_BASE_(r2)
/* 800473FC 0004433C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80047400 00044340  C0 22 84 1C */	lfs f1, $$2355-_SDA2_BASE_(r2)
/* 80047404 00044344  EF E3 07 72 */	fmuls f31, f3, f29
/* 80047408 00044348  EF C1 00 32 */	fmuls f30, f1, f0
/* 8004740C 0004434C  48 00 00 51 */	bl getRandom_0_1__7JALCalcFv
/* 80047410 00044350  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80047414 00044354  40 80 00 0C */	bge lbl_80047420
/* 80047418 00044358  FC 00 F8 90 */	fmr f0, f31
/* 8004741C 0004435C  48 00 00 08 */	b lbl_80047424
lbl_80047420:
/* 80047420 00044360  FC 00 F0 90 */	fmr f0, f30
lbl_80047424:
/* 80047424 00044364  EF 7B 00 32 */	fmuls f27, f27, f0
/* 80047428 00044368  48 00 00 35 */	bl getRandom_0_1__7JALCalcFv
/* 8004742C 0004436C  FC 40 E0 90 */	fmr f2, f28
/* 80047430 00044370  48 03 FE A9 */	bl powf
/* 80047434 00044374  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80047438 00044378  EC 21 06 F2 */	fmuls f1, f1, f27
/* 8004743C 0004437C  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 80047440 00044380  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80047444 00044384  7C 08 03 A6 */	mtlr r0
/* 80047448 00044388  CB A1 00 28 */	lfd f29, 0x28(r1)
/* 8004744C 0004438C  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 80047450 00044390  CB 61 00 18 */	lfd f27, 0x18(r1)
/* 80047454 00044394  38 21 00 40 */	addi r1, r1, 0x40
/* 80047458 00044398  4E 80 00 20 */	blr 

.global getRandom_0_1__7JALCalcFv
getRandom_0_1__7JALCalcFv:
/* 8004745C 0004439C  7C 08 02 A6 */	mflr r0
/* 80047460 000443A0  90 01 00 04 */	stw r0, 4(r1)
/* 80047464 000443A4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80047468 000443A8  88 0D 8E F0 */	lbz r0, init$357-_SDA_BASE_(r13)
/* 8004746C 000443AC  7C 00 07 75 */	extsb. r0, r0
/* 80047470 000443B0  40 82 00 18 */	bne lbl_80047488
/* 80047474 000443B4  38 6D 8E F4 */	addi r3, r13, oRandom$356-_SDA_BASE_
/* 80047478 000443B8  38 80 00 00 */	li r4, 0
/* 8004747C 000443BC  48 02 16 A1 */	bl __ct__Q25JMath13TRandom_fast_FUl
/* 80047480 000443C0  38 00 00 01 */	li r0, 1
/* 80047484 000443C4  98 0D 8E F0 */	stb r0, init$357-_SDA_BASE_(r13)
lbl_80047488:
/* 80047488 000443C8  3C 60 00 19 */	lis r3, 0x0019660D@ha
/* 8004748C 000443CC  80 8D 8E F4 */	lwz r4, oRandom$356-_SDA_BASE_(r13)
/* 80047490 000443D0  38 03 66 0D */	addi r0, r3, 0x0019660D@l
/* 80047494 000443D4  C0 02 84 14 */	lfs f0, $$2245-_SDA2_BASE_(r2)
/* 80047498 000443D8  7C 64 01 D6 */	mullw r3, r4, r0
/* 8004749C 000443DC  3C 63 3C 6F */	addis r3, r3, 0x3c6f
/* 800474A0 000443E0  38 03 F3 5F */	addi r0, r3, -3233
/* 800474A4 000443E4  90 0D 8E F4 */	stw r0, oRandom$356-_SDA_BASE_(r13)
/* 800474A8 000443E8  80 0D 8E F4 */	lwz r0, oRandom$356-_SDA_BASE_(r13)
/* 800474AC 000443EC  54 00 BA 7E */	srwi r0, r0, 9
/* 800474B0 000443F0  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 800474B4 000443F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 800474B8 000443F8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800474BC 000443FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800474C0 00044400  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800474C4 00044404  38 21 00 18 */	addi r1, r1, 0x18
/* 800474C8 00044408  7C 08 03 A6 */	mtlr r0
/* 800474CC 0004440C  4E 80 00 20 */	blr 

.global getDist__7JALCalcFP3VecP3Vec
getDist__7JALCalcFP3VecP3Vec:
/* 800474D0 00044410  7C 08 02 A6 */	mflr r0
/* 800474D4 00044414  90 01 00 04 */	stw r0, 4(r1)
/* 800474D8 00044418  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800474DC 0004441C  48 00 00 6D */	bl getDistPow__7JALCalcFP3VecP3Vec
/* 800474E0 00044420  C0 02 84 10 */	lfs f0, $$2244-_SDA2_BASE_(r2)
/* 800474E4 00044424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800474E8 00044428  40 81 00 50 */	ble lbl_80047538
/* 800474EC 0004442C  FC 40 08 34 */	frsqrte f2, f1
/* 800474F0 00044430  C8 82 84 20 */	lfd f4, $$2380-_SDA2_BASE_(r2)
/* 800474F4 00044434  C8 62 84 28 */	lfd f3, $$2399-_SDA2_BASE_(r2)
/* 800474F8 00044438  FC 02 00 B2 */	fmul f0, f2, f2
/* 800474FC 0004443C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80047500 00044440  FC 01 18 3C */	fnmsub f0, f1, f0, f3
/* 80047504 00044444  FC 42 00 32 */	fmul f2, f2, f0
/* 80047508 00044448  FC 02 00 B2 */	fmul f0, f2, f2
/* 8004750C 0004444C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80047510 00044450  FC 01 18 3C */	fnmsub f0, f1, f0, f3
/* 80047514 00044454  FC 42 00 32 */	fmul f2, f2, f0
/* 80047518 00044458  FC 02 00 B2 */	fmul f0, f2, f2
/* 8004751C 0004445C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80047520 00044460  FC 01 18 3C */	fnmsub f0, f1, f0, f3
/* 80047524 00044464  FC 02 00 32 */	fmul f0, f2, f0
/* 80047528 00044468  FC 01 00 32 */	fmul f0, f1, f0
/* 8004752C 0004446C  FC 00 00 18 */	frsp f0, f0
/* 80047530 00044470  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80047534 00044474  C0 21 00 10 */	lfs f1, 0x10(r1)
lbl_80047538:
/* 80047538 00044478  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8004753C 0004447C  38 21 00 18 */	addi r1, r1, 0x18
/* 80047540 00044480  7C 08 03 A6 */	mtlr r0
/* 80047544 00044484  4E 80 00 20 */	blr 

.global getDistPow__7JALCalcFP3VecP3Vec
getDistPow__7JALCalcFP3VecP3Vec:
/* 80047548 00044488  7C 08 02 A6 */	mflr r0
/* 8004754C 0004448C  90 01 00 04 */	stw r0, 4(r1)
/* 80047550 00044490  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80047554 00044494  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80047558 00044498  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8004755C 0004449C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80047560 000444A0  7C 9F 23 79 */	or. r31, r4, r4
/* 80047564 000444A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80047568 000444A8  3B C3 00 00 */	addi r30, r3, 0
/* 8004756C 000444AC  41 82 00 54 */	beq lbl_800475C0
/* 80047570 000444B0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80047574 000444B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80047578 000444B8  C0 42 84 18 */	lfs f2, $$2354-_SDA2_BASE_(r2)
/* 8004757C 000444BC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80047580 000444C0  48 03 FD 59 */	bl powf
/* 80047584 000444C4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80047588 000444C8  FF E0 08 90 */	fmr f31, f1
/* 8004758C 000444CC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80047590 000444D0  C0 42 84 18 */	lfs f2, $$2354-_SDA2_BASE_(r2)
/* 80047594 000444D4  EC 23 00 28 */	fsubs f1, f3, f0
/* 80047598 000444D8  48 03 FD 41 */	bl powf
/* 8004759C 000444DC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 800475A0 000444E0  FF C0 08 90 */	fmr f30, f1
/* 800475A4 000444E4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800475A8 000444E8  C0 42 84 18 */	lfs f2, $$2354-_SDA2_BASE_(r2)
/* 800475AC 000444EC  EC 23 00 28 */	fsubs f1, f3, f0
/* 800475B0 000444F0  48 03 FD 29 */	bl powf
/* 800475B4 000444F4  EC 1E F8 2A */	fadds f0, f30, f31
/* 800475B8 000444F8  EC 21 00 2A */	fadds f1, f1, f0
/* 800475BC 000444FC  48 00 00 40 */	b lbl_800475FC
lbl_800475C0:
/* 800475C0 00044500  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800475C4 00044504  C0 42 84 18 */	lfs f2, $$2354-_SDA2_BASE_(r2)
/* 800475C8 00044508  48 03 FD 11 */	bl powf
/* 800475CC 0004450C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 800475D0 00044510  FF C0 08 90 */	fmr f30, f1
/* 800475D4 00044514  C0 42 84 18 */	lfs f2, $$2354-_SDA2_BASE_(r2)
/* 800475D8 00044518  FC 20 00 90 */	fmr f1, f0
/* 800475DC 0004451C  48 03 FC FD */	bl powf
/* 800475E0 00044520  C0 1E 00 08 */	lfs f0, 8(r30)
/* 800475E4 00044524  FF E0 08 90 */	fmr f31, f1
/* 800475E8 00044528  C0 42 84 18 */	lfs f2, $$2354-_SDA2_BASE_(r2)
/* 800475EC 0004452C  FC 20 00 90 */	fmr f1, f0
/* 800475F0 00044530  48 03 FC E9 */	bl powf
/* 800475F4 00044534  EC 1F F0 2A */	fadds f0, f31, f30
/* 800475F8 00044538  EC 21 00 2A */	fadds f1, f1, f0
lbl_800475FC:
/* 800475FC 0004453C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80047600 00044540  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 80047604 00044544  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80047608 00044548  7C 08 03 A6 */	mtlr r0
/* 8004760C 0004454C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80047610 00044550  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80047614 00044554  38 21 00 40 */	addi r1, r1, 0x40
/* 80047618 00044558  4E 80 00 20 */	blr 