.data
min_caml_2pi:
	.long	0x40c90fdb
min_caml_pi:
	.long	0x40490fdb
min_caml_half_pi:
	.long	0x3fc90fdb
min_caml_quarter_pi:
	.long	0x3f490fdb
min_caml_float_0:
	.long	0x00000000
min_caml_float_1:
	.long	0x3f800000
min_caml_float_2:
	.long	0x40000000
min_caml_float_minus_1:
	.long	0xbf800000
min_caml_float_half:
	.long	0x3f000000
min_caml_read_float_c1:
	.long	0x3dcccccd
min_caml_float_int_c1:
	.long	0xcb000000
min_caml_float_int_c2:
	.long	0x4b000000
min_caml_kernel_cos_c1:
	.long	0xbf000000
min_caml_kernel_cos_c2:
	.long	0x3d2aa789
min_caml_kernel_cos_c3:
	.long	0xbab38106
min_caml_kernel_sin_c1:
	.long	0xbe2aaaac
min_caml_kernel_sin_c2:
	.long	0x3c088666
min_caml_kernel_sin_c3:
	.long	0xb94d64b6
min_caml_atan_c1:
	.long	0x3ee00000
min_caml_atan_c2:
	.long	0x401c0000
min_caml_kernel_atan_c1:
	.long	0xbeaaaaaa
min_caml_kernel_atan_c2:
	.long	0x3e4ccccd
min_caml_kernel_atan_c3:
	.long	0xbe124925
min_caml_kernel_atan_c4:
	.long	0x3de38e38
min_caml_kernel_atan_c5:
	.long	0xbdb7d66e
min_caml_kernel_atan_c6:
	.long	0x3d75e7c5
l.8809:	# 128.000000
	.long	0x43000000
l.8745:	# 0.900000
	.long	0x3f666666
l.8743:	# 0.200000
	.long	0x3e4ccccd
l.8716:	# 150.000000
	.long	0x43160000
l.8714:	# -150.000000
	.long	0xc3160000
l.8707:	# 0.100000
	.long	0x3dcccccd
l.8705:	# -2.000000
	.long	0xc0000000
l.8703:	# 0.003906
	.long	0x3b800000
l.8690:	# 20.000000
	.long	0x41a00000
l.8688:	# 0.050000
	.long	0x3d4ccccd
l.8683:	# 0.250000
	.long	0x3e800000
l.8677:	# 10.000000
	.long	0x41200000
l.8675:	# 0.300000
	.long	0x3e99999a
l.8673:	# 255.000000
	.long	0x437f0000
l.8667:	# 0.150000
	.long	0x3e19999a
l.8661:	# 3.141593
	.long	0x40490fdb
l.8659:	# 30.000000
	.long	0x41f00000
l.8657:	# 15.000000
	.long	0x41700000
l.8655:	# 0.000100
	.long	0x38d1b717
l.8639:	# 100000000.000000
	.long	0x4cbebc20
l.8636:	# 1000000000.000000
	.long	0x4e6e6b28
l.8632:	# -0.100000
	.long	0xbdcccccd
l.8630:	# 0.010000
	.long	0x3c23d70a
l.8628:	# -0.200000
	.long	0xbe4ccccd
l.8586:	# 0.500000
	.long	0x3f000000
l.8536:	# 2.000000
	.long	0x40000000
l.8530:	# -200.000000
	.long	0xc3480000
l.8528:	# 200.000000
	.long	0x43480000
l.8525:	# 0.017453
	.long	0x3c8efa35
l.8522:	# -1.000000
	.long	0xbf800000
l.8520:	# 1.000000
	.long	0x3f800000
l.8518:	# 0.000000
	.long	0x0
.text
veccpy.2501:
	addi	%r8 %r0 $0	# 165
	addi	%r9 %r0 $0	# 165
	add	%r25 %r3 %r9	# 165
	fld	0(%r25) %f0	# 165
	add	%r25 %r2 %r8	# 165
	fst	0(%r25) %f0	# 165
	addi	%r8 %r0 $1	# 166
	addi	%r9 %r0 $1	# 166
	add	%r25 %r3 %r9	# 166
	fld	0(%r25) %f0	# 166
	add	%r25 %r2 %r8	# 166
	fst	0(%r25) %f0	# 166
	addi	%r8 %r0 $2	# 167
	addi	%r9 %r0 $2	# 167
	add	%r25 %r3 %r9	# 167
	fld	0(%r25) %f0	# 167
	add	%r25 %r2 %r8	# 167
	fst	0(%r25) %f0	# 167
	jr	%r31	# 167
vecunit_sgn.2509:
	addi	%r8 %r0 $0	# 185
	add	%r25 %r2 %r8	# 185
	fld	0(%r25) %f0	# 185
	fmul	%f0 %f0 %f0	# 94
	addi	%r8 %r0 $1	# 185
	add	%r25 %r2 %r8	# 185
	fld	0(%r25) %f1	# 185
	fmul	%f1 %f1 %f1	# 94
	fadd	%f0 %f0 %f1	# 185
	addi	%r8 %r0 $2	# 185
	add	%r25 %r2 %r8	# 185
	fld	0(%r25) %f1	# 185
	fmul	%f1 %f1 %f1	# 94
	fadd	%f0 %f0 %f1	# 185
	st	-1(%r29) %r2	# 185
	st	-2(%r29) %r3	# 185
	fsqrt	%f0 %f0	# 185
	addi	%r2 %r0 l.8518	# 92
	fld	0(%r2) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10405	# 92
	addi	%r2 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10406	# 92
bclt_true.10405:
	addi	%r2 %r0 $1	# 92
bclt_cont.10406:
	beq	%r2 %r0 beq_true.10407	# 186
	addi	%r2 %r0 l.8520	# 186
	fld	0(%r2) %f1	# 186
	beq	%r0 %r0 beq_cont.10408	# 186
beq_true.10407:
	ld	-2(%r29) %r2	# 186
	beq	%r2 %r0 beq_true.10409	# 186
	addi	%r2 %r0 l.8522	# 186
	fld	0(%r2) %f1	# 186
	finv	%f31 %f0	# 186
	fmul	%f1 %f1 %f31	# 186
	beq	%r0 %r0 beq_cont.10410	# 186
beq_true.10409:
	addi	%r2 %r0 l.8520	# 186
	fld	0(%r2) %f1	# 186
	finv	%f31 %f0	# 186
	fmul	%f1 %f1 %f31	# 186
beq_cont.10410:
beq_cont.10408:
	addi	%r2 %r0 $0	# 187
	addi	%r3 %r0 $0	# 187
	ld	-1(%r29) %r8	# 187
	add	%r25 %r8 %r3	# 187
	fld	0(%r25) %f0	# 187
	fmul	%f0 %f0 %f1	# 187
	add	%r25 %r8 %r2	# 187
	fst	0(%r25) %f0	# 187
	addi	%r2 %r0 $1	# 188
	addi	%r3 %r0 $1	# 188
	add	%r25 %r8 %r3	# 188
	fld	0(%r25) %f0	# 188
	fmul	%f0 %f0 %f1	# 188
	add	%r25 %r8 %r2	# 188
	fst	0(%r25) %f0	# 188
	addi	%r2 %r0 $2	# 189
	addi	%r3 %r0 $2	# 189
	add	%r25 %r8 %r3	# 189
	fld	0(%r25) %f0	# 189
	fmul	%f0 %f0 %f1	# 189
	add	%r25 %r8 %r2	# 189
	fst	0(%r25) %f0	# 189
	jr	%r31	# 189
veciprod.2512:
	addi	%r8 %r0 $0	# 194
	add	%r25 %r2 %r8	# 194
	fld	0(%r25) %f0	# 194
	addi	%r8 %r0 $0	# 194
	add	%r25 %r3 %r8	# 194
	fld	0(%r25) %f1	# 194
	fmul	%f0 %f0 %f1	# 194
	addi	%r8 %r0 $1	# 194
	add	%r25 %r2 %r8	# 194
	fld	0(%r25) %f1	# 194
	addi	%r8 %r0 $1	# 194
	add	%r25 %r3 %r8	# 194
	fld	0(%r25) %f2	# 194
	fmul	%f1 %f1 %f2	# 194
	fadd	%f0 %f0 %f1	# 194
	addi	%r8 %r0 $2	# 194
	add	%r25 %r2 %r8	# 194
	fld	0(%r25) %f1	# 194
	addi	%r2 %r0 $2	# 194
	add	%r25 %r3 %r2	# 194
	fld	0(%r25) %f2	# 194
	fmul	%f1 %f1 %f2	# 194
	fadd	%f0 %f0 %f1	# 194
	jr	%r31	# 194
veciprod2.2515:
	addi	%r3 %r0 $0	# 199
	add	%r25 %r2 %r3	# 199
	fld	0(%r25) %f3	# 199
	fmul	%f3 %f3 %f0	# 199
	addi	%r3 %r0 $1	# 199
	add	%r25 %r2 %r3	# 199
	fld	0(%r25) %f0	# 199
	fmul	%f0 %f0 %f1	# 199
	fadd	%f3 %f3 %f0	# 199
	addi	%r3 %r0 $2	# 199
	add	%r25 %r2 %r3	# 199
	fld	0(%r25) %f0	# 199
	fmul	%f0 %f0 %f2	# 199
	fadd	%f0 %f3 %f0	# 199
	jr	%r31	# 199
vecaccum.2520:
	addi	%r8 %r0 $0	# 204
	addi	%r9 %r0 $0	# 204
	add	%r25 %r2 %r9	# 204
	fld	0(%r25) %f1	# 204
	addi	%r9 %r0 $0	# 204
	add	%r25 %r3 %r9	# 204
	fld	0(%r25) %f2	# 204
	fmul	%f2 %f0 %f2	# 204
	fadd	%f1 %f1 %f2	# 204
	add	%r25 %r2 %r8	# 204
	fst	0(%r25) %f1	# 204
	addi	%r8 %r0 $1	# 205
	addi	%r9 %r0 $1	# 205
	add	%r25 %r2 %r9	# 205
	fld	0(%r25) %f1	# 205
	addi	%r9 %r0 $1	# 205
	add	%r25 %r3 %r9	# 205
	fld	0(%r25) %f2	# 205
	fmul	%f2 %f0 %f2	# 205
	fadd	%f1 %f1 %f2	# 205
	add	%r25 %r2 %r8	# 205
	fst	0(%r25) %f1	# 205
	addi	%r8 %r0 $2	# 206
	addi	%r9 %r0 $2	# 206
	add	%r25 %r2 %r9	# 206
	fld	0(%r25) %f1	# 206
	addi	%r9 %r0 $2	# 206
	add	%r25 %r3 %r9	# 206
	fld	0(%r25) %f2	# 206
	fmul	%f0 %f0 %f2	# 206
	fadd	%f1 %f1 %f0	# 206
	add	%r25 %r2 %r8	# 206
	fst	0(%r25) %f1	# 206
	jr	%r31	# 206
vecadd.2524:
	addi	%r8 %r0 $0	# 211
	addi	%r9 %r0 $0	# 211
	add	%r25 %r2 %r9	# 211
	fld	0(%r25) %f0	# 211
	addi	%r9 %r0 $0	# 211
	add	%r25 %r3 %r9	# 211
	fld	0(%r25) %f1	# 211
	fadd	%f0 %f0 %f1	# 211
	add	%r25 %r2 %r8	# 211
	fst	0(%r25) %f0	# 211
	addi	%r8 %r0 $1	# 212
	addi	%r9 %r0 $1	# 212
	add	%r25 %r2 %r9	# 212
	fld	0(%r25) %f0	# 212
	addi	%r9 %r0 $1	# 212
	add	%r25 %r3 %r9	# 212
	fld	0(%r25) %f1	# 212
	fadd	%f0 %f0 %f1	# 212
	add	%r25 %r2 %r8	# 212
	fst	0(%r25) %f0	# 212
	addi	%r8 %r0 $2	# 213
	addi	%r9 %r0 $2	# 213
	add	%r25 %r2 %r9	# 213
	fld	0(%r25) %f0	# 213
	addi	%r9 %r0 $2	# 213
	add	%r25 %r3 %r9	# 213
	fld	0(%r25) %f1	# 213
	fadd	%f0 %f0 %f1	# 213
	add	%r25 %r2 %r8	# 213
	fst	0(%r25) %f0	# 213
	jr	%r31	# 213
vecscale.2530:
	addi	%r3 %r0 $0	# 225
	addi	%r8 %r0 $0	# 225
	add	%r25 %r2 %r8	# 225
	fld	0(%r25) %f1	# 225
	fmul	%f1 %f1 %f0	# 225
	add	%r25 %r2 %r3	# 225
	fst	0(%r25) %f1	# 225
	addi	%r3 %r0 $1	# 226
	addi	%r8 %r0 $1	# 226
	add	%r25 %r2 %r8	# 226
	fld	0(%r25) %f1	# 226
	fmul	%f1 %f1 %f0	# 226
	add	%r25 %r2 %r3	# 226
	fst	0(%r25) %f1	# 226
	addi	%r3 %r0 $2	# 227
	addi	%r8 %r0 $2	# 227
	add	%r25 %r2 %r8	# 227
	fld	0(%r25) %f1	# 227
	fmul	%f1 %f1 %f0	# 227
	add	%r25 %r2 %r3	# 227
	fst	0(%r25) %f1	# 227
	jr	%r31	# 227
vecaccumv.2533:
	addi	%r9 %r0 $0	# 232
	addi	%r10 %r0 $0	# 232
	add	%r25 %r2 %r10	# 232
	fld	0(%r25) %f0	# 232
	addi	%r10 %r0 $0	# 232
	add	%r25 %r3 %r10	# 232
	fld	0(%r25) %f1	# 232
	addi	%r10 %r0 $0	# 232
	add	%r25 %r8 %r10	# 232
	fld	0(%r25) %f2	# 232
	fmul	%f1 %f1 %f2	# 232
	fadd	%f0 %f0 %f1	# 232
	add	%r25 %r2 %r9	# 232
	fst	0(%r25) %f0	# 232
	addi	%r9 %r0 $1	# 233
	addi	%r10 %r0 $1	# 233
	add	%r25 %r2 %r10	# 233
	fld	0(%r25) %f0	# 233
	addi	%r10 %r0 $1	# 233
	add	%r25 %r3 %r10	# 233
	fld	0(%r25) %f1	# 233
	addi	%r10 %r0 $1	# 233
	add	%r25 %r8 %r10	# 233
	fld	0(%r25) %f2	# 233
	fmul	%f1 %f1 %f2	# 233
	fadd	%f0 %f0 %f1	# 233
	add	%r25 %r2 %r9	# 233
	fst	0(%r25) %f0	# 233
	addi	%r9 %r0 $2	# 234
	addi	%r10 %r0 $2	# 234
	add	%r25 %r2 %r10	# 234
	fld	0(%r25) %f0	# 234
	addi	%r10 %r0 $2	# 234
	add	%r25 %r3 %r10	# 234
	fld	0(%r25) %f1	# 234
	addi	%r3 %r0 $2	# 234
	add	%r25 %r8 %r3	# 234
	fld	0(%r25) %f2	# 234
	fmul	%f1 %f1 %f2	# 234
	fadd	%f0 %f0 %f1	# 234
	add	%r25 %r2 %r9	# 234
	fst	0(%r25) %f0	# 234
	jr	%r31	# 234
read_screen_settings.2610:
	ld	5(%r16) %r2	# 0
	ld	4(%r16) %r3	# 0
	ld	3(%r16) %r8	# 0
	ld	2(%r16) %r9	# 0
	ld	1(%r16) %r10	# 0
	addi	%r11 %r0 $0	# 584
	st	-1(%r29) %r2	# 584
	st	-2(%r29) %r8	# 584
	st	-3(%r29) %r9	# 584
	st	-4(%r29) %r3	# 584
	st	-5(%r29) %r11	# 584
	st	-6(%r29) %r10	# 584
	addi	%r29 %r29 $-7	# 584
	st	0(%r29) %r31	# 584
	jal	min_caml_read_float	# 584
	ld	0(%r29) %r31	# 584
	addi	%r29 %r29 $7	# 584
	ld	-5(%r29) %r2	# 584
	ld	-6(%r29) %r3	# 584
	add	%r25 %r3 %r2	# 584
	fst	0(%r25) %f0	# 584
	addi	%r2 %r0 $1	# 585
	st	-7(%r29) %r2	# 585
	addi	%r29 %r29 $-8	# 585
	st	0(%r29) %r31	# 585
	jal	min_caml_read_float	# 585
	ld	0(%r29) %r31	# 585
	addi	%r29 %r29 $8	# 585
	ld	-7(%r29) %r2	# 585
	ld	-6(%r29) %r3	# 585
	add	%r25 %r3 %r2	# 585
	fst	0(%r25) %f0	# 585
	addi	%r2 %r0 $2	# 586
	st	-8(%r29) %r2	# 586
	addi	%r29 %r29 $-9	# 586
	st	0(%r29) %r31	# 586
	jal	min_caml_read_float	# 586
	ld	0(%r29) %r31	# 586
	addi	%r29 %r29 $9	# 586
	ld	-8(%r29) %r2	# 586
	ld	-6(%r29) %r3	# 586
	add	%r25 %r3 %r2	# 586
	fst	0(%r25) %f0	# 586
	addi	%r29 %r29 $-9	# 588
	st	0(%r29) %r31	# 588
	jal	min_caml_read_float	# 588
	ld	0(%r29) %r31	# 588
	addi	%r29 %r29 $9	# 588
	addi	%r2 %r0 l.8525	# 577
	fld	0(%r2) %f1	# 577
	fmul	%f0 %f0 %f1	# 577
	fst	-9(%r29) %f0	# 589
	addi	%r29 %r29 $-10	# 589
	st	0(%r29) %r31	# 589
	jal	min_caml_cos	# 589
	ld	0(%r29) %r31	# 589
	addi	%r29 %r29 $10	# 589
	fld	-9(%r29) %f1	# 590
	fst	-10(%r29) %f0	# 590
	fmov	%f0 %f1	# 590
	addi	%r29 %r29 $-11	# 590
	st	0(%r29) %r31	# 590
	jal	min_caml_sin	# 590
	ld	0(%r29) %r31	# 590
	addi	%r29 %r29 $11	# 590
	fst	-11(%r29) %f0	# 591
	addi	%r29 %r29 $-12	# 591
	st	0(%r29) %r31	# 591
	jal	min_caml_read_float	# 591
	ld	0(%r29) %r31	# 591
	addi	%r29 %r29 $12	# 591
	addi	%r2 %r0 l.8525	# 577
	fld	0(%r2) %f1	# 577
	fmul	%f0 %f0 %f1	# 577
	fst	-12(%r29) %f0	# 592
	addi	%r29 %r29 $-13	# 592
	st	0(%r29) %r31	# 592
	jal	min_caml_cos	# 592
	ld	0(%r29) %r31	# 592
	addi	%r29 %r29 $13	# 592
	fld	-12(%r29) %f1	# 593
	fst	-13(%r29) %f0	# 593
	fmov	%f0 %f1	# 593
	addi	%r29 %r29 $-14	# 593
	st	0(%r29) %r31	# 593
	jal	min_caml_sin	# 593
	ld	0(%r29) %r31	# 593
	addi	%r29 %r29 $14	# 593
	addi	%r2 %r0 $0	# 595
	fld	-10(%r29) %f1	# 595
	fmul	%f2 %f1 %f0	# 595
	addi	%r3 %r0 l.8528	# 595
	fld	0(%r3) %f3	# 595
	fmul	%f2 %f2 %f3	# 595
	ld	-4(%r29) %r3	# 595
	add	%r25 %r3 %r2	# 595
	fst	0(%r25) %f2	# 595
	addi	%r2 %r0 $1	# 596
	addi	%r8 %r0 l.8530	# 596
	fld	0(%r8) %f2	# 596
	fld	-11(%r29) %f3	# 596
	fmul	%f2 %f3 %f2	# 596
	add	%r25 %r3 %r2	# 596
	fst	0(%r25) %f2	# 596
	addi	%r2 %r0 $2	# 597
	fld	-13(%r29) %f2	# 597
	fmul	%f4 %f1 %f2	# 597
	addi	%r8 %r0 l.8528	# 597
	fld	0(%r8) %f5	# 597
	fmul	%f4 %f4 %f5	# 597
	add	%r25 %r3 %r2	# 597
	fst	0(%r25) %f4	# 597
	addi	%r2 %r0 $0	# 599
	ld	-3(%r29) %r8	# 599
	add	%r25 %r8 %r2	# 599
	fst	0(%r25) %f2	# 599
	addi	%r2 %r0 $1	# 600
	addi	%r9 %r0 l.8518	# 600
	fld	0(%r9) %f4	# 600
	add	%r25 %r8 %r2	# 600
	fst	0(%r25) %f4	# 600
	addi	%r2 %r0 $2	# 601
	fneg	%f4 %f0	# 95
	add	%r25 %r8 %r2	# 601
	fst	0(%r25) %f4	# 601
	addi	%r2 %r0 $0	# 603
	fneg	%f4 %f3	# 95
	fmul	%f4 %f4 %f0	# 603
	ld	-2(%r29) %r8	# 603
	add	%r25 %r8 %r2	# 603
	fst	0(%r25) %f4	# 603
	addi	%r2 %r0 $1	# 604
	fneg	%f1 %f1	# 95
	add	%r25 %r8 %r2	# 604
	fst	0(%r25) %f1	# 604
	addi	%r2 %r0 $2	# 605
	fneg	%f3 %f3	# 95
	fmul	%f3 %f3 %f2	# 605
	add	%r25 %r8 %r2	# 605
	fst	0(%r25) %f3	# 605
	addi	%r2 %r0 $0	# 607
	addi	%r8 %r0 $0	# 607
	ld	-6(%r29) %r9	# 607
	add	%r25 %r9 %r8	# 607
	fld	0(%r25) %f0	# 607
	addi	%r8 %r0 $0	# 607
	add	%r25 %r3 %r8	# 607
	fld	0(%r25) %f1	# 607
	fneg	%f31 %f1	# 607
	fadd	%f0 %f0 %f31	# 607
	ld	-1(%r29) %r8	# 607
	add	%r25 %r8 %r2	# 607
	fst	0(%r25) %f0	# 607
	addi	%r2 %r0 $1	# 608
	addi	%r10 %r0 $1	# 608
	add	%r25 %r9 %r10	# 608
	fld	0(%r25) %f0	# 608
	addi	%r10 %r0 $1	# 608
	add	%r25 %r3 %r10	# 608
	fld	0(%r25) %f1	# 608
	fneg	%f31 %f1	# 608
	fadd	%f0 %f0 %f31	# 608
	add	%r25 %r8 %r2	# 608
	fst	0(%r25) %f0	# 608
	addi	%r2 %r0 $2	# 609
	addi	%r10 %r0 $2	# 609
	add	%r25 %r9 %r10	# 609
	fld	0(%r25) %f0	# 609
	addi	%r9 %r0 $2	# 609
	add	%r25 %r3 %r9	# 609
	fld	0(%r25) %f1	# 609
	fneg	%f31 %f1	# 609
	fadd	%f0 %f0 %f31	# 609
	add	%r25 %r8 %r2	# 609
	fst	0(%r25) %f0	# 609
	jr	%r31	# 609
read_light.2612:
	ld	2(%r16) %r2	# 0
	ld	1(%r16) %r3	# 0
	st	-1(%r29) %r3	# 616
	st	-2(%r29) %r2	# 616
	addi	%r29 %r29 $-3	# 616
	st	0(%r29) %r31	# 616
	jal	min_caml_read_int	# 616
	ld	0(%r29) %r31	# 616
	addi	%r29 %r29 $3	# 616
	addi	%r29 %r29 $-3	# 619
	st	0(%r29) %r31	# 619
	jal	min_caml_read_float	# 619
	ld	0(%r29) %r31	# 619
	addi	%r29 %r29 $3	# 619
	addi	%r2 %r0 l.8525	# 577
	fld	0(%r2) %f1	# 577
	fmul	%f0 %f0 %f1	# 577
	fst	-3(%r29) %f0	# 620
	addi	%r29 %r29 $-4	# 620
	st	0(%r29) %r31	# 620
	jal	min_caml_sin	# 620
	ld	0(%r29) %r31	# 620
	addi	%r29 %r29 $4	# 620
	addi	%r2 %r0 $1	# 621
	fneg	%f0 %f0	# 95
	ld	-2(%r29) %r3	# 621
	add	%r25 %r3 %r2	# 621
	fst	0(%r25) %f0	# 621
	addi	%r29 %r29 $-4	# 622
	st	0(%r29) %r31	# 622
	jal	min_caml_read_float	# 622
	ld	0(%r29) %r31	# 622
	addi	%r29 %r29 $4	# 622
	addi	%r2 %r0 l.8525	# 577
	fld	0(%r2) %f1	# 577
	fmul	%f0 %f0 %f1	# 577
	fld	-3(%r29) %f1	# 623
	fst	-4(%r29) %f0	# 623
	fmov	%f0 %f1	# 623
	addi	%r29 %r29 $-5	# 623
	st	0(%r29) %r31	# 623
	jal	min_caml_cos	# 623
	ld	0(%r29) %r31	# 623
	addi	%r29 %r29 $5	# 623
	fld	-4(%r29) %f1	# 624
	fst	-5(%r29) %f0	# 624
	fmov	%f0 %f1	# 624
	addi	%r29 %r29 $-6	# 624
	st	0(%r29) %r31	# 624
	jal	min_caml_sin	# 624
	ld	0(%r29) %r31	# 624
	addi	%r29 %r29 $6	# 624
	addi	%r2 %r0 $0	# 625
	fld	-5(%r29) %f1	# 625
	fmul	%f0 %f1 %f0	# 625
	ld	-2(%r29) %r3	# 625
	add	%r25 %r3 %r2	# 625
	fst	0(%r25) %f0	# 625
	fld	-4(%r29) %f0	# 626
	addi	%r29 %r29 $-6	# 626
	st	0(%r29) %r31	# 626
	jal	min_caml_cos	# 626
	ld	0(%r29) %r31	# 626
	addi	%r29 %r29 $6	# 626
	addi	%r2 %r0 $2	# 627
	fld	-5(%r29) %f1	# 627
	fmul	%f1 %f1 %f0	# 627
	ld	-2(%r29) %r3	# 627
	add	%r25 %r3 %r2	# 627
	fst	0(%r25) %f1	# 627
	addi	%r2 %r0 $0	# 628
	st	-6(%r29) %r2	# 628
	addi	%r29 %r29 $-7	# 628
	st	0(%r29) %r31	# 628
	jal	min_caml_read_float	# 628
	ld	0(%r29) %r31	# 628
	addi	%r29 %r29 $7	# 628
	ld	-6(%r29) %r2	# 628
	ld	-1(%r29) %r3	# 628
	add	%r25 %r3 %r2	# 628
	fst	0(%r25) %f0	# 628
	jr	%r31	# 628
rotate_quadratic_matrix.2614:
	addi	%r8 %r0 $0	# 638
	add	%r25 %r3 %r8	# 638
	fld	0(%r25) %f0	# 638
	st	-1(%r29) %r2	# 638
	st	-2(%r29) %r3	# 638
	addi	%r29 %r29 $-3	# 638
	st	0(%r29) %r31	# 638
	jal	min_caml_cos	# 638
	ld	0(%r29) %r31	# 638
	addi	%r29 %r29 $3	# 638
	addi	%r2 %r0 $0	# 639
	ld	-2(%r29) %r3	# 639
	add	%r25 %r3 %r2	# 639
	fld	0(%r25) %f1	# 639
	fst	-3(%r29) %f0	# 639
	fmov	%f0 %f1	# 639
	addi	%r29 %r29 $-4	# 639
	st	0(%r29) %r31	# 639
	jal	min_caml_sin	# 639
	ld	0(%r29) %r31	# 639
	addi	%r29 %r29 $4	# 639
	addi	%r2 %r0 $1	# 640
	ld	-2(%r29) %r3	# 640
	add	%r25 %r3 %r2	# 640
	fld	0(%r25) %f1	# 640
	fst	-4(%r29) %f0	# 640
	fmov	%f0 %f1	# 640
	addi	%r29 %r29 $-5	# 640
	st	0(%r29) %r31	# 640
	jal	min_caml_cos	# 640
	ld	0(%r29) %r31	# 640
	addi	%r29 %r29 $5	# 640
	addi	%r2 %r0 $1	# 641
	ld	-2(%r29) %r3	# 641
	add	%r25 %r3 %r2	# 641
	fld	0(%r25) %f1	# 641
	fst	-5(%r29) %f0	# 641
	fmov	%f0 %f1	# 641
	addi	%r29 %r29 $-6	# 641
	st	0(%r29) %r31	# 641
	jal	min_caml_sin	# 641
	ld	0(%r29) %r31	# 641
	addi	%r29 %r29 $6	# 641
	addi	%r2 %r0 $2	# 642
	ld	-2(%r29) %r3	# 642
	add	%r25 %r3 %r2	# 642
	fld	0(%r25) %f1	# 642
	fst	-6(%r29) %f0	# 642
	fmov	%f0 %f1	# 642
	addi	%r29 %r29 $-7	# 642
	st	0(%r29) %r31	# 642
	jal	min_caml_cos	# 642
	ld	0(%r29) %r31	# 642
	addi	%r29 %r29 $7	# 642
	addi	%r2 %r0 $2	# 643
	ld	-2(%r29) %r3	# 643
	add	%r25 %r3 %r2	# 643
	fld	0(%r25) %f1	# 643
	fst	-7(%r29) %f0	# 643
	fmov	%f0 %f1	# 643
	addi	%r29 %r29 $-8	# 643
	st	0(%r29) %r31	# 643
	jal	min_caml_sin	# 643
	ld	0(%r29) %r31	# 643
	addi	%r29 %r29 $8	# 643
	fld	-7(%r29) %f1	# 645
	fld	-5(%r29) %f2	# 645
	fmul	%f3 %f2 %f1	# 645
	fld	-6(%r29) %f4	# 646
	fld	-4(%r29) %f5	# 646
	fmul	%f6 %f5 %f4	# 646
	fmul	%f6 %f6 %f1	# 646
	fld	-3(%r29) %f7	# 646
	fmul	%f8 %f7 %f0	# 646
	fneg	%f31 %f8	# 646
	fadd	%f6 %f6 %f31	# 646
	fmul	%f8 %f7 %f4	# 647
	fmul	%f8 %f8 %f1	# 647
	fmul	%f9 %f5 %f0	# 647
	fadd	%f8 %f8 %f9	# 647
	fmul	%f9 %f2 %f0	# 649
	fmul	%f10 %f5 %f4	# 650
	fmul	%f10 %f10 %f0	# 650
	fmul	%f11 %f7 %f1	# 650
	fadd	%f10 %f10 %f11	# 650
	fmul	%f11 %f7 %f4	# 651
	fmul	%f11 %f11 %f0	# 651
	fmul	%f1 %f5 %f1	# 651
	fneg	%f31 %f1	# 651
	fadd	%f11 %f11 %f31	# 651
	fneg	%f4 %f4	# 95
	fmul	%f5 %f5 %f2	# 654
	fmul	%f7 %f7 %f2	# 655
	addi	%r2 %r0 $0	# 658
	ld	-1(%r29) %r3	# 658
	add	%r25 %r3 %r2	# 658
	fld	0(%r25) %f0	# 658
	addi	%r2 %r0 $1	# 659
	add	%r25 %r3 %r2	# 659
	fld	0(%r25) %f1	# 659
	addi	%r2 %r0 $2	# 660
	add	%r25 %r3 %r2	# 660
	fld	0(%r25) %f2	# 660
	addi	%r2 %r0 $0	# 665
	fmul	%f12 %f3 %f3	# 94
	fmul	%f12 %f0 %f12	# 665
	fmul	%f13 %f9 %f9	# 94
	fmul	%f13 %f1 %f13	# 665
	fadd	%f12 %f12 %f13	# 665
	fmul	%f13 %f4 %f4	# 94
	fmul	%f13 %f2 %f13	# 665
	fadd	%f12 %f12 %f13	# 665
	add	%r25 %r3 %r2	# 665
	fst	0(%r25) %f12	# 665
	addi	%r2 %r0 $1	# 666
	fmul	%f12 %f6 %f6	# 94
	fmul	%f12 %f0 %f12	# 666
	fmul	%f13 %f10 %f10	# 94
	fmul	%f13 %f1 %f13	# 666
	fadd	%f12 %f12 %f13	# 666
	fmul	%f13 %f5 %f5	# 94
	fmul	%f13 %f2 %f13	# 666
	fadd	%f12 %f12 %f13	# 666
	add	%r25 %r3 %r2	# 666
	fst	0(%r25) %f12	# 666
	addi	%r2 %r0 $2	# 667
	fmul	%f12 %f8 %f8	# 94
	fmul	%f12 %f0 %f12	# 667
	fmul	%f13 %f11 %f11	# 94
	fmul	%f13 %f1 %f13	# 667
	fadd	%f12 %f12 %f13	# 667
	fmul	%f13 %f7 %f7	# 94
	fmul	%f13 %f2 %f13	# 667
	fadd	%f12 %f12 %f13	# 667
	add	%r25 %r3 %r2	# 667
	fst	0(%r25) %f12	# 667
	addi	%r2 %r0 $0	# 670
	addi	%r3 %r0 l.8536	# 670
	fld	0(%r3) %f12	# 670
	fmul	%f13 %f0 %f6	# 670
	fmul	%f13 %f13 %f8	# 670
	fmul	%f14 %f1 %f10	# 670
	fmul	%f14 %f14 %f11	# 670
	fadd	%f13 %f13 %f14	# 670
	fmul	%f14 %f2 %f5	# 670
	fmul	%f14 %f14 %f7	# 670
	fadd	%f13 %f13 %f14	# 670
	fmul	%f12 %f12 %f13	# 670
	ld	-2(%r29) %r3	# 670
	add	%r25 %r3 %r2	# 670
	fst	0(%r25) %f12	# 670
	addi	%r2 %r0 $1	# 671
	addi	%r8 %r0 l.8536	# 671
	fld	0(%r8) %f12	# 671
	fmul	%f13 %f0 %f3	# 671
	fmul	%f13 %f13 %f8	# 671
	fmul	%f8 %f1 %f9	# 671
	fmul	%f8 %f8 %f11	# 671
	fadd	%f13 %f13 %f8	# 671
	fmul	%f8 %f2 %f4	# 671
	fmul	%f8 %f8 %f7	# 671
	fadd	%f13 %f13 %f8	# 671
	fmul	%f12 %f12 %f13	# 671
	add	%r25 %r3 %r2	# 671
	fst	0(%r25) %f12	# 671
	addi	%r2 %r0 $2	# 672
	addi	%r8 %r0 l.8536	# 672
	fld	0(%r8) %f7	# 672
	fmul	%f0 %f0 %f3	# 672
	fmul	%f0 %f0 %f6	# 672
	fmul	%f1 %f1 %f9	# 672
	fmul	%f1 %f1 %f10	# 672
	fadd	%f0 %f0 %f1	# 672
	fmul	%f2 %f2 %f4	# 672
	fmul	%f2 %f2 %f5	# 672
	fadd	%f0 %f0 %f2	# 672
	fmul	%f7 %f7 %f0	# 672
	add	%r25 %r3 %r2	# 672
	fst	0(%r25) %f7	# 672
	jr	%r31	# 672
read_nth_object.2617:
	ld	1(%r16) %r3	# 0
	st	-1(%r29) %r2	# 679
	st	-2(%r29) %r3	# 679
	addi	%r29 %r29 $-3	# 679
	st	0(%r29) %r31	# 679
	jal	min_caml_read_int	# 679
	ld	0(%r29) %r31	# 679
	addi	%r29 %r29 $3	# 679
	addi	%r25 %r2 $1	# 680
	beq	%r25 %r0 beq.10419	# 680
	st	-3(%r29) %r2	# 682
	addi	%r29 %r29 $-4	# 682
	st	0(%r29) %r31	# 682
	jal	min_caml_read_int	# 682
	ld	0(%r29) %r31	# 682
	addi	%r29 %r29 $4	# 682
	st	-4(%r29) %r2	# 683
	addi	%r29 %r29 $-5	# 683
	st	0(%r29) %r31	# 683
	jal	min_caml_read_int	# 683
	ld	0(%r29) %r31	# 683
	addi	%r29 %r29 $5	# 683
	st	-5(%r29) %r2	# 684
	addi	%r29 %r29 $-6	# 684
	st	0(%r29) %r31	# 684
	jal	min_caml_read_int	# 684
	ld	0(%r29) %r31	# 684
	addi	%r29 %r29 $6	# 684
	addi	%r3 %r0 $3	# 686
	addi	%r8 %r0 l.8518	# 686
	fld	0(%r8) %f0	# 686
	st	-6(%r29) %r2	# 686
	add	%r2 %r0 %r3	# 686
	addi	%r29 %r29 $-7	# 686
	st	0(%r29) %r31	# 686
	jal	min_caml_create_float_array	# 686
	ld	0(%r29) %r31	# 686
	addi	%r29 %r29 $7	# 686
	addi	%r3 %r0 $0	# 687
	st	-7(%r29) %r3	# 687
	st	-8(%r29) %r2	# 687
	addi	%r29 %r29 $-9	# 687
	st	0(%r29) %r31	# 687
	jal	min_caml_read_float	# 687
	ld	0(%r29) %r31	# 687
	addi	%r29 %r29 $9	# 687
	ld	-7(%r29) %r2	# 687
	ld	-8(%r29) %r3	# 687
	add	%r25 %r3 %r2	# 687
	fst	0(%r25) %f0	# 687
	addi	%r2 %r0 $1	# 688
	st	-9(%r29) %r2	# 688
	addi	%r29 %r29 $-10	# 688
	st	0(%r29) %r31	# 688
	jal	min_caml_read_float	# 688
	ld	0(%r29) %r31	# 688
	addi	%r29 %r29 $10	# 688
	ld	-9(%r29) %r2	# 688
	ld	-8(%r29) %r3	# 688
	add	%r25 %r3 %r2	# 688
	fst	0(%r25) %f0	# 688
	addi	%r2 %r0 $2	# 689
	st	-10(%r29) %r2	# 689
	addi	%r29 %r29 $-11	# 689
	st	0(%r29) %r31	# 689
	jal	min_caml_read_float	# 689
	ld	0(%r29) %r31	# 689
	addi	%r29 %r29 $11	# 689
	ld	-10(%r29) %r2	# 689
	ld	-8(%r29) %r3	# 689
	add	%r25 %r3 %r2	# 689
	fst	0(%r25) %f0	# 689
	addi	%r2 %r0 $3	# 691
	addi	%r8 %r0 l.8518	# 691
	fld	0(%r8) %f0	# 691
	addi	%r29 %r29 $-11	# 691
	st	0(%r29) %r31	# 691
	jal	min_caml_create_float_array	# 691
	ld	0(%r29) %r31	# 691
	addi	%r29 %r29 $11	# 691
	addi	%r3 %r0 $0	# 692
	st	-11(%r29) %r3	# 692
	st	-12(%r29) %r2	# 692
	addi	%r29 %r29 $-13	# 692
	st	0(%r29) %r31	# 692
	jal	min_caml_read_float	# 692
	ld	0(%r29) %r31	# 692
	addi	%r29 %r29 $13	# 692
	ld	-11(%r29) %r2	# 692
	ld	-12(%r29) %r3	# 692
	add	%r25 %r3 %r2	# 692
	fst	0(%r25) %f0	# 692
	addi	%r2 %r0 $1	# 693
	st	-13(%r29) %r2	# 693
	addi	%r29 %r29 $-14	# 693
	st	0(%r29) %r31	# 693
	jal	min_caml_read_float	# 693
	ld	0(%r29) %r31	# 693
	addi	%r29 %r29 $14	# 693
	ld	-13(%r29) %r2	# 693
	ld	-12(%r29) %r3	# 693
	add	%r25 %r3 %r2	# 693
	fst	0(%r25) %f0	# 693
	addi	%r2 %r0 $2	# 694
	st	-14(%r29) %r2	# 694
	addi	%r29 %r29 $-15	# 694
	st	0(%r29) %r31	# 694
	jal	min_caml_read_float	# 694
	ld	0(%r29) %r31	# 694
	addi	%r29 %r29 $15	# 694
	ld	-14(%r29) %r2	# 694
	ld	-12(%r29) %r3	# 694
	add	%r25 %r3 %r2	# 694
	fst	0(%r25) %f0	# 694
	addi	%r29 %r29 $-15	# 696
	st	0(%r29) %r31	# 696
	jal	min_caml_read_float	# 696
	ld	0(%r29) %r31	# 696
	addi	%r29 %r29 $15	# 696
	addi	%r2 %r0 l.8518	# 91
	fld	0(%r2) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10420	# 91
	addi	%r2 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10421	# 91
bclt_true.10420:
	addi	%r2 %r0 $1	# 91
bclt_cont.10421:
	addi	%r3 %r0 $2	# 698
	addi	%r8 %r0 l.8518	# 698
	fld	0(%r8) %f0	# 698
	st	-15(%r29) %r2	# 698
	add	%r2 %r0 %r3	# 698
	addi	%r29 %r29 $-16	# 698
	st	0(%r29) %r31	# 698
	jal	min_caml_create_float_array	# 698
	ld	0(%r29) %r31	# 698
	addi	%r29 %r29 $16	# 698
	addi	%r3 %r0 $0	# 699
	st	-16(%r29) %r3	# 699
	st	-17(%r29) %r2	# 699
	addi	%r29 %r29 $-18	# 699
	st	0(%r29) %r31	# 699
	jal	min_caml_read_float	# 699
	ld	0(%r29) %r31	# 699
	addi	%r29 %r29 $18	# 699
	ld	-16(%r29) %r2	# 699
	ld	-17(%r29) %r3	# 699
	add	%r25 %r3 %r2	# 699
	fst	0(%r25) %f0	# 699
	addi	%r2 %r0 $1	# 700
	st	-18(%r29) %r2	# 700
	addi	%r29 %r29 $-19	# 700
	st	0(%r29) %r31	# 700
	jal	min_caml_read_float	# 700
	ld	0(%r29) %r31	# 700
	addi	%r29 %r29 $19	# 700
	ld	-18(%r29) %r2	# 700
	ld	-17(%r29) %r3	# 700
	add	%r25 %r3 %r2	# 700
	fst	0(%r25) %f0	# 700
	addi	%r2 %r0 $3	# 702
	addi	%r8 %r0 l.8518	# 702
	fld	0(%r8) %f0	# 702
	addi	%r29 %r29 $-19	# 702
	st	0(%r29) %r31	# 702
	jal	min_caml_create_float_array	# 702
	ld	0(%r29) %r31	# 702
	addi	%r29 %r29 $19	# 702
	addi	%r3 %r0 $0	# 703
	st	-19(%r29) %r3	# 703
	st	-20(%r29) %r2	# 703
	addi	%r29 %r29 $-21	# 703
	st	0(%r29) %r31	# 703
	jal	min_caml_read_float	# 703
	ld	0(%r29) %r31	# 703
	addi	%r29 %r29 $21	# 703
	ld	-19(%r29) %r2	# 703
	ld	-20(%r29) %r3	# 703
	add	%r25 %r3 %r2	# 703
	fst	0(%r25) %f0	# 703
	addi	%r2 %r0 $1	# 704
	st	-21(%r29) %r2	# 704
	addi	%r29 %r29 $-22	# 704
	st	0(%r29) %r31	# 704
	jal	min_caml_read_float	# 704
	ld	0(%r29) %r31	# 704
	addi	%r29 %r29 $22	# 704
	ld	-21(%r29) %r2	# 704
	ld	-20(%r29) %r3	# 704
	add	%r25 %r3 %r2	# 704
	fst	0(%r25) %f0	# 704
	addi	%r2 %r0 $2	# 705
	st	-22(%r29) %r2	# 705
	addi	%r29 %r29 $-23	# 705
	st	0(%r29) %r31	# 705
	jal	min_caml_read_float	# 705
	ld	0(%r29) %r31	# 705
	addi	%r29 %r29 $23	# 705
	ld	-22(%r29) %r2	# 705
	ld	-20(%r29) %r3	# 705
	add	%r25 %r3 %r2	# 705
	fst	0(%r25) %f0	# 705
	addi	%r2 %r0 $3	# 707
	addi	%r8 %r0 l.8518	# 707
	fld	0(%r8) %f0	# 707
	addi	%r29 %r29 $-23	# 707
	st	0(%r29) %r31	# 707
	jal	min_caml_create_float_array	# 707
	ld	0(%r29) %r31	# 707
	addi	%r29 %r29 $23	# 707
	ld	-6(%r29) %r3	# 708
	st	-23(%r29) %r2	# 708
	beq	%r3 %r0 beq_true.10422	# 708
	addi	%r8 %r0 $0	# 710
	st	-24(%r29) %r8	# 710
	addi	%r29 %r29 $-25	# 710
	st	0(%r29) %r31	# 710
	jal	min_caml_read_float	# 710
	ld	0(%r29) %r31	# 710
	addi	%r29 %r29 $25	# 710
	addi	%r2 %r0 l.8525	# 577
	fld	0(%r2) %f1	# 577
	fmul	%f0 %f0 %f1	# 577
	ld	-24(%r29) %r2	# 710
	ld	-23(%r29) %r3	# 710
	add	%r25 %r3 %r2	# 710
	fst	0(%r25) %f0	# 710
	addi	%r2 %r0 $1	# 711
	st	-25(%r29) %r2	# 711
	addi	%r29 %r29 $-26	# 711
	st	0(%r29) %r31	# 711
	jal	min_caml_read_float	# 711
	ld	0(%r29) %r31	# 711
	addi	%r29 %r29 $26	# 711
	addi	%r2 %r0 l.8525	# 577
	fld	0(%r2) %f1	# 577
	fmul	%f0 %f0 %f1	# 577
	ld	-25(%r29) %r2	# 711
	ld	-23(%r29) %r3	# 711
	add	%r25 %r3 %r2	# 711
	fst	0(%r25) %f0	# 711
	addi	%r2 %r0 $2	# 712
	st	-26(%r29) %r2	# 712
	addi	%r29 %r29 $-27	# 712
	st	0(%r29) %r31	# 712
	jal	min_caml_read_float	# 712
	ld	0(%r29) %r31	# 712
	addi	%r29 %r29 $27	# 712
	addi	%r2 %r0 l.8525	# 577
	fld	0(%r2) %f1	# 577
	fmul	%f0 %f0 %f1	# 577
	ld	-26(%r29) %r2	# 712
	ld	-23(%r29) %r3	# 712
	add	%r25 %r3 %r2	# 712
	fst	0(%r25) %f0	# 712
	beq	%r0 %r0 beq_cont.10423	# 708
beq_true.10422:
beq_cont.10423:
	ld	-4(%r29) %r2	# 719
	addi	%r25 %r2 $-2	# 719
	beq	%r25 %r0 beq_true.10424	# 719
	ld	-15(%r29) %r3	# 719
	beq	%r0 %r0 beq_cont.10425	# 719
beq_true.10424:
	addi	%r3 %r0 $1	# 719
beq_cont.10425:
	addi	%r8 %r0 $4	# 720
	addi	%r9 %r0 l.8518	# 720
	fld	0(%r9) %f0	# 720
	st	-27(%r29) %r3	# 720
	add	%r2 %r0 %r8	# 720
	addi	%r29 %r29 $-28	# 720
	st	0(%r29) %r31	# 720
	jal	min_caml_create_float_array	# 720
	ld	0(%r29) %r31	# 720
	addi	%r29 %r29 $28	# 720
	add	%r3 %r0 %r28	# 723
	addi	%r28 %r28 $11	# 723
	st	10(%r3) %r2	# 723
	ld	-23(%r29) %r2	# 723
	st	9(%r3) %r2	# 723
	ld	-20(%r29) %r8	# 723
	st	8(%r3) %r8	# 723
	ld	-17(%r29) %r8	# 723
	st	7(%r3) %r8	# 723
	ld	-27(%r29) %r8	# 723
	st	6(%r3) %r8	# 723
	ld	-12(%r29) %r8	# 723
	st	5(%r3) %r8	# 723
	ld	-8(%r29) %r8	# 723
	st	4(%r3) %r8	# 723
	ld	-6(%r29) %r9	# 723
	st	3(%r3) %r9	# 723
	ld	-5(%r29) %r10	# 723
	st	2(%r3) %r10	# 723
	ld	-4(%r29) %r10	# 723
	st	1(%r3) %r10	# 723
	ld	-3(%r29) %r11	# 723
	st	0(%r3) %r11	# 723
	ld	-1(%r29) %r11	# 731
	ld	-2(%r29) %r12	# 731
	add	%r25 %r12 %r11	# 731
	st	0(%r25) %r3	# 731
	addi	%r25 %r10 $-3	# 733
	beq	%r25 %r0 beq_true.10426	# 733
	addi	%r25 %r10 $-2	# 743
	beq	%r25 %r0 beq_true.10428	# 743
	beq	%r0 %r0 beq_cont.10429	# 743
beq_true.10428:
	ld	-15(%r29) %r3	# 745
	beq	%r3 %r0 beq_true.10430	# 745
	addi	%r3 %r0 $0	# 745
	beq	%r0 %r0 beq_cont.10431	# 745
beq_true.10430:
	addi	%r3 %r0 $1	# 745
beq_cont.10431:
	add	%r2 %r0 %r8	# 745
	addi	%r29 %r29 $-28	# 745
	st	0(%r29) %r31	# 745
	jal	vecunit_sgn.2509	# 745
	ld	0(%r29) %r31	# 745
	addi	%r29 %r29 $28	# 745
beq_cont.10429:
	beq	%r0 %r0 beq_cont.10427	# 733
beq_true.10426:
	addi	%r3 %r0 $0	# 736
	add	%r25 %r8 %r3	# 736
	fld	0(%r25) %f0	# 736
	addi	%r3 %r0 $0	# 737
	addi	%r10 %r0 l.8518	# 92
	fld	0(%r10) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10432	# 92
	addi	%r10 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10433	# 92
bclt_true.10432:
	addi	%r10 %r0 $1	# 92
bclt_cont.10433:
	beq	%r10 %r0 beq_true.10434	# 737
	addi	%r10 %r0 l.8518	# 737
	fld	0(%r10) %f1	# 737
	beq	%r0 %r0 beq_cont.10435	# 737
beq_true.10434:
	addi	%r10 %r0 l.8518	# 92
	fld	0(%r10) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10436	# 92
	addi	%r10 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10437	# 92
bclt_true.10436:
	addi	%r10 %r0 $1	# 92
bclt_cont.10437:
	beq	%r10 %r0 beq_true.10438	# 118
	addi	%r10 %r0 l.8518	# 118
	fld	0(%r10) %f1	# 118
	beq	%r0 %r0 beq_cont.10439	# 118
beq_true.10438:
	addi	%r10 %r0 l.8518	# 90
	fld	0(%r10) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10440	# 90
	addi	%r10 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10441	# 90
bclt_true.10440:
	addi	%r10 %r0 $1	# 90
bclt_cont.10441:
	beq	%r10 %r0 beq_true.10442	# 119
	addi	%r10 %r0 l.8520	# 119
	fld	0(%r10) %f1	# 119
	beq	%r0 %r0 beq_cont.10443	# 119
beq_true.10442:
	addi	%r10 %r0 l.8522	# 120
	fld	0(%r10) %f1	# 120
beq_cont.10443:
beq_cont.10439:
	fmul	%f0 %f0 %f0	# 94
	finv	%f31 %f0	# 737
	fmul	%f1 %f1 %f31	# 737
beq_cont.10435:
	add	%r25 %r8 %r3	# 737
	fst	0(%r25) %f1	# 737
	addi	%r3 %r0 $1	# 738
	add	%r25 %r8 %r3	# 738
	fld	0(%r25) %f0	# 738
	addi	%r3 %r0 $1	# 739
	addi	%r10 %r0 l.8518	# 92
	fld	0(%r10) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10444	# 92
	addi	%r10 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10445	# 92
bclt_true.10444:
	addi	%r10 %r0 $1	# 92
bclt_cont.10445:
	beq	%r10 %r0 beq_true.10446	# 739
	addi	%r10 %r0 l.8518	# 739
	fld	0(%r10) %f1	# 739
	beq	%r0 %r0 beq_cont.10447	# 739
beq_true.10446:
	addi	%r10 %r0 l.8518	# 92
	fld	0(%r10) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10448	# 92
	addi	%r10 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10449	# 92
bclt_true.10448:
	addi	%r10 %r0 $1	# 92
bclt_cont.10449:
	beq	%r10 %r0 beq_true.10450	# 118
	addi	%r10 %r0 l.8518	# 118
	fld	0(%r10) %f1	# 118
	beq	%r0 %r0 beq_cont.10451	# 118
beq_true.10450:
	addi	%r10 %r0 l.8518	# 90
	fld	0(%r10) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10452	# 90
	addi	%r10 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10453	# 90
bclt_true.10452:
	addi	%r10 %r0 $1	# 90
bclt_cont.10453:
	beq	%r10 %r0 beq_true.10454	# 119
	addi	%r10 %r0 l.8520	# 119
	fld	0(%r10) %f1	# 119
	beq	%r0 %r0 beq_cont.10455	# 119
beq_true.10454:
	addi	%r10 %r0 l.8522	# 120
	fld	0(%r10) %f1	# 120
beq_cont.10455:
beq_cont.10451:
	fmul	%f0 %f0 %f0	# 94
	finv	%f31 %f0	# 739
	fmul	%f1 %f1 %f31	# 739
beq_cont.10447:
	add	%r25 %r8 %r3	# 739
	fst	0(%r25) %f1	# 739
	addi	%r3 %r0 $2	# 740
	add	%r25 %r8 %r3	# 740
	fld	0(%r25) %f0	# 740
	addi	%r3 %r0 $2	# 741
	addi	%r10 %r0 l.8518	# 92
	fld	0(%r10) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10456	# 92
	addi	%r10 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10457	# 92
bclt_true.10456:
	addi	%r10 %r0 $1	# 92
bclt_cont.10457:
	beq	%r10 %r0 beq_true.10458	# 741
	addi	%r10 %r0 l.8518	# 741
	fld	0(%r10) %f1	# 741
	beq	%r0 %r0 beq_cont.10459	# 741
beq_true.10458:
	addi	%r10 %r0 l.8518	# 92
	fld	0(%r10) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10460	# 92
	addi	%r10 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10461	# 92
bclt_true.10460:
	addi	%r10 %r0 $1	# 92
bclt_cont.10461:
	beq	%r10 %r0 beq_true.10462	# 118
	addi	%r10 %r0 l.8518	# 118
	fld	0(%r10) %f1	# 118
	beq	%r0 %r0 beq_cont.10463	# 118
beq_true.10462:
	addi	%r10 %r0 l.8518	# 90
	fld	0(%r10) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10464	# 90
	addi	%r10 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10465	# 90
bclt_true.10464:
	addi	%r10 %r0 $1	# 90
bclt_cont.10465:
	beq	%r10 %r0 beq_true.10466	# 119
	addi	%r10 %r0 l.8520	# 119
	fld	0(%r10) %f1	# 119
	beq	%r0 %r0 beq_cont.10467	# 119
beq_true.10466:
	addi	%r10 %r0 l.8522	# 120
	fld	0(%r10) %f1	# 120
beq_cont.10467:
beq_cont.10463:
	fmul	%f0 %f0 %f0	# 94
	finv	%f31 %f0	# 741
	fmul	%f1 %f1 %f31	# 741
beq_cont.10459:
	add	%r25 %r8 %r3	# 741
	fst	0(%r25) %f1	# 741
beq_cont.10427:
	ld	-6(%r29) %r2	# 749
	beq	%r2 %r0 beq_true.10468	# 749
	ld	-8(%r29) %r2	# 750
	ld	-23(%r29) %r3	# 750
	addi	%r29 %r29 $-28	# 750
	st	0(%r29) %r31	# 750
	jal	rotate_quadratic_matrix.2614	# 750
	ld	0(%r29) %r31	# 750
	addi	%r29 %r29 $28	# 750
	beq	%r0 %r0 beq_cont.10469	# 749
beq_true.10468:
beq_cont.10469:
	addi	%r2 %r0 $1	# 753
	jr	%r31	# 753
beq.10419:
	addi	%r2 %r0 $0	# 756
	jr	%r31	# 756
read_object.2619:
	ld	2(%r16) %r3	# 0
	ld	1(%r16) %r8	# 0
	sub	%r25 %r0 %r2	# 761
	addi	%r25 %r25 $60	# 761
	slt	%r25 %r0 %r25	# 761
	beq	%r25 %r0 beq.10470	# 761
	st	-1(%r29) %r16	# 762
	st	-2(%r29) %r3	# 762
	st	-3(%r29) %r8	# 762
	st	-4(%r29) %r2	# 762
	add	%r16 %r0 %r3	# 762
	addi	%r29 %r29 $-5	# 762
	st	0(%r29) %r31	# 762
	ld	0(%r16) %r24	# 762
	jalr	%r24	# 762
	ld	0(%r29) %r31	# 762
	addi	%r29 %r29 $5	# 762
	beq	%r2 %r0 beq.10471	# 762
	ld	-4(%r29) %r2	# 763
	addi	%r2 %r2 $1	# 763
	sub	%r25 %r0 %r2	# 761
	addi	%r25 %r25 $60	# 761
	slt	%r25 %r0 %r25	# 761
	beq	%r25 %r0 beq.10472	# 761
	ld	-2(%r29) %r3	# 762
	st	-5(%r29) %r2	# 762
	add	%r16 %r0 %r3	# 762
	addi	%r29 %r29 $-6	# 762
	st	0(%r29) %r31	# 762
	ld	0(%r16) %r24	# 762
	jalr	%r24	# 762
	ld	0(%r29) %r31	# 762
	addi	%r29 %r29 $6	# 762
	beq	%r2 %r0 beq.10473	# 762
	ld	-5(%r29) %r2	# 763
	addi	%r2 %r2 $1	# 763
	ld	-1(%r29) %r3	# 763
	add	%r16 %r0 %r3	# 763
	ld	0(%r16) %r24	# 763
	jr	%r24	# 763
beq.10473:
	addi	%r2 %r0 $0	# 765
	ld	-3(%r29) %r3	# 765
	ld	-5(%r29) %r8	# 765
	add	%r25 %r3 %r2	# 765
	st	0(%r25) %r8	# 765
	jr	%r31	# 765
beq.10472:
	jr	%r31	# 766
beq.10471:
	addi	%r2 %r0 $0	# 765
	ld	-3(%r29) %r3	# 765
	ld	-4(%r29) %r8	# 765
	add	%r25 %r3 %r2	# 765
	st	0(%r25) %r8	# 765
	jr	%r31	# 765
beq.10470:
	jr	%r31	# 766
read_net_item.2623:
	st	-1(%r29) %r2	# 777
	addi	%r29 %r29 $-2	# 777
	st	0(%r29) %r31	# 777
	jal	min_caml_read_int	# 777
	ld	0(%r29) %r31	# 777
	addi	%r29 %r29 $2	# 777
	addi	%r25 %r2 $1	# 778
	beq	%r25 %r0 beq.10478	# 778
	ld	-1(%r29) %r3	# 780
	addi	%r8 %r3 $1	# 780
	st	-2(%r29) %r2	# 780
	add	%r2 %r0 %r8	# 780
	addi	%r29 %r29 $-3	# 780
	st	0(%r29) %r31	# 780
	jal	read_net_item.2623	# 780
	ld	0(%r29) %r31	# 780
	addi	%r29 %r29 $3	# 780
	ld	-1(%r29) %r3	# 781
	ld	-2(%r29) %r8	# 781
	add	%r25 %r2 %r3	# 781
	st	0(%r25) %r8	# 781
	jr	%r31	# 781
beq.10478:
	ld	-1(%r29) %r2	# 778
	addi	%r2 %r2 $1	# 778
	addi	%r3 %r0 $-1	# 778
	beq	%r0 %r0 min_caml_create_array	# 778
read_or_network.2625:
	addi	%r3 %r0 $0	# 785
	st	-1(%r29) %r2	# 785
	add	%r2 %r0 %r3	# 785
	addi	%r29 %r29 $-2	# 785
	st	0(%r29) %r31	# 785
	jal	read_net_item.2623	# 785
	ld	0(%r29) %r31	# 785
	addi	%r29 %r29 $2	# 785
	add	%r3 %r0 %r2	# 785
	addi	%r2 %r0 $0	# 786
	add	%r25 %r3 %r2	# 786
	ld	0(%r25) %r2	# 786
	addi	%r25 %r2 $1	# 786
	beq	%r25 %r0 beq.10479	# 786
	ld	-1(%r29) %r2	# 789
	addi	%r8 %r2 $1	# 789
	st	-2(%r29) %r3	# 789
	add	%r2 %r0 %r8	# 789
	addi	%r29 %r29 $-3	# 789
	st	0(%r29) %r31	# 789
	jal	read_or_network.2625	# 789
	ld	0(%r29) %r31	# 789
	addi	%r29 %r29 $3	# 789
	ld	-1(%r29) %r3	# 790
	ld	-2(%r29) %r8	# 790
	add	%r25 %r2 %r3	# 790
	st	0(%r25) %r8	# 790
	jr	%r31	# 790
beq.10479:
	ld	-1(%r29) %r2	# 787
	addi	%r2 %r2 $1	# 787
	beq	%r0 %r0 min_caml_create_array	# 787
read_and_network.2627:
	ld	1(%r16) %r3	# 0
	addi	%r8 %r0 $0	# 794
	st	-1(%r29) %r16	# 794
	st	-2(%r29) %r2	# 794
	st	-3(%r29) %r3	# 794
	add	%r2 %r0 %r8	# 794
	addi	%r29 %r29 $-4	# 794
	st	0(%r29) %r31	# 794
	jal	read_net_item.2623	# 794
	ld	0(%r29) %r31	# 794
	addi	%r29 %r29 $4	# 794
	addi	%r3 %r0 $0	# 795
	add	%r25 %r2 %r3	# 795
	ld	0(%r25) %r3	# 795
	addi	%r25 %r3 $1	# 795
	beq	%r25 %r0 beq.10480	# 795
	ld	-2(%r29) %r3	# 797
	ld	-3(%r29) %r8	# 797
	add	%r25 %r8 %r3	# 797
	st	0(%r25) %r2	# 797
	addi	%r3 %r3 $1	# 798
	addi	%r2 %r0 $0	# 794
	st	-4(%r29) %r3	# 794
	addi	%r29 %r29 $-5	# 794
	st	0(%r29) %r31	# 794
	jal	read_net_item.2623	# 794
	ld	0(%r29) %r31	# 794
	addi	%r29 %r29 $5	# 794
	addi	%r3 %r0 $0	# 795
	add	%r25 %r2 %r3	# 795
	ld	0(%r25) %r3	# 795
	addi	%r25 %r3 $1	# 795
	beq	%r25 %r0 beq.10481	# 795
	ld	-4(%r29) %r3	# 797
	ld	-3(%r29) %r8	# 797
	add	%r25 %r8 %r3	# 797
	st	0(%r25) %r2	# 797
	addi	%r2 %r3 $1	# 798
	ld	-1(%r29) %r3	# 798
	add	%r16 %r0 %r3	# 798
	ld	0(%r16) %r24	# 798
	jr	%r24	# 798
beq.10481:
	jr	%r31	# 795
beq.10480:
	jr	%r31	# 795
read_parameter.2629:
	ld	6(%r16) %r2	# 0
	ld	5(%r16) %r3	# 0
	ld	4(%r16) %r8	# 0
	ld	3(%r16) %r9	# 0
	ld	2(%r16) %r10	# 0
	ld	1(%r16) %r11	# 0
	st	-1(%r29) %r10	# 804
	st	-2(%r29) %r9	# 804
	st	-3(%r29) %r11	# 804
	st	-4(%r29) %r3	# 804
	st	-5(%r29) %r8	# 804
	add	%r16 %r0 %r2	# 804
	addi	%r29 %r29 $-6	# 804
	st	0(%r29) %r31	# 804
	ld	0(%r16) %r24	# 804
	jalr	%r24	# 804
	ld	0(%r29) %r31	# 804
	addi	%r29 %r29 $6	# 804
	ld	-5(%r29) %r2	# 805
	add	%r16 %r0 %r2	# 805
	addi	%r29 %r29 $-6	# 805
	st	0(%r29) %r31	# 805
	ld	0(%r16) %r24	# 805
	jalr	%r24	# 805
	ld	0(%r29) %r31	# 805
	addi	%r29 %r29 $6	# 805
	addi	%r2 %r0 $0	# 770
	ld	-4(%r29) %r3	# 770
	add	%r16 %r0 %r3	# 770
	addi	%r29 %r29 $-6	# 770
	st	0(%r29) %r31	# 770
	ld	0(%r16) %r24	# 770
	jalr	%r24	# 770
	ld	0(%r29) %r31	# 770
	addi	%r29 %r29 $6	# 770
	addi	%r2 %r0 $0	# 807
	addi	%r3 %r0 $0	# 794
	st	-6(%r29) %r2	# 794
	add	%r2 %r0 %r3	# 794
	addi	%r29 %r29 $-7	# 794
	st	0(%r29) %r31	# 794
	jal	read_net_item.2623	# 794
	ld	0(%r29) %r31	# 794
	addi	%r29 %r29 $7	# 794
	addi	%r3 %r0 $0	# 795
	add	%r25 %r2 %r3	# 795
	ld	0(%r25) %r3	# 795
	addi	%r25 %r3 $1	# 795
	beq	%r25 %r0 beq_true.10484	# 795
	ld	-6(%r29) %r3	# 797
	ld	-3(%r29) %r8	# 797
	add	%r25 %r8 %r3	# 797
	st	0(%r25) %r2	# 797
	addi	%r2 %r0 $1	# 798
	ld	-2(%r29) %r3	# 798
	add	%r16 %r0 %r3	# 798
	addi	%r29 %r29 $-7	# 798
	st	0(%r29) %r31	# 798
	ld	0(%r16) %r24	# 798
	jalr	%r24	# 798
	ld	0(%r29) %r31	# 798
	addi	%r29 %r29 $7	# 798
	beq	%r0 %r0 beq_cont.10485	# 795
beq_true.10484:
beq_cont.10485:
	addi	%r2 %r0 $0	# 808
	addi	%r3 %r0 $0	# 808
	st	-7(%r29) %r2	# 808
	add	%r2 %r0 %r3	# 808
	addi	%r29 %r29 $-8	# 808
	st	0(%r29) %r31	# 808
	jal	read_or_network.2625	# 808
	ld	0(%r29) %r31	# 808
	addi	%r29 %r29 $8	# 808
	ld	-7(%r29) %r3	# 808
	ld	-1(%r29) %r8	# 808
	add	%r25 %r8 %r3	# 808
	st	0(%r25) %r2	# 808
	jr	%r31	# 808
solver_rect_surface.2631:
	ld	1(%r16) %r11	# 0
	add	%r25 %r3 %r8	# 829
	fld	0(%r25) %f3	# 829
	addi	%r12 %r0 l.8518	# 92
	fld	0(%r12) %f4	# 92
	fseq	%f3 %f4	# 92
	bclt	bclt_true.10487	# 92
	addi	%r12 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10488	# 92
bclt_true.10487:
	addi	%r12 %r0 $1	# 92
bclt_cont.10488:
	beq	%r12 %r0 beq.10489	# 829
	addi	%r2 %r0 $0	# 829
	jr	%r31	# 829
beq.10489:
	ld	4(%r2) %r12	# 321
	ld	6(%r2) %r2	# 273
	add	%r25 %r3 %r8	# 831
	fld	0(%r25) %f3	# 831
	addi	%r13 %r0 l.8518	# 91
	fld	0(%r13) %f4	# 91
	fslt	%f3 %f4	# 91
	bclt	bclt_true.10490	# 91
	addi	%r13 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10491	# 91
bclt_true.10490:
	addi	%r13 %r0 $1	# 91
bclt_cont.10491:
	beq	%r2 %r0 beq_true.10492	# 110
	beq	%r13 %r0 beq_true.10494	# 110
	addi	%r13 %r0 $0	# 110
	beq	%r0 %r0 beq_cont.10495	# 110
beq_true.10494:
	addi	%r13 %r0 $1	# 110
beq_cont.10495:
	beq	%r0 %r0 beq_cont.10493	# 110
beq_true.10492:
beq_cont.10493:
	add	%r25 %r12 %r8	# 831
	fld	0(%r25) %f3	# 831
	beq	%r13 %r0 beq_true.10496	# 125
	beq	%r0 %r0 beq_cont.10497	# 125
beq_true.10496:
	fneg	%f3 %f3	# 95
beq_cont.10497:
	fneg	%f31 %f0	# 833
	fadd	%f3 %f3 %f31	# 833
	add	%r25 %r3 %r8	# 833
	fld	0(%r25) %f0	# 833
	finv	%f31 %f0	# 833
	fmul	%f3 %f3 %f31	# 833
	add	%r25 %r3 %r9	# 834
	fld	0(%r25) %f0	# 834
	fmul	%f0 %f3 %f0	# 834
	fadd	%f0 %f0 %f1	# 834
	st	-1(%r29) %r11	# 834
	fst	-2(%r29) %f2	# 834
	fst	-3(%r29) %f3	# 834
	st	-4(%r29) %r10	# 834
	st	-5(%r29) %r3	# 834
	st	-6(%r29) %r9	# 834
	st	-7(%r29) %r12	# 834
	fabs	%f0 %f0	# 834
	ld	-6(%r29) %r2	# 834
	ld	-7(%r29) %r3	# 834
	add	%r25 %r3 %r2	# 834
	fld	0(%r25) %f1	# 834
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10498	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10499	# 89
bclt_true.10498:
	addi	%r2 %r0 $1	# 89
bclt_cont.10499:
	beq	%r2 %r0 beq.10500	# 834
	ld	-4(%r29) %r2	# 835
	ld	-5(%r29) %r8	# 835
	add	%r25 %r8 %r2	# 835
	fld	0(%r25) %f0	# 835
	fld	-3(%r29) %f1	# 835
	fmul	%f0 %f1 %f0	# 835
	fld	-2(%r29) %f2	# 835
	fadd	%f0 %f0 %f2	# 835
	fabs	%f0 %f0	# 835
	ld	-4(%r29) %r2	# 835
	ld	-7(%r29) %r3	# 835
	add	%r25 %r3 %r2	# 835
	fld	0(%r25) %f1	# 835
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10501	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10502	# 89
bclt_true.10501:
	addi	%r2 %r0 $1	# 89
bclt_cont.10502:
	beq	%r2 %r0 beq.10503	# 835
	addi	%r2 %r0 $0	# 836
	ld	-1(%r29) %r3	# 836
	fld	-3(%r29) %f0	# 836
	add	%r25 %r3 %r2	# 836
	fst	0(%r25) %f0	# 836
	addi	%r2 %r0 $1	# 836
	jr	%r31	# 836
beq.10503:
	addi	%r2 %r0 $0	# 837
	jr	%r31	# 837
beq.10500:
	addi	%r2 %r0 $0	# 838
	jr	%r31	# 838
solver_rect.2640:
	ld	1(%r16) %r8	# 0
	addi	%r9 %r0 $0	# 844
	addi	%r10 %r0 $1	# 844
	addi	%r11 %r0 $2	# 844
	fst	-1(%r29) %f0	# 844
	fst	-2(%r29) %f2	# 844
	fst	-3(%r29) %f1	# 844
	st	-4(%r29) %r3	# 844
	st	-5(%r29) %r2	# 844
	st	-6(%r29) %r8	# 844
	add	%r16 %r0 %r8	# 844
	add	%r8 %r0 %r9	# 844
	add	%r9 %r0 %r10	# 844
	add	%r10 %r0 %r11	# 844
	addi	%r29 %r29 $-7	# 844
	st	0(%r29) %r31	# 844
	ld	0(%r16) %r24	# 844
	jalr	%r24	# 844
	ld	0(%r29) %r31	# 844
	addi	%r29 %r29 $7	# 844
	beq	%r2 %r0 beq.10504	# 844
	addi	%r2 %r0 $1	# 844
	jr	%r31	# 844
beq.10504:
	addi	%r8 %r0 $1	# 845
	addi	%r9 %r0 $2	# 845
	addi	%r10 %r0 $0	# 845
	fld	-3(%r29) %f0	# 845
	fld	-2(%r29) %f1	# 845
	fld	-1(%r29) %f2	# 845
	ld	-5(%r29) %r2	# 845
	ld	-4(%r29) %r3	# 845
	ld	-6(%r29) %r11	# 845
	add	%r16 %r0 %r11	# 845
	addi	%r29 %r29 $-7	# 845
	st	0(%r29) %r31	# 845
	ld	0(%r16) %r24	# 845
	jalr	%r24	# 845
	ld	0(%r29) %r31	# 845
	addi	%r29 %r29 $7	# 845
	beq	%r2 %r0 beq.10505	# 845
	addi	%r2 %r0 $2	# 845
	jr	%r31	# 845
beq.10505:
	addi	%r8 %r0 $2	# 846
	addi	%r9 %r0 $0	# 846
	addi	%r10 %r0 $1	# 846
	fld	-2(%r29) %f0	# 846
	fld	-1(%r29) %f1	# 846
	fld	-3(%r29) %f2	# 846
	ld	-5(%r29) %r2	# 846
	ld	-4(%r29) %r3	# 846
	ld	-6(%r29) %r11	# 846
	add	%r16 %r0 %r11	# 846
	addi	%r29 %r29 $-7	# 846
	st	0(%r29) %r31	# 846
	ld	0(%r16) %r24	# 846
	jalr	%r24	# 846
	ld	0(%r29) %r31	# 846
	addi	%r29 %r29 $7	# 846
	beq	%r2 %r0 beq.10506	# 846
	addi	%r2 %r0 $3	# 846
	jr	%r31	# 846
beq.10506:
	addi	%r2 %r0 $0	# 847
	jr	%r31	# 847
solver_surface.2646:
	ld	1(%r16) %r8	# 0
	ld	4(%r2) %r2	# 321
	st	-1(%r29) %r8	# 856
	fst	-2(%r29) %f2	# 856
	fst	-3(%r29) %f1	# 856
	fst	-4(%r29) %f0	# 856
	st	-5(%r29) %r2	# 856
	add	%r24 %r0 %r3	# 856
	add	%r3 %r0 %r2	# 856
	add	%r2 %r0 %r24	# 856
	addi	%r29 %r29 $-6	# 856
	st	0(%r29) %r31	# 856
	jal	veciprod.2512	# 856
	ld	0(%r29) %r31	# 856
	addi	%r29 %r29 $6	# 856
	addi	%r2 %r0 l.8518	# 90
	fld	0(%r2) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10507	# 90
	addi	%r2 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10508	# 90
bclt_true.10507:
	addi	%r2 %r0 $1	# 90
bclt_cont.10508:
	beq	%r2 %r0 beq.10509	# 857
	addi	%r2 %r0 $0	# 858
	fld	-4(%r29) %f1	# 858
	fld	-3(%r29) %f2	# 858
	fld	-2(%r29) %f3	# 858
	ld	-5(%r29) %r3	# 858
	st	-6(%r29) %r2	# 858
	fst	-7(%r29) %f0	# 858
	add	%r2 %r0 %r3	# 858
	fmov	%f0 %f1	# 858
	fmov	%f1 %f2	# 858
	fmov	%f2 %f3	# 858
	addi	%r29 %r29 $-8	# 858
	st	0(%r29) %r31	# 858
	jal	veciprod2.2515	# 858
	ld	0(%r29) %r31	# 858
	addi	%r29 %r29 $8	# 858
	fneg	%f0 %f0	# 95
	fld	-7(%r29) %f1	# 858
	finv	%f31 %f1	# 858
	fmul	%f0 %f0 %f31	# 858
	ld	-6(%r29) %r2	# 858
	ld	-1(%r29) %r3	# 858
	add	%r25 %r3 %r2	# 858
	fst	0(%r25) %f0	# 858
	addi	%r2 %r0 $1	# 859
	jr	%r31	# 859
beq.10509:
	addi	%r2 %r0 $0	# 860
	jr	%r31	# 860
quadratic.2652:
	fmul	%f3 %f0 %f0	# 94
	ld	4(%r2) %r3	# 291
	addi	%r8 %r0 $0	# 296
	add	%r25 %r3 %r8	# 296
	fld	0(%r25) %f4	# 296
	fmul	%f3 %f3 %f4	# 868
	fmul	%f4 %f1 %f1	# 94
	ld	4(%r2) %r3	# 301
	addi	%r8 %r0 $1	# 306
	add	%r25 %r3 %r8	# 306
	fld	0(%r25) %f5	# 306
	fmul	%f4 %f4 %f5	# 868
	fadd	%f3 %f3 %f4	# 868
	fmul	%f4 %f2 %f2	# 94
	ld	4(%r2) %r3	# 311
	addi	%r8 %r0 $2	# 316
	add	%r25 %r3 %r8	# 316
	fld	0(%r25) %f5	# 316
	fmul	%f4 %f4 %f5	# 868
	fadd	%f3 %f3 %f4	# 868
	ld	3(%r2) %r3	# 282
	beq	%r3 %r0 beq.10510	# 870
	fmul	%f4 %f1 %f2	# 874
	ld	9(%r2) %r3	# 411
	addi	%r8 %r0 $0	# 416
	add	%r25 %r3 %r8	# 416
	fld	0(%r25) %f5	# 416
	fmul	%f4 %f4 %f5	# 874
	fadd	%f3 %f3 %f4	# 874
	fmul	%f2 %f2 %f0	# 875
	ld	9(%r2) %r3	# 421
	addi	%r8 %r0 $1	# 426
	add	%r25 %r3 %r8	# 426
	fld	0(%r25) %f4	# 426
	fmul	%f2 %f2 %f4	# 875
	fadd	%f3 %f3 %f2	# 875
	fmul	%f0 %f0 %f1	# 876
	ld	9(%r2) %r2	# 431
	addi	%r3 %r0 $2	# 436
	add	%r25 %r2 %r3	# 436
	fld	0(%r25) %f1	# 436
	fmul	%f0 %f0 %f1	# 876
	fadd	%f0 %f3 %f0	# 876
	jr	%r31	# 876
beq.10510:
	fmov	%f0 %f3	# 871
	jr	%r31	# 871
bilinear.2657:
	fmul	%f6 %f0 %f3	# 883
	ld	4(%r2) %r3	# 291
	addi	%r8 %r0 $0	# 296
	add	%r25 %r3 %r8	# 296
	fld	0(%r25) %f7	# 296
	fmul	%f6 %f6 %f7	# 883
	fmul	%f7 %f1 %f4	# 884
	ld	4(%r2) %r3	# 301
	addi	%r8 %r0 $1	# 306
	add	%r25 %r3 %r8	# 306
	fld	0(%r25) %f8	# 306
	fmul	%f7 %f7 %f8	# 884
	fadd	%f6 %f6 %f7	# 884
	fmul	%f7 %f2 %f5	# 885
	ld	4(%r2) %r3	# 311
	addi	%r8 %r0 $2	# 316
	add	%r25 %r3 %r8	# 316
	fld	0(%r25) %f8	# 316
	fmul	%f7 %f7 %f8	# 885
	fadd	%f6 %f6 %f7	# 885
	ld	3(%r2) %r3	# 282
	beq	%r3 %r0 beq.10511	# 887
	fmul	%f7 %f2 %f4	# 891
	fmul	%f8 %f1 %f5	# 891
	fadd	%f7 %f7 %f8	# 891
	ld	9(%r2) %r3	# 411
	addi	%r8 %r0 $0	# 416
	add	%r25 %r3 %r8	# 416
	fld	0(%r25) %f8	# 416
	fmul	%f7 %f7 %f8	# 891
	fmul	%f5 %f0 %f5	# 892
	fmul	%f2 %f2 %f3	# 892
	fadd	%f5 %f5 %f2	# 892
	ld	9(%r2) %r3	# 421
	addi	%r8 %r0 $1	# 426
	add	%r25 %r3 %r8	# 426
	fld	0(%r25) %f2	# 426
	fmul	%f5 %f5 %f2	# 892
	fadd	%f7 %f7 %f5	# 892
	fmul	%f0 %f0 %f4	# 893
	fmul	%f1 %f1 %f3	# 893
	fadd	%f0 %f0 %f1	# 893
	ld	9(%r2) %r2	# 431
	addi	%r3 %r0 $2	# 436
	add	%r25 %r2 %r3	# 436
	fld	0(%r25) %f1	# 436
	fmul	%f0 %f0 %f1	# 893
	fadd	%f7 %f7 %f0	# 893
	addi	%r2 %r0 l.8586	# 93
	fld	0(%r2) %f0	# 93
	fmul	%f7 %f7 %f0	# 93
	fadd	%f0 %f6 %f7	# 890
	jr	%r31	# 890
beq.10511:
	fmov	%f0 %f6	# 888
	jr	%r31	# 888
solver_second.2665:
	ld	1(%r16) %r8	# 0
	addi	%r9 %r0 $0	# 908
	add	%r25 %r3 %r9	# 908
	fld	0(%r25) %f3	# 908
	addi	%r9 %r0 $1	# 908
	add	%r25 %r3 %r9	# 908
	fld	0(%r25) %f4	# 908
	addi	%r9 %r0 $2	# 908
	add	%r25 %r3 %r9	# 908
	fld	0(%r25) %f5	# 908
	st	-1(%r29) %r8	# 908
	fst	-2(%r29) %f2	# 908
	fst	-3(%r29) %f1	# 908
	fst	-4(%r29) %f0	# 908
	st	-5(%r29) %r2	# 908
	st	-6(%r29) %r3	# 908
	fmov	%f2 %f5	# 908
	fmov	%f1 %f4	# 908
	fmov	%f0 %f3	# 908
	addi	%r29 %r29 $-7	# 908
	st	0(%r29) %r31	# 908
	jal	quadratic.2652	# 908
	ld	0(%r29) %r31	# 908
	addi	%r29 %r29 $7	# 908
	addi	%r2 %r0 l.8518	# 92
	fld	0(%r2) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10512	# 92
	addi	%r2 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10513	# 92
bclt_true.10512:
	addi	%r2 %r0 $1	# 92
bclt_cont.10513:
	beq	%r2 %r0 beq.10514	# 910
	addi	%r2 %r0 $0	# 911
	jr	%r31	# 911
beq.10514:
	addi	%r2 %r0 $0	# 915
	ld	-6(%r29) %r3	# 915
	add	%r25 %r3 %r2	# 915
	fld	0(%r25) %f1	# 915
	addi	%r2 %r0 $1	# 915
	add	%r25 %r3 %r2	# 915
	fld	0(%r25) %f2	# 915
	addi	%r2 %r0 $2	# 915
	add	%r25 %r3 %r2	# 915
	fld	0(%r25) %f3	# 915
	fld	-4(%r29) %f4	# 915
	fld	-3(%r29) %f5	# 915
	fld	-2(%r29) %f6	# 915
	ld	-5(%r29) %r2	# 915
	fst	-7(%r29) %f0	# 915
	fmov	%f0 %f1	# 915
	fmov	%f1 %f2	# 915
	fmov	%f2 %f3	# 915
	fmov	%f3 %f4	# 915
	fmov	%f4 %f5	# 915
	fmov	%f5 %f6	# 915
	addi	%r29 %r29 $-8	# 915
	st	0(%r29) %r31	# 915
	jal	bilinear.2657	# 915
	ld	0(%r29) %r31	# 915
	addi	%r29 %r29 $8	# 915
	fld	-4(%r29) %f1	# 917
	fld	-3(%r29) %f2	# 917
	fld	-2(%r29) %f3	# 917
	ld	-5(%r29) %r2	# 917
	fst	-8(%r29) %f0	# 917
	fmov	%f0 %f1	# 917
	fmov	%f1 %f2	# 917
	fmov	%f2 %f3	# 917
	addi	%r29 %r29 $-9	# 917
	st	0(%r29) %r31	# 917
	jal	quadratic.2652	# 917
	ld	0(%r29) %r31	# 917
	addi	%r29 %r29 $9	# 917
	ld	-5(%r29) %r2	# 253
	ld	1(%r2) %r3	# 253
	addi	%r25 %r3 $-3	# 918
	beq	%r25 %r0 beq_true.10515	# 918
	beq	%r0 %r0 beq_cont.10516	# 918
beq_true.10515:
	addi	%r3 %r0 l.8520	# 918
	fld	0(%r3) %f1	# 918
	fneg	%f31 %f1	# 918
	fadd	%f0 %f0 %f31	# 918
beq_cont.10516:
	fld	-8(%r29) %f1	# 94
	fmul	%f2 %f1 %f1	# 94
	fld	-7(%r29) %f3	# 920
	fmul	%f0 %f3 %f0	# 920
	fneg	%f31 %f0	# 920
	fadd	%f0 %f2 %f31	# 920
	addi	%r3 %r0 l.8518	# 90
	fld	0(%r3) %f2	# 90
	fslt	%f2 %f0	# 90
	bclt	bclt_true.10517	# 90
	addi	%r3 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10518	# 90
bclt_true.10517:
	addi	%r3 %r0 $1	# 90
bclt_cont.10518:
	beq	%r3 %r0 beq.10519	# 922
	fsqrt	%f0 %f0	# 923
	ld	-5(%r29) %r2	# 273
	ld	6(%r2) %r2	# 273
	beq	%r2 %r0 beq_true.10520	# 924
	beq	%r0 %r0 beq_cont.10521	# 924
beq_true.10520:
	fneg	%f0 %f0	# 95
beq_cont.10521:
	addi	%r2 %r0 $0	# 925
	fld	-8(%r29) %f1	# 925
	fneg	%f31 %f1	# 925
	fadd	%f0 %f0 %f31	# 925
	fld	-7(%r29) %f1	# 925
	finv	%f31 %f1	# 925
	fmul	%f0 %f0 %f31	# 925
	ld	-1(%r29) %r3	# 925
	add	%r25 %r3 %r2	# 925
	fst	0(%r25) %f0	# 925
	addi	%r2 %r0 $1	# 925
	jr	%r31	# 925
beq.10519:
	addi	%r2 %r0 $0	# 928
	jr	%r31	# 928
solver.2671:
	ld	4(%r16) %r9	# 0
	ld	3(%r16) %r10	# 0
	ld	2(%r16) %r11	# 0
	ld	1(%r16) %r12	# 0
	add	%r25 %r12 %r2	# 934
	ld	0(%r25) %r2	# 934
	addi	%r12 %r0 $0	# 936
	add	%r25 %r8 %r12	# 936
	fld	0(%r25) %f0	# 936
	ld	5(%r2) %r12	# 331
	addi	%r13 %r0 $0	# 336
	add	%r25 %r12 %r13	# 336
	fld	0(%r25) %f1	# 336
	fneg	%f31 %f1	# 936
	fadd	%f0 %f0 %f31	# 936
	addi	%r12 %r0 $1	# 937
	add	%r25 %r8 %r12	# 937
	fld	0(%r25) %f1	# 937
	ld	5(%r2) %r12	# 341
	addi	%r13 %r0 $1	# 346
	add	%r25 %r12 %r13	# 346
	fld	0(%r25) %f2	# 346
	fneg	%f31 %f2	# 937
	fadd	%f1 %f1 %f31	# 937
	addi	%r12 %r0 $2	# 938
	add	%r25 %r8 %r12	# 938
	fld	0(%r25) %f2	# 938
	ld	5(%r2) %r8	# 351
	addi	%r12 %r0 $2	# 356
	add	%r25 %r8 %r12	# 356
	fld	0(%r25) %f3	# 356
	fneg	%f31 %f3	# 938
	fadd	%f2 %f2 %f31	# 938
	ld	1(%r2) %r8	# 253
	addi	%r25 %r8 $-1	# 941
	beq	%r25 %r0 beq.10522	# 941
	addi	%r25 %r8 $-2	# 942
	beq	%r25 %r0 beq.10523	# 942
	add	%r16 %r0 %r10	# 943
	ld	0(%r16) %r24	# 943
	jr	%r24	# 943
beq.10523:
	add	%r16 %r0 %r9	# 942
	ld	0(%r16) %r24	# 942
	jr	%r24	# 942
beq.10522:
	add	%r16 %r0 %r11	# 941
	ld	0(%r16) %r24	# 941
	jr	%r24	# 941
solver_rect_fast.2675:
	ld	1(%r16) %r9	# 0
	addi	%r10 %r0 $0	# 966
	add	%r25 %r8 %r10	# 966
	fld	0(%r25) %f3	# 966
	fneg	%f31 %f0	# 966
	fadd	%f3 %f3 %f31	# 966
	addi	%r10 %r0 $1	# 966
	add	%r25 %r8 %r10	# 966
	fld	0(%r25) %f4	# 966
	fmul	%f3 %f3 %f4	# 966
	addi	%r10 %r0 $1	# 968
	add	%r25 %r3 %r10	# 968
	fld	0(%r25) %f4	# 968
	fmul	%f4 %f3 %f4	# 968
	fadd	%f4 %f4 %f1	# 968
	st	-1(%r29) %r9	# 968
	fst	-2(%r29) %f0	# 968
	fst	-3(%r29) %f1	# 968
	st	-4(%r29) %r8	# 968
	fst	-5(%r29) %f2	# 968
	fst	-6(%r29) %f3	# 968
	st	-7(%r29) %r3	# 968
	st	-8(%r29) %r2	# 968
	fabs	%f0 %f4	# 968
	ld	-8(%r29) %r2	# 301
	ld	4(%r2) %r3	# 301
	addi	%r8 %r0 $1	# 306
	add	%r25 %r3 %r8	# 306
	fld	0(%r25) %f1	# 306
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10524	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10525	# 89
bclt_true.10524:
	addi	%r3 %r0 $1	# 89
bclt_cont.10525:
	beq	%r3 %r0 beq_true.10526	# 968
	addi	%r3 %r0 $2	# 969
	ld	-7(%r29) %r8	# 969
	add	%r25 %r8 %r3	# 969
	fld	0(%r25) %f0	# 969
	fld	-6(%r29) %f1	# 969
	fmul	%f0 %f1 %f0	# 969
	fld	-5(%r29) %f2	# 969
	fadd	%f0 %f0 %f2	# 969
	fabs	%f0 %f0	# 969
	ld	-8(%r29) %r2	# 311
	ld	4(%r2) %r3	# 311
	addi	%r8 %r0 $2	# 316
	add	%r25 %r3 %r8	# 316
	fld	0(%r25) %f1	# 316
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10528	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10529	# 89
bclt_true.10528:
	addi	%r3 %r0 $1	# 89
bclt_cont.10529:
	beq	%r3 %r0 beq_true.10530	# 969
	addi	%r3 %r0 $1	# 970
	ld	-4(%r29) %r8	# 970
	add	%r25 %r8 %r3	# 970
	fld	0(%r25) %f0	# 970
	addi	%r3 %r0 l.8518	# 92
	fld	0(%r3) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10532	# 92
	addi	%r3 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10533	# 92
bclt_true.10532:
	addi	%r3 %r0 $1	# 92
bclt_cont.10533:
	beq	%r3 %r0 beq_true.10534	# 970
	addi	%r3 %r0 $0	# 970
	beq	%r0 %r0 beq_cont.10535	# 970
beq_true.10534:
	addi	%r3 %r0 $1	# 970
beq_cont.10535:
	beq	%r0 %r0 beq_cont.10531	# 969
beq_true.10530:
	addi	%r3 %r0 $0	# 971
beq_cont.10531:
	beq	%r0 %r0 beq_cont.10527	# 968
beq_true.10526:
	addi	%r3 %r0 $0	# 972
beq_cont.10527:
	beq	%r3 %r0 beq.10536	# 967
	addi	%r2 %r0 $0	# 974
	ld	-1(%r29) %r3	# 974
	fld	-6(%r29) %f0	# 974
	add	%r25 %r3 %r2	# 974
	fst	0(%r25) %f0	# 974
	addi	%r2 %r0 $1	# 974
	jr	%r31	# 974
beq.10536:
	addi	%r3 %r0 $2	# 975
	ld	-4(%r29) %r8	# 975
	add	%r25 %r8 %r3	# 975
	fld	0(%r25) %f0	# 975
	fld	-3(%r29) %f1	# 975
	fneg	%f31 %f1	# 975
	fadd	%f0 %f0 %f31	# 975
	addi	%r3 %r0 $3	# 975
	add	%r25 %r8 %r3	# 975
	fld	0(%r25) %f2	# 975
	fmul	%f0 %f0 %f2	# 975
	addi	%r3 %r0 $0	# 977
	ld	-7(%r29) %r9	# 977
	add	%r25 %r9 %r3	# 977
	fld	0(%r25) %f2	# 977
	fmul	%f2 %f0 %f2	# 977
	fld	-2(%r29) %f3	# 977
	fadd	%f2 %f2 %f3	# 977
	fst	-9(%r29) %f0	# 977
	fabs	%f0 %f2	# 977
	ld	-8(%r29) %r2	# 291
	ld	4(%r2) %r3	# 291
	addi	%r8 %r0 $0	# 296
	add	%r25 %r3 %r8	# 296
	fld	0(%r25) %f1	# 296
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10537	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10538	# 89
bclt_true.10537:
	addi	%r3 %r0 $1	# 89
bclt_cont.10538:
	beq	%r3 %r0 beq_true.10539	# 977
	addi	%r3 %r0 $2	# 978
	ld	-7(%r29) %r8	# 978
	add	%r25 %r8 %r3	# 978
	fld	0(%r25) %f0	# 978
	fld	-9(%r29) %f1	# 978
	fmul	%f0 %f1 %f0	# 978
	fld	-5(%r29) %f2	# 978
	fadd	%f0 %f0 %f2	# 978
	fabs	%f0 %f0	# 978
	ld	-8(%r29) %r2	# 311
	ld	4(%r2) %r3	# 311
	addi	%r8 %r0 $2	# 316
	add	%r25 %r3 %r8	# 316
	fld	0(%r25) %f1	# 316
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10541	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10542	# 89
bclt_true.10541:
	addi	%r3 %r0 $1	# 89
bclt_cont.10542:
	beq	%r3 %r0 beq_true.10543	# 978
	addi	%r3 %r0 $3	# 979
	ld	-4(%r29) %r8	# 979
	add	%r25 %r8 %r3	# 979
	fld	0(%r25) %f0	# 979
	addi	%r3 %r0 l.8518	# 92
	fld	0(%r3) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10545	# 92
	addi	%r3 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10546	# 92
bclt_true.10545:
	addi	%r3 %r0 $1	# 92
bclt_cont.10546:
	beq	%r3 %r0 beq_true.10547	# 979
	addi	%r3 %r0 $0	# 979
	beq	%r0 %r0 beq_cont.10548	# 979
beq_true.10547:
	addi	%r3 %r0 $1	# 979
beq_cont.10548:
	beq	%r0 %r0 beq_cont.10544	# 978
beq_true.10543:
	addi	%r3 %r0 $0	# 980
beq_cont.10544:
	beq	%r0 %r0 beq_cont.10540	# 977
beq_true.10539:
	addi	%r3 %r0 $0	# 981
beq_cont.10540:
	beq	%r3 %r0 beq.10549	# 976
	addi	%r2 %r0 $0	# 983
	ld	-1(%r29) %r3	# 983
	fld	-9(%r29) %f0	# 983
	add	%r25 %r3 %r2	# 983
	fst	0(%r25) %f0	# 983
	addi	%r2 %r0 $2	# 983
	jr	%r31	# 983
beq.10549:
	addi	%r3 %r0 $4	# 984
	ld	-4(%r29) %r8	# 984
	add	%r25 %r8 %r3	# 984
	fld	0(%r25) %f0	# 984
	fld	-5(%r29) %f1	# 984
	fneg	%f31 %f1	# 984
	fadd	%f0 %f0 %f31	# 984
	addi	%r3 %r0 $5	# 984
	add	%r25 %r8 %r3	# 984
	fld	0(%r25) %f1	# 984
	fmul	%f0 %f0 %f1	# 984
	addi	%r3 %r0 $0	# 986
	ld	-7(%r29) %r9	# 986
	add	%r25 %r9 %r3	# 986
	fld	0(%r25) %f1	# 986
	fmul	%f1 %f0 %f1	# 986
	fld	-2(%r29) %f2	# 986
	fadd	%f1 %f1 %f2	# 986
	fst	-10(%r29) %f0	# 986
	fabs	%f0 %f1	# 986
	ld	-8(%r29) %r2	# 291
	ld	4(%r2) %r3	# 291
	addi	%r8 %r0 $0	# 296
	add	%r25 %r3 %r8	# 296
	fld	0(%r25) %f1	# 296
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10550	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10551	# 89
bclt_true.10550:
	addi	%r3 %r0 $1	# 89
bclt_cont.10551:
	beq	%r3 %r0 beq_true.10552	# 986
	addi	%r3 %r0 $1	# 987
	ld	-7(%r29) %r8	# 987
	add	%r25 %r8 %r3	# 987
	fld	0(%r25) %f0	# 987
	fld	-10(%r29) %f1	# 987
	fmul	%f0 %f1 %f0	# 987
	fld	-3(%r29) %f2	# 987
	fadd	%f0 %f0 %f2	# 987
	fabs	%f0 %f0	# 987
	ld	-8(%r29) %r2	# 301
	ld	4(%r2) %r2	# 301
	addi	%r3 %r0 $1	# 306
	add	%r25 %r2 %r3	# 306
	fld	0(%r25) %f1	# 306
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10554	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10555	# 89
bclt_true.10554:
	addi	%r2 %r0 $1	# 89
bclt_cont.10555:
	beq	%r2 %r0 beq_true.10556	# 987
	addi	%r2 %r0 $5	# 988
	ld	-4(%r29) %r3	# 988
	add	%r25 %r3 %r2	# 988
	fld	0(%r25) %f0	# 988
	addi	%r2 %r0 l.8518	# 92
	fld	0(%r2) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10558	# 92
	addi	%r2 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10559	# 92
bclt_true.10558:
	addi	%r2 %r0 $1	# 92
bclt_cont.10559:
	beq	%r2 %r0 beq_true.10560	# 988
	addi	%r2 %r0 $0	# 988
	beq	%r0 %r0 beq_cont.10561	# 988
beq_true.10560:
	addi	%r2 %r0 $1	# 988
beq_cont.10561:
	beq	%r0 %r0 beq_cont.10557	# 987
beq_true.10556:
	addi	%r2 %r0 $0	# 989
beq_cont.10557:
	beq	%r0 %r0 beq_cont.10553	# 986
beq_true.10552:
	addi	%r2 %r0 $0	# 990
beq_cont.10553:
	beq	%r2 %r0 beq.10562	# 985
	addi	%r2 %r0 $0	# 992
	ld	-1(%r29) %r3	# 992
	fld	-10(%r29) %f0	# 992
	add	%r25 %r3 %r2	# 992
	fst	0(%r25) %f0	# 992
	addi	%r2 %r0 $3	# 992
	jr	%r31	# 992
beq.10562:
	addi	%r2 %r0 $0	# 994
	jr	%r31	# 994
solver_surface_fast.2682:
	ld	1(%r16) %r2	# 0
	addi	%r8 %r0 $0	# 999
	add	%r25 %r3 %r8	# 999
	fld	0(%r25) %f3	# 999
	addi	%r8 %r0 l.8518	# 91
	fld	0(%r8) %f4	# 91
	fslt	%f3 %f4	# 91
	bclt	bclt_true.10563	# 91
	addi	%r8 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10564	# 91
bclt_true.10563:
	addi	%r8 %r0 $1	# 91
bclt_cont.10564:
	beq	%r8 %r0 beq.10565	# 999
	addi	%r8 %r0 $0	# 1000
	addi	%r9 %r0 $1	# 1001
	add	%r25 %r3 %r9	# 1001
	fld	0(%r25) %f3	# 1001
	fmul	%f3 %f3 %f0	# 1001
	addi	%r9 %r0 $2	# 1001
	add	%r25 %r3 %r9	# 1001
	fld	0(%r25) %f0	# 1001
	fmul	%f0 %f0 %f1	# 1001
	fadd	%f3 %f3 %f0	# 1001
	addi	%r9 %r0 $3	# 1001
	add	%r25 %r3 %r9	# 1001
	fld	0(%r25) %f0	# 1001
	fmul	%f0 %f0 %f2	# 1001
	fadd	%f3 %f3 %f0	# 1001
	add	%r25 %r2 %r8	# 1000
	fst	0(%r25) %f3	# 1000
	addi	%r2 %r0 $1	# 1002
	jr	%r31	# 1002
beq.10565:
	addi	%r2 %r0 $0	# 1003
	jr	%r31	# 1003
solver_second_fast.2688:
	ld	1(%r16) %r8	# 0
	addi	%r9 %r0 $0	# 1009
	add	%r25 %r3 %r9	# 1009
	fld	0(%r25) %f3	# 1009
	addi	%r9 %r0 l.8518	# 92
	fld	0(%r9) %f4	# 92
	fseq	%f3 %f4	# 92
	bclt	bclt_true.10566	# 92
	addi	%r9 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10567	# 92
bclt_true.10566:
	addi	%r9 %r0 $1	# 92
bclt_cont.10567:
	beq	%r9 %r0 beq.10568	# 1010
	addi	%r2 %r0 $0	# 1011
	jr	%r31	# 1011
beq.10568:
	addi	%r9 %r0 $1	# 1013
	add	%r25 %r3 %r9	# 1013
	fld	0(%r25) %f4	# 1013
	fmul	%f4 %f4 %f0	# 1013
	addi	%r9 %r0 $2	# 1013
	add	%r25 %r3 %r9	# 1013
	fld	0(%r25) %f5	# 1013
	fmul	%f5 %f5 %f1	# 1013
	fadd	%f4 %f4 %f5	# 1013
	addi	%r9 %r0 $3	# 1013
	add	%r25 %r3 %r9	# 1013
	fld	0(%r25) %f5	# 1013
	fmul	%f5 %f5 %f2	# 1013
	fadd	%f4 %f4 %f5	# 1013
	st	-1(%r29) %r8	# 1014
	st	-2(%r29) %r3	# 1014
	fst	-3(%r29) %f3	# 1014
	fst	-4(%r29) %f4	# 1014
	st	-5(%r29) %r2	# 1014
	addi	%r29 %r29 $-6	# 1014
	st	0(%r29) %r31	# 1014
	jal	quadratic.2652	# 1014
	ld	0(%r29) %r31	# 1014
	addi	%r29 %r29 $6	# 1014
	ld	-5(%r29) %r2	# 253
	ld	1(%r2) %r3	# 253
	addi	%r25 %r3 $-3	# 1015
	beq	%r25 %r0 beq_true.10569	# 1015
	beq	%r0 %r0 beq_cont.10570	# 1015
beq_true.10569:
	addi	%r3 %r0 l.8520	# 1015
	fld	0(%r3) %f1	# 1015
	fneg	%f31 %f1	# 1015
	fadd	%f0 %f0 %f31	# 1015
beq_cont.10570:
	fld	-4(%r29) %f1	# 94
	fmul	%f2 %f1 %f1	# 94
	fld	-3(%r29) %f3	# 1016
	fmul	%f3 %f3 %f0	# 1016
	fneg	%f31 %f3	# 1016
	fadd	%f0 %f2 %f31	# 1016
	addi	%r3 %r0 l.8518	# 90
	fld	0(%r3) %f2	# 90
	fslt	%f2 %f0	# 90
	bclt	bclt_true.10571	# 90
	addi	%r3 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10572	# 90
bclt_true.10571:
	addi	%r3 %r0 $1	# 90
bclt_cont.10572:
	beq	%r3 %r0 beq.10573	# 1017
	ld	6(%r2) %r2	# 273
	beq	%r2 %r0 beq_true.10574	# 1018
	addi	%r2 %r0 $0	# 1019
	st	-6(%r29) %r2	# 1019
	fsqrt	%f0 %f0	# 1019
	fld	-4(%r29) %f1	# 1019
	fadd	%f1 %f1 %f0	# 1019
	addi	%r2 %r0 $4	# 1019
	ld	-2(%r29) %r3	# 1019
	add	%r25 %r3 %r2	# 1019
	fld	0(%r25) %f0	# 1019
	fmul	%f1 %f1 %f0	# 1019
	ld	-6(%r29) %r2	# 1019
	ld	-1(%r29) %r3	# 1019
	add	%r25 %r3 %r2	# 1019
	fst	0(%r25) %f1	# 1019
	beq	%r0 %r0 beq_cont.10575	# 1018
beq_true.10574:
	addi	%r2 %r0 $0	# 1021
	st	-7(%r29) %r2	# 1021
	fsqrt	%f0 %f0	# 1021
	fld	-4(%r29) %f1	# 1021
	fneg	%f31 %f0	# 1021
	fadd	%f1 %f1 %f31	# 1021
	addi	%r2 %r0 $4	# 1021
	ld	-2(%r29) %r3	# 1021
	add	%r25 %r3 %r2	# 1021
	fld	0(%r25) %f0	# 1021
	fmul	%f1 %f1 %f0	# 1021
	ld	-7(%r29) %r2	# 1021
	ld	-1(%r29) %r3	# 1021
	add	%r25 %r3 %r2	# 1021
	fst	0(%r25) %f1	# 1021
beq_cont.10575:
	addi	%r2 %r0 $1	# 1022
	jr	%r31	# 1022
beq.10573:
	addi	%r2 %r0 $0	# 1023
	jr	%r31	# 1023
solver_fast.2694:
	ld	4(%r16) %r9	# 0
	ld	3(%r16) %r10	# 0
	ld	2(%r16) %r11	# 0
	ld	1(%r16) %r12	# 0
	add	%r25 %r12 %r2	# 1028
	ld	0(%r25) %r12	# 1028
	addi	%r13 %r0 $0	# 1029
	add	%r25 %r8 %r13	# 1029
	fld	0(%r25) %f0	# 1029
	ld	5(%r12) %r13	# 331
	addi	%r14 %r0 $0	# 336
	add	%r25 %r13 %r14	# 336
	fld	0(%r25) %f1	# 336
	fneg	%f31 %f1	# 1029
	fadd	%f0 %f0 %f31	# 1029
	addi	%r13 %r0 $1	# 1030
	add	%r25 %r8 %r13	# 1030
	fld	0(%r25) %f1	# 1030
	ld	5(%r12) %r13	# 341
	addi	%r14 %r0 $1	# 346
	add	%r25 %r13 %r14	# 346
	fld	0(%r25) %f2	# 346
	fneg	%f31 %f2	# 1030
	fadd	%f1 %f1 %f31	# 1030
	addi	%r13 %r0 $2	# 1031
	add	%r25 %r8 %r13	# 1031
	fld	0(%r25) %f2	# 1031
	ld	5(%r12) %r8	# 351
	addi	%r13 %r0 $2	# 356
	add	%r25 %r8 %r13	# 356
	fld	0(%r25) %f3	# 356
	fneg	%f31 %f3	# 1031
	fadd	%f2 %f2 %f31	# 1031
	ld	1(%r3) %r8	# 545
	add	%r25 %r8 %r2	# 1033
	ld	0(%r25) %r8	# 1033
	ld	1(%r12) %r2	# 253
	addi	%r25 %r2 $-1	# 1035
	beq	%r25 %r0 beq.10576	# 1035
	addi	%r25 %r2 $-2	# 1037
	beq	%r25 %r0 beq.10577	# 1037
	add	%r3 %r0 %r8	# 1040
	add	%r2 %r0 %r12	# 1040
	add	%r16 %r0 %r10	# 1040
	ld	0(%r16) %r24	# 1040
	jr	%r24	# 1040
beq.10577:
	add	%r3 %r0 %r8	# 1038
	add	%r2 %r0 %r12	# 1038
	add	%r16 %r0 %r9	# 1038
	ld	0(%r16) %r24	# 1038
	jr	%r24	# 1038
beq.10576:
	ld	0(%r3) %r3	# 539
	add	%r2 %r0 %r12	# 1036
	add	%r16 %r0 %r11	# 1036
	ld	0(%r16) %r24	# 1036
	jr	%r24	# 1036
solver_surface_fast2.2698:
	ld	1(%r16) %r2	# 0
	addi	%r9 %r0 $0	# 1048
	add	%r25 %r3 %r9	# 1048
	fld	0(%r25) %f0	# 1048
	addi	%r9 %r0 l.8518	# 91
	fld	0(%r9) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10578	# 91
	addi	%r9 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10579	# 91
bclt_true.10578:
	addi	%r9 %r0 $1	# 91
bclt_cont.10579:
	beq	%r9 %r0 beq.10580	# 1048
	addi	%r9 %r0 $0	# 1049
	addi	%r10 %r0 $0	# 1049
	add	%r25 %r3 %r10	# 1049
	fld	0(%r25) %f0	# 1049
	addi	%r3 %r0 $3	# 1049
	add	%r25 %r8 %r3	# 1049
	fld	0(%r25) %f1	# 1049
	fmul	%f0 %f0 %f1	# 1049
	add	%r25 %r2 %r9	# 1049
	fst	0(%r25) %f0	# 1049
	addi	%r2 %r0 $1	# 1050
	jr	%r31	# 1050
beq.10580:
	addi	%r2 %r0 $0	# 1051
	jr	%r31	# 1051
solver_second_fast2.2705:
	ld	1(%r16) %r9	# 0
	addi	%r10 %r0 $0	# 1057
	add	%r25 %r3 %r10	# 1057
	fld	0(%r25) %f3	# 1057
	addi	%r10 %r0 l.8518	# 92
	fld	0(%r10) %f4	# 92
	fseq	%f3 %f4	# 92
	bclt	bclt_true.10581	# 92
	addi	%r10 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10582	# 92
bclt_true.10581:
	addi	%r10 %r0 $1	# 92
bclt_cont.10582:
	beq	%r10 %r0 beq.10583	# 1058
	addi	%r2 %r0 $0	# 1059
	jr	%r31	# 1059
beq.10583:
	addi	%r10 %r0 $1	# 1061
	add	%r25 %r3 %r10	# 1061
	fld	0(%r25) %f4	# 1061
	fmul	%f4 %f4 %f0	# 1061
	addi	%r10 %r0 $2	# 1061
	add	%r25 %r3 %r10	# 1061
	fld	0(%r25) %f0	# 1061
	fmul	%f0 %f0 %f1	# 1061
	fadd	%f4 %f4 %f0	# 1061
	addi	%r10 %r0 $3	# 1061
	add	%r25 %r3 %r10	# 1061
	fld	0(%r25) %f0	# 1061
	fmul	%f0 %f0 %f2	# 1061
	fadd	%f4 %f4 %f0	# 1061
	addi	%r10 %r0 $3	# 1062
	add	%r25 %r8 %r10	# 1062
	fld	0(%r25) %f0	# 1062
	fmul	%f1 %f4 %f4	# 94
	fmul	%f3 %f3 %f0	# 1063
	fneg	%f31 %f3	# 1063
	fadd	%f0 %f1 %f31	# 1063
	addi	%r8 %r0 l.8518	# 90
	fld	0(%r8) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10584	# 90
	addi	%r8 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10585	# 90
bclt_true.10584:
	addi	%r8 %r0 $1	# 90
bclt_cont.10585:
	beq	%r8 %r0 beq.10586	# 1064
	ld	6(%r2) %r2	# 273
	beq	%r2 %r0 beq_true.10587	# 1065
	addi	%r2 %r0 $0	# 1066
	st	-1(%r29) %r2	# 1066
	st	-2(%r29) %r9	# 1066
	st	-3(%r29) %r3	# 1066
	fst	-4(%r29) %f4	# 1066
	fsqrt	%f0 %f0	# 1066
	fld	-4(%r29) %f1	# 1066
	fadd	%f1 %f1 %f0	# 1066
	addi	%r2 %r0 $4	# 1066
	ld	-3(%r29) %r3	# 1066
	add	%r25 %r3 %r2	# 1066
	fld	0(%r25) %f0	# 1066
	fmul	%f1 %f1 %f0	# 1066
	ld	-1(%r29) %r2	# 1066
	ld	-2(%r29) %r3	# 1066
	add	%r25 %r3 %r2	# 1066
	fst	0(%r25) %f1	# 1066
	beq	%r0 %r0 beq_cont.10588	# 1065
beq_true.10587:
	addi	%r2 %r0 $0	# 1068
	st	-5(%r29) %r2	# 1068
	st	-2(%r29) %r9	# 1068
	st	-3(%r29) %r3	# 1068
	fst	-4(%r29) %f4	# 1068
	fsqrt	%f0 %f0	# 1068
	fld	-4(%r29) %f1	# 1068
	fneg	%f31 %f0	# 1068
	fadd	%f1 %f1 %f31	# 1068
	addi	%r2 %r0 $4	# 1068
	ld	-3(%r29) %r3	# 1068
	add	%r25 %r3 %r2	# 1068
	fld	0(%r25) %f0	# 1068
	fmul	%f1 %f1 %f0	# 1068
	ld	-5(%r29) %r2	# 1068
	ld	-2(%r29) %r3	# 1068
	add	%r25 %r3 %r2	# 1068
	fst	0(%r25) %f1	# 1068
beq_cont.10588:
	addi	%r2 %r0 $1	# 1069
	jr	%r31	# 1069
beq.10586:
	addi	%r2 %r0 $0	# 1070
	jr	%r31	# 1070
solver_fast2.2712:
	ld	4(%r16) %r8	# 0
	ld	3(%r16) %r9	# 0
	ld	2(%r16) %r10	# 0
	ld	1(%r16) %r11	# 0
	add	%r25 %r11 %r2	# 1075
	ld	0(%r25) %r11	# 1075
	ld	10(%r11) %r12	# 448
	addi	%r13 %r0 $0	# 1077
	add	%r25 %r12 %r13	# 1077
	fld	0(%r25) %f0	# 1077
	addi	%r13 %r0 $1	# 1078
	add	%r25 %r12 %r13	# 1078
	fld	0(%r25) %f1	# 1078
	addi	%r13 %r0 $2	# 1079
	add	%r25 %r12 %r13	# 1079
	fld	0(%r25) %f2	# 1079
	ld	1(%r3) %r13	# 545
	add	%r25 %r13 %r2	# 1081
	ld	0(%r25) %r2	# 1081
	ld	1(%r11) %r13	# 253
	addi	%r25 %r13 $-1	# 1083
	beq	%r25 %r0 beq.10589	# 1083
	addi	%r25 %r13 $-2	# 1085
	beq	%r25 %r0 beq.10590	# 1085
	add	%r8 %r0 %r12	# 1088
	add	%r3 %r0 %r2	# 1088
	add	%r16 %r0 %r9	# 1088
	add	%r2 %r0 %r11	# 1088
	ld	0(%r16) %r24	# 1088
	jr	%r24	# 1088
beq.10590:
	add	%r3 %r0 %r2	# 1086
	add	%r16 %r0 %r8	# 1086
	add	%r8 %r0 %r12	# 1086
	add	%r2 %r0 %r11	# 1086
	ld	0(%r16) %r24	# 1086
	jr	%r24	# 1086
beq.10589:
	ld	0(%r3) %r3	# 539
	add	%r8 %r0 %r2	# 1084
	add	%r16 %r0 %r10	# 1084
	add	%r2 %r0 %r11	# 1084
	ld	0(%r16) %r24	# 1084
	jr	%r24	# 1084
setup_rect_table.2715:
	addi	%r8 %r0 $6	# 1097
	addi	%r9 %r0 l.8518	# 1097
	fld	0(%r9) %f0	# 1097
	st	-1(%r29) %r3	# 1097
	st	-2(%r29) %r2	# 1097
	add	%r2 %r0 %r8	# 1097
	addi	%r29 %r29 $-3	# 1097
	st	0(%r29) %r31	# 1097
	jal	min_caml_create_float_array	# 1097
	ld	0(%r29) %r31	# 1097
	addi	%r29 %r29 $3	# 1097
	addi	%r3 %r0 $0	# 1099
	ld	-2(%r29) %r8	# 1099
	add	%r25 %r8 %r3	# 1099
	fld	0(%r25) %f0	# 1099
	addi	%r3 %r0 l.8518	# 92
	fld	0(%r3) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10591	# 92
	addi	%r3 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10592	# 92
bclt_true.10591:
	addi	%r3 %r0 $1	# 92
bclt_cont.10592:
	beq	%r3 %r0 beq_true.10593	# 1099
	addi	%r3 %r0 $1	# 1100
	addi	%r9 %r0 l.8518	# 1100
	fld	0(%r9) %f0	# 1100
	add	%r25 %r2 %r3	# 1100
	fst	0(%r25) %f0	# 1100
	beq	%r0 %r0 beq_cont.10594	# 1099
beq_true.10593:
	addi	%r3 %r0 $0	# 1103
	ld	-1(%r29) %r9	# 273
	ld	6(%r9) %r10	# 273
	addi	%r11 %r0 $0	# 1103
	add	%r25 %r8 %r11	# 1103
	fld	0(%r25) %f0	# 1103
	addi	%r11 %r0 l.8518	# 91
	fld	0(%r11) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10595	# 91
	addi	%r11 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10596	# 91
bclt_true.10595:
	addi	%r11 %r0 $1	# 91
bclt_cont.10596:
	beq	%r10 %r0 beq_true.10597	# 110
	beq	%r11 %r0 beq_true.10599	# 110
	addi	%r11 %r0 $0	# 110
	beq	%r0 %r0 beq_cont.10600	# 110
beq_true.10599:
	addi	%r11 %r0 $1	# 110
beq_cont.10600:
	beq	%r0 %r0 beq_cont.10598	# 110
beq_true.10597:
beq_cont.10598:
	ld	4(%r9) %r10	# 291
	addi	%r12 %r0 $0	# 296
	add	%r25 %r10 %r12	# 296
	fld	0(%r25) %f0	# 296
	beq	%r11 %r0 beq_true.10601	# 125
	beq	%r0 %r0 beq_cont.10602	# 125
beq_true.10601:
	fneg	%f0 %f0	# 95
beq_cont.10602:
	add	%r25 %r2 %r3	# 1103
	fst	0(%r25) %f0	# 1103
	addi	%r3 %r0 $1	# 1105
	addi	%r10 %r0 l.8520	# 1105
	fld	0(%r10) %f0	# 1105
	addi	%r10 %r0 $0	# 1105
	add	%r25 %r8 %r10	# 1105
	fld	0(%r25) %f1	# 1105
	finv	%f31 %f1	# 1105
	fmul	%f0 %f0 %f31	# 1105
	add	%r25 %r2 %r3	# 1105
	fst	0(%r25) %f0	# 1105
beq_cont.10594:
	addi	%r3 %r0 $1	# 1107
	add	%r25 %r8 %r3	# 1107
	fld	0(%r25) %f0	# 1107
	addi	%r3 %r0 l.8518	# 92
	fld	0(%r3) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10603	# 92
	addi	%r3 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10604	# 92
bclt_true.10603:
	addi	%r3 %r0 $1	# 92
bclt_cont.10604:
	beq	%r3 %r0 beq_true.10605	# 1107
	addi	%r3 %r0 $3	# 1108
	addi	%r9 %r0 l.8518	# 1108
	fld	0(%r9) %f0	# 1108
	add	%r25 %r2 %r3	# 1108
	fst	0(%r25) %f0	# 1108
	beq	%r0 %r0 beq_cont.10606	# 1107
beq_true.10605:
	addi	%r3 %r0 $2	# 1110
	ld	-1(%r29) %r9	# 273
	ld	6(%r9) %r10	# 273
	addi	%r11 %r0 $1	# 1110
	add	%r25 %r8 %r11	# 1110
	fld	0(%r25) %f0	# 1110
	addi	%r11 %r0 l.8518	# 91
	fld	0(%r11) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10607	# 91
	addi	%r11 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10608	# 91
bclt_true.10607:
	addi	%r11 %r0 $1	# 91
bclt_cont.10608:
	beq	%r10 %r0 beq_true.10609	# 110
	beq	%r11 %r0 beq_true.10611	# 110
	addi	%r11 %r0 $0	# 110
	beq	%r0 %r0 beq_cont.10612	# 110
beq_true.10611:
	addi	%r11 %r0 $1	# 110
beq_cont.10612:
	beq	%r0 %r0 beq_cont.10610	# 110
beq_true.10609:
beq_cont.10610:
	ld	4(%r9) %r10	# 301
	addi	%r12 %r0 $1	# 306
	add	%r25 %r10 %r12	# 306
	fld	0(%r25) %f0	# 306
	beq	%r11 %r0 beq_true.10613	# 125
	beq	%r0 %r0 beq_cont.10614	# 125
beq_true.10613:
	fneg	%f0 %f0	# 95
beq_cont.10614:
	add	%r25 %r2 %r3	# 1110
	fst	0(%r25) %f0	# 1110
	addi	%r3 %r0 $3	# 1111
	addi	%r10 %r0 l.8520	# 1111
	fld	0(%r10) %f0	# 1111
	addi	%r10 %r0 $1	# 1111
	add	%r25 %r8 %r10	# 1111
	fld	0(%r25) %f1	# 1111
	finv	%f31 %f1	# 1111
	fmul	%f0 %f0 %f31	# 1111
	add	%r25 %r2 %r3	# 1111
	fst	0(%r25) %f0	# 1111
beq_cont.10606:
	addi	%r3 %r0 $2	# 1113
	add	%r25 %r8 %r3	# 1113
	fld	0(%r25) %f0	# 1113
	addi	%r3 %r0 l.8518	# 92
	fld	0(%r3) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10615	# 92
	addi	%r3 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10616	# 92
bclt_true.10615:
	addi	%r3 %r0 $1	# 92
bclt_cont.10616:
	beq	%r3 %r0 beq_true.10617	# 1113
	addi	%r3 %r0 $5	# 1114
	addi	%r8 %r0 l.8518	# 1114
	fld	0(%r8) %f0	# 1114
	add	%r25 %r2 %r3	# 1114
	fst	0(%r25) %f0	# 1114
	beq	%r0 %r0 beq_cont.10618	# 1113
beq_true.10617:
	addi	%r3 %r0 $4	# 1116
	ld	-1(%r29) %r9	# 273
	ld	6(%r9) %r10	# 273
	addi	%r11 %r0 $2	# 1116
	add	%r25 %r8 %r11	# 1116
	fld	0(%r25) %f0	# 1116
	addi	%r11 %r0 l.8518	# 91
	fld	0(%r11) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10619	# 91
	addi	%r11 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10620	# 91
bclt_true.10619:
	addi	%r11 %r0 $1	# 91
bclt_cont.10620:
	beq	%r10 %r0 beq_true.10621	# 110
	beq	%r11 %r0 beq_true.10623	# 110
	addi	%r11 %r0 $0	# 110
	beq	%r0 %r0 beq_cont.10624	# 110
beq_true.10623:
	addi	%r11 %r0 $1	# 110
beq_cont.10624:
	beq	%r0 %r0 beq_cont.10622	# 110
beq_true.10621:
beq_cont.10622:
	ld	4(%r9) %r9	# 311
	addi	%r10 %r0 $2	# 316
	add	%r25 %r9 %r10	# 316
	fld	0(%r25) %f0	# 316
	beq	%r11 %r0 beq_true.10625	# 125
	beq	%r0 %r0 beq_cont.10626	# 125
beq_true.10625:
	fneg	%f0 %f0	# 95
beq_cont.10626:
	add	%r25 %r2 %r3	# 1116
	fst	0(%r25) %f0	# 1116
	addi	%r3 %r0 $5	# 1117
	addi	%r9 %r0 l.8520	# 1117
	fld	0(%r9) %f0	# 1117
	addi	%r9 %r0 $2	# 1117
	add	%r25 %r8 %r9	# 1117
	fld	0(%r25) %f1	# 1117
	finv	%f31 %f1	# 1117
	fmul	%f0 %f0 %f31	# 1117
	add	%r25 %r2 %r3	# 1117
	fst	0(%r25) %f0	# 1117
beq_cont.10618:
	jr	%r31	# 1119
setup_surface_table.2718:
	addi	%r8 %r0 $4	# 1124
	addi	%r9 %r0 l.8518	# 1124
	fld	0(%r9) %f0	# 1124
	st	-1(%r29) %r3	# 1124
	st	-2(%r29) %r2	# 1124
	add	%r2 %r0 %r8	# 1124
	addi	%r29 %r29 $-3	# 1124
	st	0(%r29) %r31	# 1124
	jal	min_caml_create_float_array	# 1124
	ld	0(%r29) %r31	# 1124
	addi	%r29 %r29 $3	# 1124
	addi	%r3 %r0 $0	# 1126
	ld	-2(%r29) %r8	# 1126
	add	%r25 %r8 %r3	# 1126
	fld	0(%r25) %f0	# 1126
	ld	-1(%r29) %r3	# 291
	ld	4(%r3) %r9	# 291
	addi	%r10 %r0 $0	# 296
	add	%r25 %r9 %r10	# 296
	fld	0(%r25) %f1	# 296
	fmul	%f0 %f0 %f1	# 1126
	addi	%r9 %r0 $1	# 1126
	add	%r25 %r8 %r9	# 1126
	fld	0(%r25) %f1	# 1126
	ld	4(%r3) %r9	# 301
	addi	%r10 %r0 $1	# 306
	add	%r25 %r9 %r10	# 306
	fld	0(%r25) %f2	# 306
	fmul	%f1 %f1 %f2	# 1126
	fadd	%f0 %f0 %f1	# 1126
	addi	%r9 %r0 $2	# 1126
	add	%r25 %r8 %r9	# 1126
	fld	0(%r25) %f1	# 1126
	ld	4(%r3) %r8	# 311
	addi	%r9 %r0 $2	# 316
	add	%r25 %r8 %r9	# 316
	fld	0(%r25) %f2	# 316
	fmul	%f1 %f1 %f2	# 1126
	fadd	%f0 %f0 %f1	# 1126
	addi	%r8 %r0 l.8518	# 90
	fld	0(%r8) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10627	# 90
	addi	%r8 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10628	# 90
bclt_true.10627:
	addi	%r8 %r0 $1	# 90
bclt_cont.10628:
	beq	%r8 %r0 beq_true.10629	# 1128
	addi	%r8 %r0 $0	# 1130
	addi	%r9 %r0 l.8522	# 1130
	fld	0(%r9) %f1	# 1130
	finv	%f31 %f0	# 1130
	fmul	%f1 %f1 %f31	# 1130
	add	%r25 %r2 %r8	# 1130
	fst	0(%r25) %f1	# 1130
	addi	%r8 %r0 $1	# 1132
	ld	4(%r3) %r9	# 291
	addi	%r10 %r0 $0	# 296
	add	%r25 %r9 %r10	# 296
	fld	0(%r25) %f1	# 296
	finv	%f31 %f0	# 1132
	fmul	%f1 %f1 %f31	# 1132
	fneg	%f1 %f1	# 95
	add	%r25 %r2 %r8	# 1132
	fst	0(%r25) %f1	# 1132
	addi	%r8 %r0 $2	# 1133
	ld	4(%r3) %r9	# 301
	addi	%r10 %r0 $1	# 306
	add	%r25 %r9 %r10	# 306
	fld	0(%r25) %f1	# 306
	finv	%f31 %f0	# 1133
	fmul	%f1 %f1 %f31	# 1133
	fneg	%f1 %f1	# 95
	add	%r25 %r2 %r8	# 1133
	fst	0(%r25) %f1	# 1133
	addi	%r8 %r0 $3	# 1134
	ld	4(%r3) %r3	# 311
	addi	%r9 %r0 $2	# 316
	add	%r25 %r3 %r9	# 316
	fld	0(%r25) %f1	# 316
	finv	%f31 %f0	# 1134
	fmul	%f1 %f1 %f31	# 1134
	fneg	%f1 %f1	# 95
	add	%r25 %r2 %r8	# 1134
	fst	0(%r25) %f1	# 1134
	beq	%r0 %r0 beq_cont.10630	# 1128
beq_true.10629:
	addi	%r3 %r0 $0	# 1136
	addi	%r8 %r0 l.8518	# 1136
	fld	0(%r8) %f0	# 1136
	add	%r25 %r2 %r3	# 1136
	fst	0(%r25) %f0	# 1136
beq_cont.10630:
	jr	%r31	# 1137
setup_second_table.2721:
	addi	%r8 %r0 $5	# 1143
	addi	%r9 %r0 l.8518	# 1143
	fld	0(%r9) %f0	# 1143
	st	-1(%r29) %r3	# 1143
	st	-2(%r29) %r2	# 1143
	add	%r2 %r0 %r8	# 1143
	addi	%r29 %r29 $-3	# 1143
	st	0(%r29) %r31	# 1143
	jal	min_caml_create_float_array	# 1143
	ld	0(%r29) %r31	# 1143
	addi	%r29 %r29 $3	# 1143
	addi	%r3 %r0 $0	# 1145
	ld	-2(%r29) %r8	# 1145
	add	%r25 %r8 %r3	# 1145
	fld	0(%r25) %f0	# 1145
	addi	%r3 %r0 $1	# 1145
	add	%r25 %r8 %r3	# 1145
	fld	0(%r25) %f1	# 1145
	addi	%r3 %r0 $2	# 1145
	add	%r25 %r8 %r3	# 1145
	fld	0(%r25) %f2	# 1145
	ld	-1(%r29) %r3	# 1145
	st	-3(%r29) %r2	# 1145
	add	%r2 %r0 %r3	# 1145
	addi	%r29 %r29 $-4	# 1145
	st	0(%r29) %r31	# 1145
	jal	quadratic.2652	# 1145
	ld	0(%r29) %r31	# 1145
	addi	%r29 %r29 $4	# 1145
	addi	%r2 %r0 $0	# 1146
	ld	-2(%r29) %r3	# 1146
	add	%r25 %r3 %r2	# 1146
	fld	0(%r25) %f1	# 1146
	ld	-1(%r29) %r2	# 291
	ld	4(%r2) %r8	# 291
	addi	%r9 %r0 $0	# 296
	add	%r25 %r8 %r9	# 296
	fld	0(%r25) %f2	# 296
	fmul	%f1 %f1 %f2	# 1146
	fneg	%f1 %f1	# 95
	addi	%r8 %r0 $1	# 1147
	add	%r25 %r3 %r8	# 1147
	fld	0(%r25) %f2	# 1147
	ld	4(%r2) %r8	# 301
	addi	%r9 %r0 $1	# 306
	add	%r25 %r8 %r9	# 306
	fld	0(%r25) %f3	# 306
	fmul	%f2 %f2 %f3	# 1147
	fneg	%f2 %f2	# 95
	addi	%r8 %r0 $2	# 1148
	add	%r25 %r3 %r8	# 1148
	fld	0(%r25) %f3	# 1148
	ld	4(%r2) %r8	# 311
	addi	%r9 %r0 $2	# 316
	add	%r25 %r8 %r9	# 316
	fld	0(%r25) %f4	# 316
	fmul	%f3 %f3 %f4	# 1148
	fneg	%f3 %f3	# 95
	addi	%r8 %r0 $0	# 1150
	ld	-3(%r29) %r9	# 1150
	add	%r25 %r9 %r8	# 1150
	fst	0(%r25) %f0	# 1150
	ld	3(%r2) %r8	# 282
	beq	%r8 %r0 beq_true.10631	# 1154
	addi	%r8 %r0 $1	# 1155
	addi	%r10 %r0 $2	# 1155
	add	%r25 %r3 %r10	# 1155
	fld	0(%r25) %f4	# 1155
	ld	9(%r2) %r10	# 421
	addi	%r11 %r0 $1	# 426
	add	%r25 %r10 %r11	# 426
	fld	0(%r25) %f5	# 426
	fmul	%f4 %f4 %f5	# 1155
	addi	%r10 %r0 $1	# 1155
	add	%r25 %r3 %r10	# 1155
	fld	0(%r25) %f5	# 1155
	ld	9(%r2) %r10	# 431
	addi	%r11 %r0 $2	# 436
	add	%r25 %r10 %r11	# 436
	fld	0(%r25) %f6	# 436
	fmul	%f5 %f5 %f6	# 1155
	fadd	%f4 %f4 %f5	# 1155
	addi	%r10 %r0 l.8586	# 93
	fld	0(%r10) %f5	# 93
	fmul	%f4 %f4 %f5	# 93
	fneg	%f31 %f4	# 1155
	fadd	%f1 %f1 %f31	# 1155
	add	%r25 %r9 %r8	# 1155
	fst	0(%r25) %f1	# 1155
	addi	%r8 %r0 $2	# 1156
	addi	%r10 %r0 $2	# 1156
	add	%r25 %r3 %r10	# 1156
	fld	0(%r25) %f1	# 1156
	ld	9(%r2) %r10	# 411
	addi	%r11 %r0 $0	# 416
	add	%r25 %r10 %r11	# 416
	fld	0(%r25) %f4	# 416
	fmul	%f1 %f1 %f4	# 1156
	addi	%r10 %r0 $0	# 1156
	add	%r25 %r3 %r10	# 1156
	fld	0(%r25) %f4	# 1156
	ld	9(%r2) %r10	# 431
	addi	%r11 %r0 $2	# 436
	add	%r25 %r10 %r11	# 436
	fld	0(%r25) %f5	# 436
	fmul	%f4 %f4 %f5	# 1156
	fadd	%f1 %f1 %f4	# 1156
	addi	%r10 %r0 l.8586	# 93
	fld	0(%r10) %f4	# 93
	fmul	%f1 %f1 %f4	# 93
	fneg	%f31 %f1	# 1156
	fadd	%f2 %f2 %f31	# 1156
	add	%r25 %r9 %r8	# 1156
	fst	0(%r25) %f2	# 1156
	addi	%r8 %r0 $3	# 1157
	addi	%r10 %r0 $1	# 1157
	add	%r25 %r3 %r10	# 1157
	fld	0(%r25) %f1	# 1157
	ld	9(%r2) %r10	# 411
	addi	%r11 %r0 $0	# 416
	add	%r25 %r10 %r11	# 416
	fld	0(%r25) %f2	# 416
	fmul	%f1 %f1 %f2	# 1157
	addi	%r10 %r0 $0	# 1157
	add	%r25 %r3 %r10	# 1157
	fld	0(%r25) %f2	# 1157
	ld	9(%r2) %r2	# 421
	addi	%r3 %r0 $1	# 426
	add	%r25 %r2 %r3	# 426
	fld	0(%r25) %f4	# 426
	fmul	%f2 %f2 %f4	# 1157
	fadd	%f1 %f1 %f2	# 1157
	addi	%r2 %r0 l.8586	# 93
	fld	0(%r2) %f2	# 93
	fmul	%f1 %f1 %f2	# 93
	fneg	%f31 %f1	# 1157
	fadd	%f3 %f3 %f31	# 1157
	add	%r25 %r9 %r8	# 1157
	fst	0(%r25) %f3	# 1157
	beq	%r0 %r0 beq_cont.10632	# 1154
beq_true.10631:
	addi	%r2 %r0 $1	# 1159
	add	%r25 %r9 %r2	# 1159
	fst	0(%r25) %f1	# 1159
	addi	%r2 %r0 $2	# 1160
	add	%r25 %r9 %r2	# 1160
	fst	0(%r25) %f2	# 1160
	addi	%r2 %r0 $3	# 1161
	add	%r25 %r9 %r2	# 1161
	fst	0(%r25) %f3	# 1161
beq_cont.10632:
	addi	%r2 %r0 l.8518	# 92
	fld	0(%r2) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10633	# 92
	addi	%r2 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10634	# 92
bclt_true.10633:
	addi	%r2 %r0 $1	# 92
bclt_cont.10634:
	beq	%r2 %r0 beq_true.10635	# 1163
	beq	%r0 %r0 beq_cont.10636	# 1163
beq_true.10635:
	addi	%r2 %r0 $4	# 1164
	addi	%r3 %r0 l.8520	# 1164
	fld	0(%r3) %f1	# 1164
	finv	%f31 %f0	# 1164
	fmul	%f1 %f1 %f31	# 1164
	add	%r25 %r9 %r2	# 1164
	fst	0(%r25) %f1	# 1164
beq_cont.10636:
	add	%r2 %r0 %r9	# 1166
	jr	%r31	# 1166
iter_setup_dirvec_constants.2724:
	ld	1(%r16) %r8	# 0
	sub	%r25 %r0 %r3	# 1172
	addi	%r25 %r25 $0	# 1172
	slt	%r25 %r0 %r25	# 1172
	beq	%r25 %r0 beq.10637	# 1172
	jr	%r31	# 1185
beq.10637:
	add	%r25 %r8 %r3	# 1173
	ld	0(%r25) %r8	# 1173
	ld	1(%r2) %r9	# 545
	ld	0(%r2) %r10	# 539
	ld	1(%r8) %r11	# 253
	st	-1(%r29) %r2	# 1177
	st	-2(%r29) %r16	# 1177
	addi	%r25 %r11 $-1	# 1177
	beq	%r25 %r0 beq_true.10639	# 1177
	addi	%r25 %r11 $-2	# 1179
	beq	%r25 %r0 beq_true.10641	# 1179
	st	-3(%r29) %r3	# 1182
	st	-4(%r29) %r9	# 1182
	add	%r3 %r0 %r8	# 1182
	add	%r2 %r0 %r10	# 1182
	addi	%r29 %r29 $-5	# 1182
	st	0(%r29) %r31	# 1182
	jal	setup_second_table.2721	# 1182
	ld	0(%r29) %r31	# 1182
	addi	%r29 %r29 $5	# 1182
	ld	-3(%r29) %r3	# 1182
	ld	-4(%r29) %r8	# 1182
	add	%r25 %r8 %r3	# 1182
	st	0(%r25) %r2	# 1182
	beq	%r0 %r0 beq_cont.10642	# 1179
beq_true.10641:
	st	-3(%r29) %r3	# 1180
	st	-4(%r29) %r9	# 1180
	add	%r3 %r0 %r8	# 1180
	add	%r2 %r0 %r10	# 1180
	addi	%r29 %r29 $-5	# 1180
	st	0(%r29) %r31	# 1180
	jal	setup_surface_table.2718	# 1180
	ld	0(%r29) %r31	# 1180
	addi	%r29 %r29 $5	# 1180
	ld	-3(%r29) %r3	# 1180
	ld	-4(%r29) %r8	# 1180
	add	%r25 %r8 %r3	# 1180
	st	0(%r25) %r2	# 1180
beq_cont.10642:
	beq	%r0 %r0 beq_cont.10640	# 1177
beq_true.10639:
	st	-3(%r29) %r3	# 1178
	st	-4(%r29) %r9	# 1178
	add	%r3 %r0 %r8	# 1178
	add	%r2 %r0 %r10	# 1178
	addi	%r29 %r29 $-5	# 1178
	st	0(%r29) %r31	# 1178
	jal	setup_rect_table.2715	# 1178
	ld	0(%r29) %r31	# 1178
	addi	%r29 %r29 $5	# 1178
	ld	-3(%r29) %r3	# 1178
	ld	-4(%r29) %r8	# 1178
	add	%r25 %r8 %r3	# 1178
	st	0(%r25) %r2	# 1178
beq_cont.10640:
	addi	%r3 %r3 $-1	# 1184
	ld	-1(%r29) %r2	# 1184
	ld	-2(%r29) %r8	# 1184
	add	%r16 %r0 %r8	# 1184
	ld	0(%r16) %r24	# 1184
	jr	%r24	# 1184
setup_startp_constants.2729:
	ld	1(%r16) %r8	# 0
	sub	%r25 %r0 %r3	# 1197
	addi	%r25 %r25 $0	# 1197
	slt	%r25 %r0 %r25	# 1197
	beq	%r25 %r0 beq.10643	# 1197
	jr	%r31	# 1212
beq.10643:
	add	%r25 %r8 %r3	# 1198
	ld	0(%r25) %r8	# 1198
	ld	10(%r8) %r9	# 448
	ld	1(%r8) %r10	# 253
	addi	%r11 %r0 $0	# 1201
	addi	%r12 %r0 $0	# 1201
	add	%r25 %r2 %r12	# 1201
	fld	0(%r25) %f0	# 1201
	ld	5(%r8) %r12	# 331
	addi	%r13 %r0 $0	# 336
	add	%r25 %r12 %r13	# 336
	fld	0(%r25) %f1	# 336
	fneg	%f31 %f1	# 1201
	fadd	%f0 %f0 %f31	# 1201
	add	%r25 %r9 %r11	# 1201
	fst	0(%r25) %f0	# 1201
	addi	%r11 %r0 $1	# 1202
	addi	%r12 %r0 $1	# 1202
	add	%r25 %r2 %r12	# 1202
	fld	0(%r25) %f0	# 1202
	ld	5(%r8) %r12	# 341
	addi	%r13 %r0 $1	# 346
	add	%r25 %r12 %r13	# 346
	fld	0(%r25) %f1	# 346
	fneg	%f31 %f1	# 1202
	fadd	%f0 %f0 %f31	# 1202
	add	%r25 %r9 %r11	# 1202
	fst	0(%r25) %f0	# 1202
	addi	%r11 %r0 $2	# 1203
	addi	%r12 %r0 $2	# 1203
	add	%r25 %r2 %r12	# 1203
	fld	0(%r25) %f0	# 1203
	ld	5(%r8) %r12	# 351
	addi	%r13 %r0 $2	# 356
	add	%r25 %r12 %r13	# 356
	fld	0(%r25) %f1	# 356
	fneg	%f31 %f1	# 1203
	fadd	%f0 %f0 %f31	# 1203
	add	%r25 %r9 %r11	# 1203
	fst	0(%r25) %f0	# 1203
	st	-1(%r29) %r2	# 1204
	st	-2(%r29) %r16	# 1204
	st	-3(%r29) %r3	# 1204
	addi	%r25 %r10 $-2	# 1204
	beq	%r25 %r0 beq_true.10645	# 1204
	sub	%r25 %r0 %r10	# 1207
	addi	%r25 %r25 $2	# 1207
	slt	%r25 %r25 %r0	# 1207
	beq	%r25 %r0 beq_true.10647	# 1207
	addi	%r11 %r0 $0	# 1208
	add	%r25 %r9 %r11	# 1208
	fld	0(%r25) %f0	# 1208
	addi	%r11 %r0 $1	# 1208
	add	%r25 %r9 %r11	# 1208
	fld	0(%r25) %f1	# 1208
	addi	%r11 %r0 $2	# 1208
	add	%r25 %r9 %r11	# 1208
	fld	0(%r25) %f2	# 1208
	st	-4(%r29) %r9	# 1208
	st	-5(%r29) %r10	# 1208
	add	%r2 %r0 %r8	# 1208
	addi	%r29 %r29 $-6	# 1208
	st	0(%r29) %r31	# 1208
	jal	quadratic.2652	# 1208
	ld	0(%r29) %r31	# 1208
	addi	%r29 %r29 $6	# 1208
	addi	%r2 %r0 $3	# 1209
	ld	-5(%r29) %r3	# 1209
	addi	%r25 %r3 $-3	# 1209
	beq	%r25 %r0 beq_true.10649	# 1209
	beq	%r0 %r0 beq_cont.10650	# 1209
beq_true.10649:
	addi	%r3 %r0 l.8520	# 1209
	fld	0(%r3) %f1	# 1209
	fneg	%f31 %f1	# 1209
	fadd	%f0 %f0 %f31	# 1209
beq_cont.10650:
	ld	-4(%r29) %r3	# 1209
	add	%r25 %r3 %r2	# 1209
	fst	0(%r25) %f0	# 1209
	beq	%r0 %r0 beq_cont.10648	# 1207
beq_true.10647:
beq_cont.10648:
	beq	%r0 %r0 beq_cont.10646	# 1204
beq_true.10645:
	addi	%r10 %r0 $3	# 1205
	ld	4(%r8) %r8	# 321
	addi	%r11 %r0 $0	# 1206
	add	%r25 %r9 %r11	# 1206
	fld	0(%r25) %f0	# 1206
	addi	%r11 %r0 $1	# 1206
	add	%r25 %r9 %r11	# 1206
	fld	0(%r25) %f1	# 1206
	addi	%r11 %r0 $2	# 1206
	add	%r25 %r9 %r11	# 1206
	fld	0(%r25) %f2	# 1206
	st	-6(%r29) %r10	# 1206
	st	-4(%r29) %r9	# 1206
	add	%r2 %r0 %r8	# 1206
	addi	%r29 %r29 $-7	# 1206
	st	0(%r29) %r31	# 1206
	jal	veciprod2.2515	# 1206
	ld	0(%r29) %r31	# 1206
	addi	%r29 %r29 $7	# 1206
	ld	-6(%r29) %r2	# 1205
	ld	-4(%r29) %r3	# 1205
	add	%r25 %r3 %r2	# 1205
	fst	0(%r25) %f0	# 1205
beq_cont.10646:
	ld	-3(%r29) %r2	# 1211
	addi	%r3 %r2 $-1	# 1211
	ld	-1(%r29) %r2	# 1211
	ld	-2(%r29) %r8	# 1211
	add	%r16 %r0 %r8	# 1211
	ld	0(%r16) %r24	# 1211
	jr	%r24	# 1211
is_rect_outside.2734:
	fst	-1(%r29) %f2	# 1229
	fst	-2(%r29) %f1	# 1229
	st	-3(%r29) %r2	# 1229
	fabs	%f0 %f0	# 1229
	ld	-3(%r29) %r2	# 291
	ld	4(%r2) %r3	# 291
	addi	%r8 %r0 $0	# 296
	add	%r25 %r3 %r8	# 296
	fld	0(%r25) %f1	# 296
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10651	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10652	# 89
bclt_true.10651:
	addi	%r3 %r0 $1	# 89
bclt_cont.10652:
	beq	%r3 %r0 beq_true.10653	# 1229
	fld	-2(%r29) %f0	# 1230
	fabs	%f0 %f0	# 1230
	ld	-3(%r29) %r2	# 301
	ld	4(%r2) %r3	# 301
	addi	%r8 %r0 $1	# 306
	add	%r25 %r3 %r8	# 306
	fld	0(%r25) %f1	# 306
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10655	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10656	# 89
bclt_true.10655:
	addi	%r3 %r0 $1	# 89
bclt_cont.10656:
	beq	%r3 %r0 beq_true.10657	# 1230
	fld	-1(%r29) %f0	# 1231
	fabs	%f0 %f0	# 1231
	ld	-3(%r29) %r2	# 311
	ld	4(%r2) %r3	# 311
	addi	%r8 %r0 $2	# 316
	add	%r25 %r3 %r8	# 316
	fld	0(%r25) %f1	# 316
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10659	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10660	# 89
bclt_true.10659:
	addi	%r3 %r0 $1	# 89
bclt_cont.10660:
	beq	%r0 %r0 beq_cont.10658	# 1230
beq_true.10657:
	addi	%r3 %r0 $0	# 1232
beq_cont.10658:
	beq	%r0 %r0 beq_cont.10654	# 1229
beq_true.10653:
	addi	%r3 %r0 $0	# 1233
beq_cont.10654:
	beq	%r3 %r0 beq.10661	# 1228
	ld	6(%r2) %r2	# 273
	jr	%r31	# 277
beq.10661:
	ld	6(%r2) %r2	# 273
	beq	%r2 %r0 beq.10662	# 1234
	addi	%r2 %r0 $0	# 1234
	jr	%r31	# 1234
beq.10662:
	addi	%r2 %r0 $1	# 1234
	jr	%r31	# 1234
is_second_outside.2744:
	st	-1(%r29) %r2	# 1245
	addi	%r29 %r29 $-2	# 1245
	st	0(%r29) %r31	# 1245
	jal	quadratic.2652	# 1245
	ld	0(%r29) %r31	# 1245
	addi	%r29 %r29 $2	# 1245
	ld	-1(%r29) %r2	# 253
	ld	1(%r2) %r3	# 253
	addi	%r25 %r3 $-3	# 1246
	beq	%r25 %r0 beq_true.10663	# 1246
	beq	%r0 %r0 beq_cont.10664	# 1246
beq_true.10663:
	addi	%r3 %r0 l.8520	# 1246
	fld	0(%r3) %f1	# 1246
	fneg	%f31 %f1	# 1246
	fadd	%f0 %f0 %f31	# 1246
beq_cont.10664:
	ld	6(%r2) %r2	# 273
	addi	%r3 %r0 l.8518	# 91
	fld	0(%r3) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10665	# 91
	addi	%r3 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10666	# 91
bclt_true.10665:
	addi	%r3 %r0 $1	# 91
bclt_cont.10666:
	beq	%r2 %r0 beq_true.10667	# 110
	beq	%r3 %r0 beq_true.10669	# 110
	addi	%r3 %r0 $0	# 110
	beq	%r0 %r0 beq_cont.10670	# 110
beq_true.10669:
	addi	%r3 %r0 $1	# 110
beq_cont.10670:
	beq	%r0 %r0 beq_cont.10668	# 110
beq_true.10667:
beq_cont.10668:
	beq	%r3 %r0 beq.10671	# 1247
	addi	%r2 %r0 $0	# 1247
	jr	%r31	# 1247
beq.10671:
	addi	%r2 %r0 $1	# 1247
	jr	%r31	# 1247
is_outside.2749:
	ld	5(%r2) %r3	# 331
	addi	%r8 %r0 $0	# 336
	add	%r25 %r3 %r8	# 336
	fld	0(%r25) %f3	# 336
	fneg	%f31 %f3	# 1252
	fadd	%f0 %f0 %f31	# 1252
	ld	5(%r2) %r3	# 341
	addi	%r8 %r0 $1	# 346
	add	%r25 %r3 %r8	# 346
	fld	0(%r25) %f3	# 346
	fneg	%f31 %f3	# 1253
	fadd	%f1 %f1 %f31	# 1253
	ld	5(%r2) %r3	# 351
	addi	%r8 %r0 $2	# 356
	add	%r25 %r3 %r8	# 356
	fld	0(%r25) %f3	# 356
	fneg	%f31 %f3	# 1254
	fadd	%f2 %f2 %f31	# 1254
	ld	1(%r2) %r3	# 253
	addi	%r25 %r3 $-1	# 1256
	beq	%r25 %r0 beq.10672	# 1256
	addi	%r25 %r3 $-2	# 1258
	beq	%r25 %r0 beq.10673	# 1258
	beq	%r0 %r0 is_second_outside.2744	# 1261
beq.10673:
	ld	4(%r2) %r3	# 321
	st	-1(%r29) %r2	# 1239
	add	%r2 %r0 %r3	# 1239
	addi	%r29 %r29 $-2	# 1239
	st	0(%r29) %r31	# 1239
	jal	veciprod2.2515	# 1239
	ld	0(%r29) %r31	# 1239
	addi	%r29 %r29 $2	# 1239
	ld	-1(%r29) %r2	# 273
	ld	6(%r2) %r2	# 273
	addi	%r3 %r0 l.8518	# 91
	fld	0(%r3) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10674	# 91
	addi	%r3 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10675	# 91
bclt_true.10674:
	addi	%r3 %r0 $1	# 91
bclt_cont.10675:
	beq	%r2 %r0 beq_true.10676	# 110
	beq	%r3 %r0 beq_true.10678	# 110
	addi	%r3 %r0 $0	# 110
	beq	%r0 %r0 beq_cont.10679	# 110
beq_true.10678:
	addi	%r3 %r0 $1	# 110
beq_cont.10679:
	beq	%r0 %r0 beq_cont.10677	# 110
beq_true.10676:
beq_cont.10677:
	beq	%r3 %r0 beq.10680	# 1240
	addi	%r2 %r0 $0	# 1240
	jr	%r31	# 1240
beq.10680:
	addi	%r2 %r0 $1	# 1240
	jr	%r31	# 1240
beq.10672:
	beq	%r0 %r0 is_rect_outside.2734	# 1257
check_all_inside.2754:
	ld	1(%r16) %r8	# 0
	add	%r25 %r3 %r2	# 1266
	ld	0(%r25) %r9	# 1266
	addi	%r25 %r9 $1	# 1267
	beq	%r25 %r0 beq.10681	# 1267
	add	%r25 %r8 %r9	# 1270
	ld	0(%r25) %r9	# 1270
	st	-1(%r29) %r16	# 1270
	fst	-2(%r29) %f2	# 1270
	fst	-3(%r29) %f1	# 1270
	fst	-4(%r29) %f0	# 1270
	st	-5(%r29) %r8	# 1270
	st	-6(%r29) %r3	# 1270
	st	-7(%r29) %r2	# 1270
	add	%r2 %r0 %r9	# 1270
	addi	%r29 %r29 $-8	# 1270
	st	0(%r29) %r31	# 1270
	jal	is_outside.2749	# 1270
	ld	0(%r29) %r31	# 1270
	addi	%r29 %r29 $8	# 1270
	beq	%r2 %r0 beq.10682	# 1270
	addi	%r2 %r0 $0	# 1271
	jr	%r31	# 1271
beq.10682:
	ld	-7(%r29) %r2	# 1273
	addi	%r2 %r2 $1	# 1273
	ld	-6(%r29) %r3	# 1266
	add	%r25 %r3 %r2	# 1266
	ld	0(%r25) %r8	# 1266
	addi	%r25 %r8 $1	# 1267
	beq	%r25 %r0 beq.10683	# 1267
	ld	-5(%r29) %r9	# 1270
	add	%r25 %r9 %r8	# 1270
	ld	0(%r25) %r8	# 1270
	fld	-4(%r29) %f0	# 1270
	fld	-3(%r29) %f1	# 1270
	fld	-2(%r29) %f2	# 1270
	st	-8(%r29) %r2	# 1270
	add	%r2 %r0 %r8	# 1270
	addi	%r29 %r29 $-9	# 1270
	st	0(%r29) %r31	# 1270
	jal	is_outside.2749	# 1270
	ld	0(%r29) %r31	# 1270
	addi	%r29 %r29 $9	# 1270
	beq	%r2 %r0 beq.10684	# 1270
	addi	%r2 %r0 $0	# 1271
	jr	%r31	# 1271
beq.10684:
	ld	-8(%r29) %r2	# 1273
	addi	%r2 %r2 $1	# 1273
	fld	-4(%r29) %f0	# 1273
	fld	-3(%r29) %f1	# 1273
	fld	-2(%r29) %f2	# 1273
	ld	-6(%r29) %r3	# 1273
	ld	-1(%r29) %r8	# 1273
	add	%r16 %r0 %r8	# 1273
	ld	0(%r16) %r24	# 1273
	jr	%r24	# 1273
beq.10683:
	addi	%r2 %r0 $1	# 1268
	jr	%r31	# 1268
beq.10681:
	addi	%r2 %r0 $1	# 1268
	jr	%r31	# 1268
shadow_check_and_group.2760:
	ld	7(%r16) %r8	# 0
	ld	6(%r16) %r9	# 0
	ld	5(%r16) %r10	# 0
	ld	4(%r16) %r11	# 0
	ld	3(%r16) %r12	# 0
	ld	2(%r16) %r13	# 0
	ld	1(%r16) %r14	# 0
	add	%r25 %r3 %r2	# 1286
	ld	0(%r25) %r15	# 1286
	addi	%r25 %r15 $1	# 1286
	beq	%r25 %r0 beq.10685	# 1286
	add	%r25 %r3 %r2	# 1289
	ld	0(%r25) %r15	# 1289
	st	-1(%r29) %r14	# 1290
	st	-2(%r29) %r13	# 1290
	st	-3(%r29) %r12	# 1290
	st	-4(%r29) %r3	# 1290
	st	-5(%r29) %r16	# 1290
	st	-6(%r29) %r2	# 1290
	st	-7(%r29) %r15	# 1290
	st	-8(%r29) %r10	# 1290
	st	-9(%r29) %r9	# 1290
	add	%r3 %r0 %r11	# 1290
	add	%r2 %r0 %r15	# 1290
	add	%r16 %r0 %r8	# 1290
	add	%r8 %r0 %r13	# 1290
	addi	%r29 %r29 $-10	# 1290
	st	0(%r29) %r31	# 1290
	ld	0(%r16) %r24	# 1290
	jalr	%r24	# 1290
	ld	0(%r29) %r31	# 1290
	addi	%r29 %r29 $10	# 1290
	addi	%r3 %r0 $0	# 1291
	ld	-9(%r29) %r8	# 1291
	add	%r25 %r8 %r3	# 1291
	fld	0(%r25) %f0	# 1291
	beq	%r2 %r0 beq_true.10686	# 1292
	addi	%r2 %r0 l.8628	# 1292
	fld	0(%r2) %f1	# 1292
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10688	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10689	# 89
bclt_true.10688:
	addi	%r2 %r0 $1	# 89
bclt_cont.10689:
	beq	%r0 %r0 beq_cont.10687	# 1292
beq_true.10686:
	addi	%r2 %r0 $0	# 1292
beq_cont.10687:
	beq	%r2 %r0 beq.10690	# 1292
	addi	%r2 %r0 l.8630	# 1295
	fld	0(%r2) %f1	# 1295
	fadd	%f0 %f0 %f1	# 1295
	addi	%r2 %r0 $0	# 1296
	ld	-3(%r29) %r3	# 1296
	add	%r25 %r3 %r2	# 1296
	fld	0(%r25) %f1	# 1296
	fmul	%f1 %f1 %f0	# 1296
	addi	%r2 %r0 $0	# 1296
	ld	-2(%r29) %r8	# 1296
	add	%r25 %r8 %r2	# 1296
	fld	0(%r25) %f2	# 1296
	fadd	%f1 %f1 %f2	# 1296
	addi	%r2 %r0 $1	# 1297
	add	%r25 %r3 %r2	# 1297
	fld	0(%r25) %f2	# 1297
	fmul	%f2 %f2 %f0	# 1297
	addi	%r2 %r0 $1	# 1297
	add	%r25 %r8 %r2	# 1297
	fld	0(%r25) %f3	# 1297
	fadd	%f2 %f2 %f3	# 1297
	addi	%r2 %r0 $2	# 1298
	add	%r25 %r3 %r2	# 1298
	fld	0(%r25) %f3	# 1298
	fmul	%f3 %f3 %f0	# 1298
	addi	%r2 %r0 $2	# 1298
	add	%r25 %r8 %r2	# 1298
	fld	0(%r25) %f0	# 1298
	fadd	%f3 %f3 %f0	# 1298
	addi	%r2 %r0 $0	# 1299
	ld	-4(%r29) %r3	# 1266
	add	%r25 %r3 %r2	# 1266
	ld	0(%r25) %r2	# 1266
	addi	%r25 %r2 $1	# 1267
	beq	%r25 %r0 beq_true.10691	# 1267
	ld	-8(%r29) %r8	# 1270
	add	%r25 %r8 %r2	# 1270
	ld	0(%r25) %r2	# 1270
	fst	-10(%r29) %f3	# 1270
	fst	-11(%r29) %f2	# 1270
	fst	-12(%r29) %f1	# 1270
	fmov	%f0 %f1	# 1270
	fmov	%f1 %f2	# 1270
	fmov	%f2 %f3	# 1270
	addi	%r29 %r29 $-13	# 1270
	st	0(%r29) %r31	# 1270
	jal	is_outside.2749	# 1270
	ld	0(%r29) %r31	# 1270
	addi	%r29 %r29 $13	# 1270
	beq	%r2 %r0 beq_true.10693	# 1270
	addi	%r2 %r0 $0	# 1271
	beq	%r0 %r0 beq_cont.10694	# 1270
beq_true.10693:
	addi	%r2 %r0 $1	# 1273
	fld	-12(%r29) %f0	# 1273
	fld	-11(%r29) %f1	# 1273
	fld	-10(%r29) %f2	# 1273
	ld	-4(%r29) %r3	# 1273
	ld	-1(%r29) %r8	# 1273
	add	%r16 %r0 %r8	# 1273
	addi	%r29 %r29 $-13	# 1273
	st	0(%r29) %r31	# 1273
	ld	0(%r16) %r24	# 1273
	jalr	%r24	# 1273
	ld	0(%r29) %r31	# 1273
	addi	%r29 %r29 $13	# 1273
beq_cont.10694:
	beq	%r0 %r0 beq_cont.10692	# 1267
beq_true.10691:
	addi	%r2 %r0 $1	# 1268
beq_cont.10692:
	beq	%r2 %r0 beq.10695	# 1299
	addi	%r2 %r0 $1	# 1300
	jr	%r31	# 1300
beq.10695:
	ld	-6(%r29) %r2	# 1302
	addi	%r2 %r2 $1	# 1302
	ld	-4(%r29) %r3	# 1302
	ld	-5(%r29) %r8	# 1302
	add	%r16 %r0 %r8	# 1302
	ld	0(%r16) %r24	# 1302
	jr	%r24	# 1302
beq.10690:
	ld	-7(%r29) %r2	# 1308
	ld	-8(%r29) %r3	# 1308
	add	%r25 %r3 %r2	# 1308
	ld	0(%r25) %r2	# 1308
	ld	6(%r2) %r2	# 273
	beq	%r2 %r0 beq.10696	# 1308
	ld	-6(%r29) %r2	# 1309
	addi	%r2 %r2 $1	# 1309
	ld	-4(%r29) %r3	# 1309
	ld	-5(%r29) %r8	# 1309
	add	%r16 %r0 %r8	# 1309
	ld	0(%r16) %r24	# 1309
	jr	%r24	# 1309
beq.10696:
	addi	%r2 %r0 $0	# 1311
	jr	%r31	# 1311
beq.10685:
	addi	%r2 %r0 $0	# 1287
	jr	%r31	# 1287
shadow_check_one_or_group.2763:
	ld	2(%r16) %r8	# 0
	ld	1(%r16) %r9	# 0
	add	%r25 %r3 %r2	# 1316
	ld	0(%r25) %r10	# 1316
	addi	%r25 %r10 $1	# 1317
	beq	%r25 %r0 beq.10697	# 1317
	add	%r25 %r9 %r10	# 1320
	ld	0(%r25) %r9	# 1320
	addi	%r10 %r0 $0	# 1321
	st	-1(%r29) %r3	# 1321
	st	-2(%r29) %r16	# 1321
	st	-3(%r29) %r2	# 1321
	add	%r3 %r0 %r9	# 1321
	add	%r2 %r0 %r10	# 1321
	add	%r16 %r0 %r8	# 1321
	addi	%r29 %r29 $-4	# 1321
	st	0(%r29) %r31	# 1321
	ld	0(%r16) %r24	# 1321
	jalr	%r24	# 1321
	ld	0(%r29) %r31	# 1321
	addi	%r29 %r29 $4	# 1321
	beq	%r2 %r0 beq.10698	# 1322
	addi	%r2 %r0 $1	# 1323
	jr	%r31	# 1323
beq.10698:
	ld	-3(%r29) %r2	# 1325
	addi	%r2 %r2 $1	# 1325
	ld	-1(%r29) %r3	# 1325
	ld	-2(%r29) %r8	# 1325
	add	%r16 %r0 %r8	# 1325
	ld	0(%r16) %r24	# 1325
	jr	%r24	# 1325
beq.10697:
	addi	%r2 %r0 $0	# 1318
	jr	%r31	# 1318
shadow_check_one_or_matrix.2766:
	ld	5(%r16) %r8	# 0
	ld	4(%r16) %r9	# 0
	ld	3(%r16) %r10	# 0
	ld	2(%r16) %r11	# 0
	ld	1(%r16) %r12	# 0
	add	%r25 %r3 %r2	# 1331
	ld	0(%r25) %r13	# 1331
	addi	%r14 %r0 $0	# 1332
	add	%r25 %r13 %r14	# 1332
	ld	0(%r25) %r14	# 1332
	addi	%r25 %r14 $1	# 1333
	beq	%r25 %r0 beq.10699	# 1333
	st	-1(%r29) %r13	# 1337
	st	-2(%r29) %r10	# 1337
	st	-3(%r29) %r3	# 1337
	st	-4(%r29) %r16	# 1337
	st	-5(%r29) %r2	# 1337
	addi	%r25 %r14 $-99	# 1337
	beq	%r25 %r0 beq_true.10700	# 1337
	st	-6(%r29) %r9	# 1340
	add	%r3 %r0 %r11	# 1340
	add	%r2 %r0 %r14	# 1340
	add	%r16 %r0 %r8	# 1340
	add	%r8 %r0 %r12	# 1340
	addi	%r29 %r29 $-7	# 1340
	st	0(%r29) %r31	# 1340
	ld	0(%r16) %r24	# 1340
	jalr	%r24	# 1340
	ld	0(%r29) %r31	# 1340
	addi	%r29 %r29 $7	# 1340
	beq	%r2 %r0 beq_true.10702	# 1343
	addi	%r2 %r0 $0	# 1344
	ld	-6(%r29) %r3	# 1344
	add	%r25 %r3 %r2	# 1344
	fld	0(%r25) %f0	# 1344
	addi	%r2 %r0 l.8632	# 1344
	fld	0(%r2) %f1	# 1344
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10704	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10705	# 89
bclt_true.10704:
	addi	%r2 %r0 $1	# 89
bclt_cont.10705:
	beq	%r2 %r0 beq_true.10706	# 1344
	addi	%r2 %r0 $1	# 1345
	ld	-1(%r29) %r3	# 1345
	ld	-2(%r29) %r8	# 1345
	add	%r16 %r0 %r8	# 1345
	addi	%r29 %r29 $-7	# 1345
	st	0(%r29) %r31	# 1345
	ld	0(%r16) %r24	# 1345
	jalr	%r24	# 1345
	ld	0(%r29) %r31	# 1345
	addi	%r29 %r29 $7	# 1345
	beq	%r2 %r0 beq_true.10708	# 1345
	addi	%r2 %r0 $1	# 1346
	beq	%r0 %r0 beq_cont.10709	# 1345
beq_true.10708:
	addi	%r2 %r0 $0	# 1347
beq_cont.10709:
	beq	%r0 %r0 beq_cont.10707	# 1344
beq_true.10706:
	addi	%r2 %r0 $0	# 1348
beq_cont.10707:
	beq	%r0 %r0 beq_cont.10703	# 1343
beq_true.10702:
	addi	%r2 %r0 $0	# 1349
beq_cont.10703:
	beq	%r0 %r0 beq_cont.10701	# 1337
beq_true.10700:
	addi	%r2 %r0 $1	# 1338
beq_cont.10701:
	beq	%r2 %r0 beq.10710	# 1336
	addi	%r2 %r0 $1	# 1351
	ld	-1(%r29) %r3	# 1351
	ld	-2(%r29) %r8	# 1351
	add	%r16 %r0 %r8	# 1351
	addi	%r29 %r29 $-7	# 1351
	st	0(%r29) %r31	# 1351
	ld	0(%r16) %r24	# 1351
	jalr	%r24	# 1351
	ld	0(%r29) %r31	# 1351
	addi	%r29 %r29 $7	# 1351
	beq	%r2 %r0 beq.10711	# 1351
	addi	%r2 %r0 $1	# 1352
	jr	%r31	# 1352
beq.10711:
	ld	-5(%r29) %r2	# 1354
	addi	%r2 %r2 $1	# 1354
	ld	-3(%r29) %r3	# 1354
	ld	-4(%r29) %r8	# 1354
	add	%r16 %r0 %r8	# 1354
	ld	0(%r16) %r24	# 1354
	jr	%r24	# 1354
beq.10710:
	ld	-5(%r29) %r2	# 1356
	addi	%r2 %r2 $1	# 1356
	ld	-3(%r29) %r3	# 1356
	ld	-4(%r29) %r8	# 1356
	add	%r16 %r0 %r8	# 1356
	ld	0(%r16) %r24	# 1356
	jr	%r24	# 1356
beq.10699:
	addi	%r2 %r0 $0	# 1334
	jr	%r31	# 1334
solve_each_element.2769:
	ld	9(%r16) %r9	# 0
	ld	8(%r16) %r10	# 0
	ld	7(%r16) %r11	# 0
	ld	6(%r16) %r12	# 0
	ld	5(%r16) %r13	# 0
	ld	4(%r16) %r14	# 0
	ld	3(%r16) %r15	# 0
	st	-1(%r29) %r14	# 0
	ld	2(%r16) %r14	# 0
	st	-2(%r29) %r14	# 0
	ld	1(%r16) %r14	# 0
	st	-3(%r29) %r15	# 1367
	add	%r25 %r3 %r2	# 1367
	ld	0(%r25) %r15	# 1367
	addi	%r25 %r15 $1	# 1368
	beq	%r25 %r0 beq.10712	# 1368
	st	-4(%r29) %r14	# 1370
	st	-5(%r29) %r10	# 1370
	st	-6(%r29) %r9	# 1370
	st	-7(%r29) %r11	# 1370
	st	-8(%r29) %r8	# 1370
	st	-9(%r29) %r3	# 1370
	st	-10(%r29) %r16	# 1370
	st	-11(%r29) %r2	# 1370
	st	-12(%r29) %r15	# 1370
	st	-13(%r29) %r13	# 1370
	add	%r3 %r0 %r8	# 1370
	add	%r2 %r0 %r15	# 1370
	add	%r16 %r0 %r12	# 1370
	add	%r8 %r0 %r10	# 1370
	addi	%r29 %r29 $-14	# 1370
	st	0(%r29) %r31	# 1370
	ld	0(%r16) %r24	# 1370
	jalr	%r24	# 1370
	ld	0(%r29) %r31	# 1370
	addi	%r29 %r29 $14	# 1370
	beq	%r2 %r0 beq.10713	# 1371
	addi	%r3 %r0 $0	# 1375
	ld	-7(%r29) %r8	# 1375
	add	%r25 %r8 %r3	# 1375
	fld	0(%r25) %f0	# 1375
	addi	%r3 %r0 l.8518	# 1377
	fld	0(%r3) %f1	# 1377
	fslt	%f1 %f0	# 89
	bclt	bclt_true.10714	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10715	# 89
bclt_true.10714:
	addi	%r3 %r0 $1	# 89
bclt_cont.10715:
	beq	%r3 %r0 beq_true.10716	# 1377
	addi	%r3 %r0 $0	# 1378
	ld	-6(%r29) %r8	# 1378
	add	%r25 %r8 %r3	# 1378
	fld	0(%r25) %f1	# 1378
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10718	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10719	# 89
bclt_true.10718:
	addi	%r3 %r0 $1	# 89
bclt_cont.10719:
	beq	%r3 %r0 beq_true.10720	# 1378
	addi	%r3 %r0 l.8630	# 1380
	fld	0(%r3) %f1	# 1380
	fadd	%f0 %f0 %f1	# 1380
	addi	%r3 %r0 $0	# 1381
	ld	-8(%r29) %r9	# 1381
	add	%r25 %r9 %r3	# 1381
	fld	0(%r25) %f1	# 1381
	fmul	%f1 %f1 %f0	# 1381
	addi	%r3 %r0 $0	# 1381
	ld	-5(%r29) %r10	# 1381
	add	%r25 %r10 %r3	# 1381
	fld	0(%r25) %f2	# 1381
	fadd	%f1 %f1 %f2	# 1381
	addi	%r3 %r0 $1	# 1382
	add	%r25 %r9 %r3	# 1382
	fld	0(%r25) %f2	# 1382
	fmul	%f2 %f2 %f0	# 1382
	addi	%r3 %r0 $1	# 1382
	add	%r25 %r10 %r3	# 1382
	fld	0(%r25) %f3	# 1382
	fadd	%f2 %f2 %f3	# 1382
	addi	%r3 %r0 $2	# 1383
	add	%r25 %r9 %r3	# 1383
	fld	0(%r25) %f3	# 1383
	fmul	%f3 %f3 %f0	# 1383
	addi	%r3 %r0 $2	# 1383
	add	%r25 %r10 %r3	# 1383
	fld	0(%r25) %f4	# 1383
	fadd	%f3 %f3 %f4	# 1383
	addi	%r3 %r0 $0	# 1384
	ld	-9(%r29) %r10	# 1266
	add	%r25 %r10 %r3	# 1266
	ld	0(%r25) %r3	# 1266
	st	-14(%r29) %r2	# 1267
	fst	-15(%r29) %f3	# 1267
	fst	-16(%r29) %f2	# 1267
	fst	-17(%r29) %f1	# 1267
	fst	-18(%r29) %f0	# 1267
	addi	%r25 %r3 $1	# 1267
	beq	%r25 %r0 beq_true.10722	# 1267
	ld	-13(%r29) %r11	# 1270
	add	%r25 %r11 %r3	# 1270
	ld	0(%r25) %r3	# 1270
	add	%r2 %r0 %r3	# 1270
	fmov	%f0 %f1	# 1270
	fmov	%f1 %f2	# 1270
	fmov	%f2 %f3	# 1270
	addi	%r29 %r29 $-19	# 1270
	st	0(%r29) %r31	# 1270
	jal	is_outside.2749	# 1270
	ld	0(%r29) %r31	# 1270
	addi	%r29 %r29 $19	# 1270
	beq	%r2 %r0 beq_true.10724	# 1270
	addi	%r2 %r0 $0	# 1271
	beq	%r0 %r0 beq_cont.10725	# 1270
beq_true.10724:
	addi	%r2 %r0 $1	# 1273
	fld	-17(%r29) %f0	# 1273
	fld	-16(%r29) %f1	# 1273
	fld	-15(%r29) %f2	# 1273
	ld	-9(%r29) %r3	# 1273
	ld	-4(%r29) %r8	# 1273
	add	%r16 %r0 %r8	# 1273
	addi	%r29 %r29 $-19	# 1273
	st	0(%r29) %r31	# 1273
	ld	0(%r16) %r24	# 1273
	jalr	%r24	# 1273
	ld	0(%r29) %r31	# 1273
	addi	%r29 %r29 $19	# 1273
beq_cont.10725:
	beq	%r0 %r0 beq_cont.10723	# 1267
beq_true.10722:
	addi	%r2 %r0 $1	# 1268
beq_cont.10723:
	beq	%r2 %r0 beq_true.10726	# 1384
	addi	%r2 %r0 $0	# 1386
	ld	-6(%r29) %r3	# 1386
	fld	-18(%r29) %f0	# 1386
	add	%r25 %r3 %r2	# 1386
	fst	0(%r25) %f0	# 1386
	addi	%r2 %r0 $0	# 146
	ld	-3(%r29) %r3	# 146
	fld	-17(%r29) %f0	# 146
	add	%r25 %r3 %r2	# 146
	fst	0(%r25) %f0	# 146
	addi	%r2 %r0 $1	# 147
	fld	-16(%r29) %f0	# 147
	add	%r25 %r3 %r2	# 147
	fst	0(%r25) %f0	# 147
	addi	%r2 %r0 $2	# 148
	fld	-15(%r29) %f0	# 148
	add	%r25 %r3 %r2	# 148
	fst	0(%r25) %f0	# 148
	addi	%r2 %r0 $0	# 1388
	ld	-2(%r29) %r3	# 1388
	ld	-12(%r29) %r8	# 1388
	add	%r25 %r3 %r2	# 1388
	st	0(%r25) %r8	# 1388
	addi	%r2 %r0 $0	# 1389
	ld	-1(%r29) %r3	# 1389
	ld	-14(%r29) %r8	# 1389
	add	%r25 %r3 %r2	# 1389
	st	0(%r25) %r8	# 1389
	beq	%r0 %r0 beq_cont.10727	# 1384
beq_true.10726:
beq_cont.10727:
	beq	%r0 %r0 beq_cont.10721	# 1378
beq_true.10720:
beq_cont.10721:
	beq	%r0 %r0 beq_cont.10717	# 1377
beq_true.10716:
beq_cont.10717:
	ld	-11(%r29) %r2	# 1395
	addi	%r2 %r2 $1	# 1395
	ld	-9(%r29) %r3	# 1395
	ld	-8(%r29) %r8	# 1395
	ld	-10(%r29) %r9	# 1395
	add	%r16 %r0 %r9	# 1395
	ld	0(%r16) %r24	# 1395
	jr	%r24	# 1395
beq.10713:
	ld	-12(%r29) %r2	# 1399
	ld	-13(%r29) %r3	# 1399
	add	%r25 %r3 %r2	# 1399
	ld	0(%r25) %r2	# 1399
	ld	6(%r2) %r2	# 273
	beq	%r2 %r0 beq.10728	# 1399
	ld	-11(%r29) %r2	# 1400
	addi	%r2 %r2 $1	# 1400
	ld	-9(%r29) %r3	# 1400
	ld	-8(%r29) %r8	# 1400
	ld	-10(%r29) %r9	# 1400
	add	%r16 %r0 %r9	# 1400
	ld	0(%r16) %r24	# 1400
	jr	%r24	# 1400
beq.10728:
	jr	%r31	# 1401
beq.10712:
	jr	%r31	# 1368
solve_one_or_network.2773:
	ld	2(%r16) %r9	# 0
	ld	1(%r16) %r10	# 0
	add	%r25 %r3 %r2	# 1408
	ld	0(%r25) %r11	# 1408
	addi	%r25 %r11 $1	# 1409
	beq	%r25 %r0 beq.10731	# 1409
	add	%r25 %r10 %r11	# 1410
	ld	0(%r25) %r11	# 1410
	addi	%r12 %r0 $0	# 1411
	st	-1(%r29) %r16	# 1411
	st	-2(%r29) %r8	# 1411
	st	-3(%r29) %r9	# 1411
	st	-4(%r29) %r10	# 1411
	st	-5(%r29) %r3	# 1411
	st	-6(%r29) %r2	# 1411
	add	%r3 %r0 %r11	# 1411
	add	%r2 %r0 %r12	# 1411
	add	%r16 %r0 %r9	# 1411
	addi	%r29 %r29 $-7	# 1411
	st	0(%r29) %r31	# 1411
	ld	0(%r16) %r24	# 1411
	jalr	%r24	# 1411
	ld	0(%r29) %r31	# 1411
	addi	%r29 %r29 $7	# 1411
	ld	-6(%r29) %r2	# 1412
	addi	%r2 %r2 $1	# 1412
	ld	-5(%r29) %r3	# 1408
	add	%r25 %r3 %r2	# 1408
	ld	0(%r25) %r8	# 1408
	addi	%r25 %r8 $1	# 1409
	beq	%r25 %r0 beq.10732	# 1409
	ld	-4(%r29) %r9	# 1410
	add	%r25 %r9 %r8	# 1410
	ld	0(%r25) %r8	# 1410
	addi	%r9 %r0 $0	# 1411
	ld	-2(%r29) %r10	# 1411
	ld	-3(%r29) %r11	# 1411
	st	-7(%r29) %r2	# 1411
	add	%r3 %r0 %r8	# 1411
	add	%r2 %r0 %r9	# 1411
	add	%r16 %r0 %r11	# 1411
	add	%r8 %r0 %r10	# 1411
	addi	%r29 %r29 $-8	# 1411
	st	0(%r29) %r31	# 1411
	ld	0(%r16) %r24	# 1411
	jalr	%r24	# 1411
	ld	0(%r29) %r31	# 1411
	addi	%r29 %r29 $8	# 1411
	ld	-7(%r29) %r2	# 1412
	addi	%r2 %r2 $1	# 1412
	ld	-5(%r29) %r3	# 1412
	ld	-2(%r29) %r8	# 1412
	ld	-1(%r29) %r9	# 1412
	add	%r16 %r0 %r9	# 1412
	ld	0(%r16) %r24	# 1412
	jr	%r24	# 1412
beq.10732:
	jr	%r31	# 1413
beq.10731:
	jr	%r31	# 1413
trace_or_matrix.2777:
	ld	7(%r16) %r9	# 0
	ld	6(%r16) %r10	# 0
	ld	5(%r16) %r11	# 0
	ld	4(%r16) %r12	# 0
	ld	3(%r16) %r13	# 0
	ld	2(%r16) %r14	# 0
	ld	1(%r16) %r15	# 0
	st	-1(%r29) %r3	# 1418
	add	%r25 %r3 %r2	# 1418
	ld	0(%r25) %r3	# 1418
	st	-2(%r29) %r2	# 1419
	addi	%r2 %r0 $0	# 1419
	add	%r25 %r3 %r2	# 1419
	ld	0(%r25) %r2	# 1419
	addi	%r25 %r2 $1	# 1420
	beq	%r25 %r0 beq.10735	# 1420
	st	-3(%r29) %r8	# 1423
	st	-4(%r29) %r16	# 1423
	addi	%r25 %r2 $-99	# 1423
	beq	%r25 %r0 beq_true.10736	# 1423
	st	-5(%r29) %r13	# 1428
	st	-6(%r29) %r14	# 1428
	st	-7(%r29) %r15	# 1428
	st	-8(%r29) %r3	# 1428
	st	-9(%r29) %r9	# 1428
	st	-10(%r29) %r11	# 1428
	add	%r3 %r0 %r8	# 1428
	add	%r16 %r0 %r12	# 1428
	add	%r8 %r0 %r10	# 1428
	addi	%r29 %r29 $-11	# 1428
	st	0(%r29) %r31	# 1428
	ld	0(%r16) %r24	# 1428
	jalr	%r24	# 1428
	ld	0(%r29) %r31	# 1428
	addi	%r29 %r29 $11	# 1428
	beq	%r2 %r0 beq_true.10738	# 1429
	addi	%r2 %r0 $0	# 1430
	ld	-10(%r29) %r3	# 1430
	add	%r25 %r3 %r2	# 1430
	fld	0(%r25) %f0	# 1430
	addi	%r2 %r0 $0	# 1431
	ld	-9(%r29) %r3	# 1431
	add	%r25 %r3 %r2	# 1431
	fld	0(%r25) %f1	# 1431
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10740	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10741	# 89
bclt_true.10740:
	addi	%r2 %r0 $1	# 89
bclt_cont.10741:
	beq	%r2 %r0 beq_true.10742	# 1431
	addi	%r2 %r0 $1	# 1432
	ld	-8(%r29) %r3	# 1408
	add	%r25 %r3 %r2	# 1408
	ld	0(%r25) %r2	# 1408
	addi	%r25 %r2 $1	# 1409
	beq	%r25 %r0 beq_true.10744	# 1409
	ld	-7(%r29) %r8	# 1410
	add	%r25 %r8 %r2	# 1410
	ld	0(%r25) %r2	# 1410
	addi	%r8 %r0 $0	# 1411
	ld	-3(%r29) %r9	# 1411
	ld	-6(%r29) %r10	# 1411
	add	%r3 %r0 %r2	# 1411
	add	%r16 %r0 %r10	# 1411
	add	%r2 %r0 %r8	# 1411
	add	%r8 %r0 %r9	# 1411
	addi	%r29 %r29 $-11	# 1411
	st	0(%r29) %r31	# 1411
	ld	0(%r16) %r24	# 1411
	jalr	%r24	# 1411
	ld	0(%r29) %r31	# 1411
	addi	%r29 %r29 $11	# 1411
	addi	%r2 %r0 $2	# 1412
	ld	-8(%r29) %r3	# 1412
	ld	-3(%r29) %r8	# 1412
	ld	-5(%r29) %r9	# 1412
	add	%r16 %r0 %r9	# 1412
	addi	%r29 %r29 $-11	# 1412
	st	0(%r29) %r31	# 1412
	ld	0(%r16) %r24	# 1412
	jalr	%r24	# 1412
	ld	0(%r29) %r31	# 1412
	addi	%r29 %r29 $11	# 1412
	beq	%r0 %r0 beq_cont.10745	# 1409
beq_true.10744:
beq_cont.10745:
	beq	%r0 %r0 beq_cont.10743	# 1431
beq_true.10742:
beq_cont.10743:
	beq	%r0 %r0 beq_cont.10739	# 1429
beq_true.10738:
beq_cont.10739:
	beq	%r0 %r0 beq_cont.10737	# 1423
beq_true.10736:
	addi	%r2 %r0 $1	# 1424
	add	%r25 %r3 %r2	# 1408
	ld	0(%r25) %r2	# 1408
	addi	%r25 %r2 $1	# 1409
	beq	%r25 %r0 beq_true.10746	# 1409
	add	%r25 %r15 %r2	# 1410
	ld	0(%r25) %r2	# 1410
	addi	%r9 %r0 $0	# 1411
	st	-8(%r29) %r3	# 1411
	st	-5(%r29) %r13	# 1411
	add	%r3 %r0 %r2	# 1411
	add	%r16 %r0 %r14	# 1411
	add	%r2 %r0 %r9	# 1411
	addi	%r29 %r29 $-11	# 1411
	st	0(%r29) %r31	# 1411
	ld	0(%r16) %r24	# 1411
	jalr	%r24	# 1411
	ld	0(%r29) %r31	# 1411
	addi	%r29 %r29 $11	# 1411
	addi	%r2 %r0 $2	# 1412
	ld	-8(%r29) %r3	# 1412
	ld	-3(%r29) %r8	# 1412
	ld	-5(%r29) %r9	# 1412
	add	%r16 %r0 %r9	# 1412
	addi	%r29 %r29 $-11	# 1412
	st	0(%r29) %r31	# 1412
	ld	0(%r16) %r24	# 1412
	jalr	%r24	# 1412
	ld	0(%r29) %r31	# 1412
	addi	%r29 %r29 $11	# 1412
	beq	%r0 %r0 beq_cont.10747	# 1409
beq_true.10746:
beq_cont.10747:
beq_cont.10737:
	ld	-2(%r29) %r2	# 1436
	addi	%r2 %r2 $1	# 1436
	ld	-1(%r29) %r3	# 1436
	ld	-3(%r29) %r8	# 1436
	ld	-4(%r29) %r9	# 1436
	add	%r16 %r0 %r9	# 1436
	ld	0(%r16) %r24	# 1436
	jr	%r24	# 1436
beq.10735:
	jr	%r31	# 1421
judge_intersection.2781:
	ld	3(%r16) %r3	# 0
	ld	2(%r16) %r8	# 0
	ld	1(%r16) %r9	# 0
	addi	%r10 %r0 $0	# 1445
	addi	%r11 %r0 l.8636	# 1445
	fld	0(%r11) %f0	# 1445
	add	%r25 %r8 %r10	# 1445
	fst	0(%r25) %f0	# 1445
	addi	%r10 %r0 $0	# 1446
	addi	%r11 %r0 $0	# 1446
	add	%r25 %r9 %r11	# 1446
	ld	0(%r25) %r9	# 1446
	st	-1(%r29) %r8	# 1446
	add	%r8 %r0 %r2	# 1446
	add	%r16 %r0 %r3	# 1446
	add	%r3 %r0 %r9	# 1446
	add	%r2 %r0 %r10	# 1446
	addi	%r29 %r29 $-2	# 1446
	st	0(%r29) %r31	# 1446
	ld	0(%r16) %r24	# 1446
	jalr	%r24	# 1446
	ld	0(%r29) %r31	# 1446
	addi	%r29 %r29 $2	# 1446
	addi	%r2 %r0 $0	# 1447
	ld	-1(%r29) %r3	# 1447
	add	%r25 %r3 %r2	# 1447
	fld	0(%r25) %f0	# 1447
	addi	%r2 %r0 l.8632	# 1449
	fld	0(%r2) %f1	# 1449
	fslt	%f1 %f0	# 89
	bclt	bclt_true.10749	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10750	# 89
bclt_true.10749:
	addi	%r2 %r0 $1	# 89
bclt_cont.10750:
	beq	%r2 %r0 beq.10751	# 1449
	addi	%r2 %r0 l.8639	# 1450
	fld	0(%r2) %f1	# 1450
	fslt	%f0 %f1	# 89
	bclt	bclt.10752	# 89
	addi	%r2 %r0 $0	# 89
	jr	%r31	# 89
bclt.10752:
	addi	%r2 %r0 $1	# 89
	jr	%r31	# 89
beq.10751:
	addi	%r2 %r0 $0	# 1451
	jr	%r31	# 1451
solve_each_element_fast.2783:
	ld	9(%r16) %r9	# 0
	ld	8(%r16) %r10	# 0
	ld	7(%r16) %r11	# 0
	ld	6(%r16) %r12	# 0
	ld	5(%r16) %r13	# 0
	ld	4(%r16) %r14	# 0
	ld	3(%r16) %r15	# 0
	st	-1(%r29) %r14	# 0
	ld	2(%r16) %r14	# 0
	st	-2(%r29) %r14	# 0
	ld	1(%r16) %r14	# 0
	st	-3(%r29) %r15	# 539
	ld	0(%r8) %r15	# 539
	st	-4(%r29) %r14	# 1461
	add	%r25 %r3 %r2	# 1461
	ld	0(%r25) %r14	# 1461
	addi	%r25 %r14 $1	# 1462
	beq	%r25 %r0 beq.10753	# 1462
	st	-5(%r29) %r10	# 1464
	st	-6(%r29) %r15	# 1464
	st	-7(%r29) %r9	# 1464
	st	-8(%r29) %r12	# 1464
	st	-9(%r29) %r8	# 1464
	st	-10(%r29) %r3	# 1464
	st	-11(%r29) %r16	# 1464
	st	-12(%r29) %r2	# 1464
	st	-13(%r29) %r14	# 1464
	st	-14(%r29) %r13	# 1464
	add	%r3 %r0 %r8	# 1464
	add	%r2 %r0 %r14	# 1464
	add	%r16 %r0 %r11	# 1464
	addi	%r29 %r29 $-15	# 1464
	st	0(%r29) %r31	# 1464
	ld	0(%r16) %r24	# 1464
	jalr	%r24	# 1464
	ld	0(%r29) %r31	# 1464
	addi	%r29 %r29 $15	# 1464
	beq	%r2 %r0 beq.10754	# 1465
	addi	%r3 %r0 $0	# 1469
	ld	-8(%r29) %r8	# 1469
	add	%r25 %r8 %r3	# 1469
	fld	0(%r25) %f0	# 1469
	addi	%r3 %r0 l.8518	# 1471
	fld	0(%r3) %f1	# 1471
	fslt	%f1 %f0	# 89
	bclt	bclt_true.10755	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10756	# 89
bclt_true.10755:
	addi	%r3 %r0 $1	# 89
bclt_cont.10756:
	beq	%r3 %r0 beq_true.10757	# 1471
	addi	%r3 %r0 $0	# 1472
	ld	-7(%r29) %r8	# 1472
	add	%r25 %r8 %r3	# 1472
	fld	0(%r25) %f1	# 1472
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10759	# 89
	addi	%r3 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10760	# 89
bclt_true.10759:
	addi	%r3 %r0 $1	# 89
bclt_cont.10760:
	beq	%r3 %r0 beq_true.10761	# 1472
	addi	%r3 %r0 l.8630	# 1474
	fld	0(%r3) %f1	# 1474
	fadd	%f0 %f0 %f1	# 1474
	addi	%r3 %r0 $0	# 1475
	ld	-6(%r29) %r9	# 1475
	add	%r25 %r9 %r3	# 1475
	fld	0(%r25) %f1	# 1475
	fmul	%f1 %f1 %f0	# 1475
	addi	%r3 %r0 $0	# 1475
	ld	-5(%r29) %r10	# 1475
	add	%r25 %r10 %r3	# 1475
	fld	0(%r25) %f2	# 1475
	fadd	%f1 %f1 %f2	# 1475
	addi	%r3 %r0 $1	# 1476
	add	%r25 %r9 %r3	# 1476
	fld	0(%r25) %f2	# 1476
	fmul	%f2 %f2 %f0	# 1476
	addi	%r3 %r0 $1	# 1476
	add	%r25 %r10 %r3	# 1476
	fld	0(%r25) %f3	# 1476
	fadd	%f2 %f2 %f3	# 1476
	addi	%r3 %r0 $2	# 1477
	add	%r25 %r9 %r3	# 1477
	fld	0(%r25) %f3	# 1477
	fmul	%f3 %f3 %f0	# 1477
	addi	%r3 %r0 $2	# 1477
	add	%r25 %r10 %r3	# 1477
	fld	0(%r25) %f4	# 1477
	fadd	%f3 %f3 %f4	# 1477
	addi	%r3 %r0 $0	# 1478
	ld	-10(%r29) %r9	# 1266
	add	%r25 %r9 %r3	# 1266
	ld	0(%r25) %r3	# 1266
	st	-15(%r29) %r2	# 1267
	fst	-16(%r29) %f3	# 1267
	fst	-17(%r29) %f2	# 1267
	fst	-18(%r29) %f1	# 1267
	fst	-19(%r29) %f0	# 1267
	addi	%r25 %r3 $1	# 1267
	beq	%r25 %r0 beq_true.10763	# 1267
	ld	-14(%r29) %r10	# 1270
	add	%r25 %r10 %r3	# 1270
	ld	0(%r25) %r3	# 1270
	add	%r2 %r0 %r3	# 1270
	fmov	%f0 %f1	# 1270
	fmov	%f1 %f2	# 1270
	fmov	%f2 %f3	# 1270
	addi	%r29 %r29 $-20	# 1270
	st	0(%r29) %r31	# 1270
	jal	is_outside.2749	# 1270
	ld	0(%r29) %r31	# 1270
	addi	%r29 %r29 $20	# 1270
	beq	%r2 %r0 beq_true.10765	# 1270
	addi	%r2 %r0 $0	# 1271
	beq	%r0 %r0 beq_cont.10766	# 1270
beq_true.10765:
	addi	%r2 %r0 $1	# 1273
	fld	-18(%r29) %f0	# 1273
	fld	-17(%r29) %f1	# 1273
	fld	-16(%r29) %f2	# 1273
	ld	-10(%r29) %r3	# 1273
	ld	-4(%r29) %r8	# 1273
	add	%r16 %r0 %r8	# 1273
	addi	%r29 %r29 $-20	# 1273
	st	0(%r29) %r31	# 1273
	ld	0(%r16) %r24	# 1273
	jalr	%r24	# 1273
	ld	0(%r29) %r31	# 1273
	addi	%r29 %r29 $20	# 1273
beq_cont.10766:
	beq	%r0 %r0 beq_cont.10764	# 1267
beq_true.10763:
	addi	%r2 %r0 $1	# 1268
beq_cont.10764:
	beq	%r2 %r0 beq_true.10767	# 1478
	addi	%r2 %r0 $0	# 1480
	ld	-7(%r29) %r3	# 1480
	fld	-19(%r29) %f0	# 1480
	add	%r25 %r3 %r2	# 1480
	fst	0(%r25) %f0	# 1480
	addi	%r2 %r0 $0	# 146
	ld	-3(%r29) %r3	# 146
	fld	-18(%r29) %f0	# 146
	add	%r25 %r3 %r2	# 146
	fst	0(%r25) %f0	# 146
	addi	%r2 %r0 $1	# 147
	fld	-17(%r29) %f0	# 147
	add	%r25 %r3 %r2	# 147
	fst	0(%r25) %f0	# 147
	addi	%r2 %r0 $2	# 148
	fld	-16(%r29) %f0	# 148
	add	%r25 %r3 %r2	# 148
	fst	0(%r25) %f0	# 148
	addi	%r2 %r0 $0	# 1482
	ld	-2(%r29) %r3	# 1482
	ld	-13(%r29) %r8	# 1482
	add	%r25 %r3 %r2	# 1482
	st	0(%r25) %r8	# 1482
	addi	%r2 %r0 $0	# 1483
	ld	-1(%r29) %r3	# 1483
	ld	-15(%r29) %r8	# 1483
	add	%r25 %r3 %r2	# 1483
	st	0(%r25) %r8	# 1483
	beq	%r0 %r0 beq_cont.10768	# 1478
beq_true.10767:
beq_cont.10768:
	beq	%r0 %r0 beq_cont.10762	# 1472
beq_true.10761:
beq_cont.10762:
	beq	%r0 %r0 beq_cont.10758	# 1471
beq_true.10757:
beq_cont.10758:
	ld	-12(%r29) %r2	# 1489
	addi	%r2 %r2 $1	# 1489
	ld	-10(%r29) %r3	# 1489
	ld	-9(%r29) %r8	# 1489
	ld	-11(%r29) %r9	# 1489
	add	%r16 %r0 %r9	# 1489
	ld	0(%r16) %r24	# 1489
	jr	%r24	# 1489
beq.10754:
	ld	-13(%r29) %r2	# 1493
	ld	-14(%r29) %r3	# 1493
	add	%r25 %r3 %r2	# 1493
	ld	0(%r25) %r2	# 1493
	ld	6(%r2) %r2	# 273
	beq	%r2 %r0 beq.10769	# 1493
	ld	-12(%r29) %r2	# 1494
	addi	%r2 %r2 $1	# 1494
	ld	-10(%r29) %r3	# 1494
	ld	-9(%r29) %r8	# 1494
	ld	-11(%r29) %r9	# 1494
	add	%r16 %r0 %r9	# 1494
	ld	0(%r16) %r24	# 1494
	jr	%r24	# 1494
beq.10769:
	jr	%r31	# 1495
beq.10753:
	jr	%r31	# 1462
solve_one_or_network_fast.2787:
	ld	2(%r16) %r9	# 0
	ld	1(%r16) %r10	# 0
	add	%r25 %r3 %r2	# 1501
	ld	0(%r25) %r11	# 1501
	addi	%r25 %r11 $1	# 1502
	beq	%r25 %r0 beq.10772	# 1502
	add	%r25 %r10 %r11	# 1503
	ld	0(%r25) %r11	# 1503
	addi	%r12 %r0 $0	# 1504
	st	-1(%r29) %r16	# 1504
	st	-2(%r29) %r8	# 1504
	st	-3(%r29) %r9	# 1504
	st	-4(%r29) %r10	# 1504
	st	-5(%r29) %r3	# 1504
	st	-6(%r29) %r2	# 1504
	add	%r3 %r0 %r11	# 1504
	add	%r2 %r0 %r12	# 1504
	add	%r16 %r0 %r9	# 1504
	addi	%r29 %r29 $-7	# 1504
	st	0(%r29) %r31	# 1504
	ld	0(%r16) %r24	# 1504
	jalr	%r24	# 1504
	ld	0(%r29) %r31	# 1504
	addi	%r29 %r29 $7	# 1504
	ld	-6(%r29) %r2	# 1505
	addi	%r2 %r2 $1	# 1505
	ld	-5(%r29) %r3	# 1501
	add	%r25 %r3 %r2	# 1501
	ld	0(%r25) %r8	# 1501
	addi	%r25 %r8 $1	# 1502
	beq	%r25 %r0 beq.10773	# 1502
	ld	-4(%r29) %r9	# 1503
	add	%r25 %r9 %r8	# 1503
	ld	0(%r25) %r8	# 1503
	addi	%r9 %r0 $0	# 1504
	ld	-2(%r29) %r10	# 1504
	ld	-3(%r29) %r11	# 1504
	st	-7(%r29) %r2	# 1504
	add	%r3 %r0 %r8	# 1504
	add	%r2 %r0 %r9	# 1504
	add	%r16 %r0 %r11	# 1504
	add	%r8 %r0 %r10	# 1504
	addi	%r29 %r29 $-8	# 1504
	st	0(%r29) %r31	# 1504
	ld	0(%r16) %r24	# 1504
	jalr	%r24	# 1504
	ld	0(%r29) %r31	# 1504
	addi	%r29 %r29 $8	# 1504
	ld	-7(%r29) %r2	# 1505
	addi	%r2 %r2 $1	# 1505
	ld	-5(%r29) %r3	# 1505
	ld	-2(%r29) %r8	# 1505
	ld	-1(%r29) %r9	# 1505
	add	%r16 %r0 %r9	# 1505
	ld	0(%r16) %r24	# 1505
	jr	%r24	# 1505
beq.10773:
	jr	%r31	# 1506
beq.10772:
	jr	%r31	# 1506
trace_or_matrix_fast.2791:
	ld	6(%r16) %r9	# 0
	ld	5(%r16) %r10	# 0
	ld	4(%r16) %r11	# 0
	ld	3(%r16) %r12	# 0
	ld	2(%r16) %r13	# 0
	ld	1(%r16) %r14	# 0
	add	%r25 %r3 %r2	# 1511
	ld	0(%r25) %r15	# 1511
	st	-1(%r29) %r3	# 1512
	addi	%r3 %r0 $0	# 1512
	add	%r25 %r15 %r3	# 1512
	ld	0(%r25) %r3	# 1512
	addi	%r25 %r3 $1	# 1513
	beq	%r25 %r0 beq.10776	# 1513
	st	-2(%r29) %r8	# 1516
	st	-3(%r29) %r16	# 1516
	st	-4(%r29) %r2	# 1516
	addi	%r25 %r3 $-99	# 1516
	beq	%r25 %r0 beq_true.10777	# 1516
	st	-5(%r29) %r12	# 1521
	st	-6(%r29) %r13	# 1521
	st	-7(%r29) %r14	# 1521
	st	-8(%r29) %r15	# 1521
	st	-9(%r29) %r9	# 1521
	st	-10(%r29) %r11	# 1521
	add	%r2 %r0 %r3	# 1521
	add	%r16 %r0 %r10	# 1521
	add	%r3 %r0 %r8	# 1521
	addi	%r29 %r29 $-11	# 1521
	st	0(%r29) %r31	# 1521
	ld	0(%r16) %r24	# 1521
	jalr	%r24	# 1521
	ld	0(%r29) %r31	# 1521
	addi	%r29 %r29 $11	# 1521
	beq	%r2 %r0 beq_true.10779	# 1522
	addi	%r2 %r0 $0	# 1523
	ld	-10(%r29) %r3	# 1523
	add	%r25 %r3 %r2	# 1523
	fld	0(%r25) %f0	# 1523
	addi	%r2 %r0 $0	# 1524
	ld	-9(%r29) %r3	# 1524
	add	%r25 %r3 %r2	# 1524
	fld	0(%r25) %f1	# 1524
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10781	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10782	# 89
bclt_true.10781:
	addi	%r2 %r0 $1	# 89
bclt_cont.10782:
	beq	%r2 %r0 beq_true.10783	# 1524
	addi	%r2 %r0 $1	# 1525
	ld	-8(%r29) %r3	# 1501
	add	%r25 %r3 %r2	# 1501
	ld	0(%r25) %r2	# 1501
	addi	%r25 %r2 $1	# 1502
	beq	%r25 %r0 beq_true.10785	# 1502
	ld	-7(%r29) %r8	# 1503
	add	%r25 %r8 %r2	# 1503
	ld	0(%r25) %r2	# 1503
	addi	%r8 %r0 $0	# 1504
	ld	-2(%r29) %r9	# 1504
	ld	-6(%r29) %r10	# 1504
	add	%r3 %r0 %r2	# 1504
	add	%r16 %r0 %r10	# 1504
	add	%r2 %r0 %r8	# 1504
	add	%r8 %r0 %r9	# 1504
	addi	%r29 %r29 $-11	# 1504
	st	0(%r29) %r31	# 1504
	ld	0(%r16) %r24	# 1504
	jalr	%r24	# 1504
	ld	0(%r29) %r31	# 1504
	addi	%r29 %r29 $11	# 1504
	addi	%r2 %r0 $2	# 1505
	ld	-8(%r29) %r3	# 1505
	ld	-2(%r29) %r8	# 1505
	ld	-5(%r29) %r9	# 1505
	add	%r16 %r0 %r9	# 1505
	addi	%r29 %r29 $-11	# 1505
	st	0(%r29) %r31	# 1505
	ld	0(%r16) %r24	# 1505
	jalr	%r24	# 1505
	ld	0(%r29) %r31	# 1505
	addi	%r29 %r29 $11	# 1505
	beq	%r0 %r0 beq_cont.10786	# 1502
beq_true.10785:
beq_cont.10786:
	beq	%r0 %r0 beq_cont.10784	# 1524
beq_true.10783:
beq_cont.10784:
	beq	%r0 %r0 beq_cont.10780	# 1522
beq_true.10779:
beq_cont.10780:
	beq	%r0 %r0 beq_cont.10778	# 1516
beq_true.10777:
	addi	%r3 %r0 $1	# 1517
	add	%r25 %r15 %r3	# 1501
	ld	0(%r25) %r3	# 1501
	addi	%r25 %r3 $1	# 1502
	beq	%r25 %r0 beq_true.10787	# 1502
	add	%r25 %r14 %r3	# 1503
	ld	0(%r25) %r3	# 1503
	addi	%r9 %r0 $0	# 1504
	st	-8(%r29) %r15	# 1504
	st	-5(%r29) %r12	# 1504
	add	%r2 %r0 %r9	# 1504
	add	%r16 %r0 %r13	# 1504
	addi	%r29 %r29 $-11	# 1504
	st	0(%r29) %r31	# 1504
	ld	0(%r16) %r24	# 1504
	jalr	%r24	# 1504
	ld	0(%r29) %r31	# 1504
	addi	%r29 %r29 $11	# 1504
	addi	%r2 %r0 $2	# 1505
	ld	-8(%r29) %r3	# 1505
	ld	-2(%r29) %r8	# 1505
	ld	-5(%r29) %r9	# 1505
	add	%r16 %r0 %r9	# 1505
	addi	%r29 %r29 $-11	# 1505
	st	0(%r29) %r31	# 1505
	ld	0(%r16) %r24	# 1505
	jalr	%r24	# 1505
	ld	0(%r29) %r31	# 1505
	addi	%r29 %r29 $11	# 1505
	beq	%r0 %r0 beq_cont.10788	# 1502
beq_true.10787:
beq_cont.10788:
beq_cont.10778:
	ld	-4(%r29) %r2	# 1529
	addi	%r2 %r2 $1	# 1529
	ld	-1(%r29) %r3	# 1529
	ld	-2(%r29) %r8	# 1529
	ld	-3(%r29) %r9	# 1529
	add	%r16 %r0 %r9	# 1529
	ld	0(%r16) %r24	# 1529
	jr	%r24	# 1529
beq.10776:
	jr	%r31	# 1514
judge_intersection_fast.2795:
	ld	3(%r16) %r3	# 0
	ld	2(%r16) %r8	# 0
	ld	1(%r16) %r9	# 0
	addi	%r10 %r0 $0	# 1536
	addi	%r11 %r0 l.8636	# 1536
	fld	0(%r11) %f0	# 1536
	add	%r25 %r8 %r10	# 1536
	fst	0(%r25) %f0	# 1536
	addi	%r10 %r0 $0	# 1537
	addi	%r11 %r0 $0	# 1537
	add	%r25 %r9 %r11	# 1537
	ld	0(%r25) %r9	# 1537
	st	-1(%r29) %r8	# 1537
	add	%r8 %r0 %r2	# 1537
	add	%r16 %r0 %r3	# 1537
	add	%r3 %r0 %r9	# 1537
	add	%r2 %r0 %r10	# 1537
	addi	%r29 %r29 $-2	# 1537
	st	0(%r29) %r31	# 1537
	ld	0(%r16) %r24	# 1537
	jalr	%r24	# 1537
	ld	0(%r29) %r31	# 1537
	addi	%r29 %r29 $2	# 1537
	addi	%r2 %r0 $0	# 1538
	ld	-1(%r29) %r3	# 1538
	add	%r25 %r3 %r2	# 1538
	fld	0(%r25) %f0	# 1538
	addi	%r2 %r0 l.8632	# 1540
	fld	0(%r2) %f1	# 1540
	fslt	%f1 %f0	# 89
	bclt	bclt_true.10790	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10791	# 89
bclt_true.10790:
	addi	%r2 %r0 $1	# 89
bclt_cont.10791:
	beq	%r2 %r0 beq.10792	# 1540
	addi	%r2 %r0 l.8639	# 1541
	fld	0(%r2) %f1	# 1541
	fslt	%f0 %f1	# 89
	bclt	bclt.10793	# 89
	addi	%r2 %r0 $0	# 89
	jr	%r31	# 89
bclt.10793:
	addi	%r2 %r0 $1	# 89
	jr	%r31	# 89
beq.10792:
	addi	%r2 %r0 $0	# 1542
	jr	%r31	# 1542
get_nvector_rect.2797:
	ld	2(%r16) %r3	# 0
	ld	1(%r16) %r8	# 0
	addi	%r9 %r0 $0	# 1556
	add	%r25 %r8 %r9	# 1556
	ld	0(%r25) %r8	# 1556
	addi	%r9 %r0 l.8518	# 160
	fld	0(%r9) %f0	# 160
	addi	%r9 %r0 $0	# 153
	add	%r25 %r3 %r9	# 153
	fst	0(%r25) %f0	# 153
	addi	%r9 %r0 $1	# 154
	add	%r25 %r3 %r9	# 154
	fst	0(%r25) %f0	# 154
	addi	%r9 %r0 $2	# 155
	add	%r25 %r3 %r9	# 155
	fst	0(%r25) %f0	# 155
	addi	%r9 %r8 $-1	# 1559
	addi	%r8 %r8 $-1	# 1559
	add	%r25 %r2 %r8	# 1559
	fld	0(%r25) %f0	# 1559
	addi	%r2 %r0 l.8518	# 92
	fld	0(%r2) %f1	# 92
	fseq	%f0 %f1	# 92
	bclt	bclt_true.10794	# 92
	addi	%r2 %r0 $0	# 92
	beq	%r0 %r0 bclt_cont.10795	# 92
bclt_true.10794:
	addi	%r2 %r0 $1	# 92
bclt_cont.10795:
	beq	%r2 %r0 beq_true.10796	# 118
	addi	%r2 %r0 l.8518	# 118
	fld	0(%r2) %f0	# 118
	beq	%r0 %r0 beq_cont.10797	# 118
beq_true.10796:
	addi	%r2 %r0 l.8518	# 90
	fld	0(%r2) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10798	# 90
	addi	%r2 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10799	# 90
bclt_true.10798:
	addi	%r2 %r0 $1	# 90
bclt_cont.10799:
	beq	%r2 %r0 beq_true.10800	# 119
	addi	%r2 %r0 l.8520	# 119
	fld	0(%r2) %f0	# 119
	beq	%r0 %r0 beq_cont.10801	# 119
beq_true.10800:
	addi	%r2 %r0 l.8522	# 120
	fld	0(%r2) %f0	# 120
beq_cont.10801:
beq_cont.10797:
	fneg	%f0 %f0	# 95
	add	%r25 %r3 %r9	# 1559
	fst	0(%r25) %f0	# 1559
	jr	%r31	# 1559
get_nvector_plane.2799:
	ld	1(%r16) %r3	# 0
	addi	%r8 %r0 $0	# 1565
	ld	4(%r2) %r9	# 291
	addi	%r10 %r0 $0	# 296
	add	%r25 %r9 %r10	# 296
	fld	0(%r25) %f0	# 296
	fneg	%f0 %f0	# 95
	add	%r25 %r3 %r8	# 1565
	fst	0(%r25) %f0	# 1565
	addi	%r8 %r0 $1	# 1566
	ld	4(%r2) %r9	# 301
	addi	%r10 %r0 $1	# 306
	add	%r25 %r9 %r10	# 306
	fld	0(%r25) %f0	# 306
	fneg	%f0 %f0	# 95
	add	%r25 %r3 %r8	# 1566
	fst	0(%r25) %f0	# 1566
	addi	%r8 %r0 $2	# 1567
	ld	4(%r2) %r2	# 311
	addi	%r9 %r0 $2	# 316
	add	%r25 %r2 %r9	# 316
	fld	0(%r25) %f0	# 316
	fneg	%f0 %f0	# 95
	add	%r25 %r3 %r8	# 1567
	fst	0(%r25) %f0	# 1567
	jr	%r31	# 1567
get_nvector_second.2801:
	ld	2(%r16) %r3	# 0
	ld	1(%r16) %r8	# 0
	addi	%r9 %r0 $0	# 1572
	add	%r25 %r8 %r9	# 1572
	fld	0(%r25) %f0	# 1572
	ld	5(%r2) %r9	# 331
	addi	%r10 %r0 $0	# 336
	add	%r25 %r9 %r10	# 336
	fld	0(%r25) %f1	# 336
	fneg	%f31 %f1	# 1572
	fadd	%f0 %f0 %f31	# 1572
	addi	%r9 %r0 $1	# 1573
	add	%r25 %r8 %r9	# 1573
	fld	0(%r25) %f1	# 1573
	ld	5(%r2) %r9	# 341
	addi	%r10 %r0 $1	# 346
	add	%r25 %r9 %r10	# 346
	fld	0(%r25) %f2	# 346
	fneg	%f31 %f2	# 1573
	fadd	%f1 %f1 %f31	# 1573
	addi	%r9 %r0 $2	# 1574
	add	%r25 %r8 %r9	# 1574
	fld	0(%r25) %f2	# 1574
	ld	5(%r2) %r8	# 351
	addi	%r9 %r0 $2	# 356
	add	%r25 %r8 %r9	# 356
	fld	0(%r25) %f3	# 356
	fneg	%f31 %f3	# 1574
	fadd	%f2 %f2 %f31	# 1574
	ld	4(%r2) %r8	# 291
	addi	%r9 %r0 $0	# 296
	add	%r25 %r8 %r9	# 296
	fld	0(%r25) %f3	# 296
	fmul	%f3 %f0 %f3	# 1576
	ld	4(%r2) %r8	# 301
	addi	%r9 %r0 $1	# 306
	add	%r25 %r8 %r9	# 306
	fld	0(%r25) %f4	# 306
	fmul	%f4 %f1 %f4	# 1577
	ld	4(%r2) %r8	# 311
	addi	%r9 %r0 $2	# 316
	add	%r25 %r8 %r9	# 316
	fld	0(%r25) %f5	# 316
	fmul	%f5 %f2 %f5	# 1578
	ld	3(%r2) %r8	# 282
	beq	%r8 %r0 beq_true.10804	# 1580
	addi	%r8 %r0 $0	# 1585
	ld	9(%r2) %r9	# 431
	addi	%r10 %r0 $2	# 436
	add	%r25 %r9 %r10	# 436
	fld	0(%r25) %f6	# 436
	fmul	%f6 %f1 %f6	# 1585
	ld	9(%r2) %r9	# 421
	addi	%r10 %r0 $1	# 426
	add	%r25 %r9 %r10	# 426
	fld	0(%r25) %f7	# 426
	fmul	%f7 %f2 %f7	# 1585
	fadd	%f6 %f6 %f7	# 1585
	addi	%r9 %r0 l.8586	# 93
	fld	0(%r9) %f7	# 93
	fmul	%f6 %f6 %f7	# 93
	fadd	%f3 %f3 %f6	# 1585
	add	%r25 %r3 %r8	# 1585
	fst	0(%r25) %f3	# 1585
	addi	%r8 %r0 $1	# 1586
	ld	9(%r2) %r9	# 431
	addi	%r10 %r0 $2	# 436
	add	%r25 %r9 %r10	# 436
	fld	0(%r25) %f3	# 436
	fmul	%f3 %f0 %f3	# 1586
	ld	9(%r2) %r9	# 411
	addi	%r10 %r0 $0	# 416
	add	%r25 %r9 %r10	# 416
	fld	0(%r25) %f6	# 416
	fmul	%f2 %f2 %f6	# 1586
	fadd	%f3 %f3 %f2	# 1586
	addi	%r9 %r0 l.8586	# 93
	fld	0(%r9) %f2	# 93
	fmul	%f3 %f3 %f2	# 93
	fadd	%f4 %f4 %f3	# 1586
	add	%r25 %r3 %r8	# 1586
	fst	0(%r25) %f4	# 1586
	addi	%r8 %r0 $2	# 1587
	ld	9(%r2) %r9	# 421
	addi	%r10 %r0 $1	# 426
	add	%r25 %r9 %r10	# 426
	fld	0(%r25) %f2	# 426
	fmul	%f0 %f0 %f2	# 1587
	ld	9(%r2) %r9	# 411
	addi	%r10 %r0 $0	# 416
	add	%r25 %r9 %r10	# 416
	fld	0(%r25) %f2	# 416
	fmul	%f1 %f1 %f2	# 1587
	fadd	%f0 %f0 %f1	# 1587
	addi	%r9 %r0 l.8586	# 93
	fld	0(%r9) %f1	# 93
	fmul	%f0 %f0 %f1	# 93
	fadd	%f5 %f5 %f0	# 1587
	add	%r25 %r3 %r8	# 1587
	fst	0(%r25) %f5	# 1587
	beq	%r0 %r0 beq_cont.10805	# 1580
beq_true.10804:
	addi	%r8 %r0 $0	# 1581
	add	%r25 %r3 %r8	# 1581
	fst	0(%r25) %f3	# 1581
	addi	%r8 %r0 $1	# 1582
	add	%r25 %r3 %r8	# 1582
	fst	0(%r25) %f4	# 1582
	addi	%r8 %r0 $2	# 1583
	add	%r25 %r3 %r8	# 1583
	fst	0(%r25) %f5	# 1583
beq_cont.10805:
	ld	6(%r2) %r2	# 273
	add	%r24 %r0 %r3	# 1589
	add	%r3 %r0 %r2	# 1589
	add	%r2 %r0 %r24	# 1589
	beq	%r0 %r0 vecunit_sgn.2509	# 1589
utexture.2806:
	ld	1(%r16) %r8	# 0
	ld	0(%r2) %r9	# 243
	addi	%r10 %r0 $0	# 1612
	ld	8(%r2) %r11	# 381
	addi	%r12 %r0 $0	# 386
	add	%r25 %r11 %r12	# 386
	fld	0(%r25) %f0	# 386
	add	%r25 %r8 %r10	# 1612
	fst	0(%r25) %f0	# 1612
	addi	%r10 %r0 $1	# 1613
	ld	8(%r2) %r11	# 391
	addi	%r12 %r0 $1	# 396
	add	%r25 %r11 %r12	# 396
	fld	0(%r25) %f0	# 396
	add	%r25 %r8 %r10	# 1613
	fst	0(%r25) %f0	# 1613
	addi	%r10 %r0 $2	# 1614
	ld	8(%r2) %r11	# 401
	addi	%r12 %r0 $2	# 406
	add	%r25 %r11 %r12	# 406
	fld	0(%r25) %f0	# 406
	add	%r25 %r8 %r10	# 1614
	fst	0(%r25) %f0	# 1614
	addi	%r25 %r9 $-1	# 1615
	beq	%r25 %r0 beq.10806	# 1615
	addi	%r25 %r9 $-2	# 1633
	beq	%r25 %r0 beq.10807	# 1633
	addi	%r25 %r9 $-3	# 1640
	beq	%r25 %r0 beq.10808	# 1640
	addi	%r25 %r9 $-4	# 1651
	beq	%r25 %r0 beq.10809	# 1651
	jr	%r31	# 1679
beq.10809:
	addi	%r9 %r0 $0	# 1653
	add	%r25 %r3 %r9	# 1653
	fld	0(%r25) %f0	# 1653
	ld	5(%r2) %r9	# 331
	addi	%r10 %r0 $0	# 336
	add	%r25 %r9 %r10	# 336
	fld	0(%r25) %f1	# 336
	fneg	%f31 %f1	# 1653
	fadd	%f0 %f0 %f31	# 1653
	ld	4(%r2) %r9	# 291
	addi	%r10 %r0 $0	# 296
	add	%r25 %r9 %r10	# 296
	fld	0(%r25) %f1	# 296
	st	-1(%r29) %r8	# 1653
	st	-2(%r29) %r2	# 1653
	st	-3(%r29) %r3	# 1653
	fst	-4(%r29) %f0	# 1653
	fsqrt	%f0 %f1	# 1653
	fld	-4(%r29) %f1	# 1653
	fmul	%f1 %f1 %f0	# 1653
	addi	%r2 %r0 $2	# 1654
	ld	-3(%r29) %r3	# 1654
	add	%r25 %r3 %r2	# 1654
	fld	0(%r25) %f0	# 1654
	ld	-2(%r29) %r2	# 351
	ld	5(%r2) %r8	# 351
	addi	%r9 %r0 $2	# 356
	add	%r25 %r8 %r9	# 356
	fld	0(%r25) %f2	# 356
	fneg	%f31 %f2	# 1654
	fadd	%f0 %f0 %f31	# 1654
	ld	4(%r2) %r8	# 311
	addi	%r9 %r0 $2	# 316
	add	%r25 %r8 %r9	# 316
	fld	0(%r25) %f2	# 316
	fst	-5(%r29) %f1	# 1654
	fst	-6(%r29) %f0	# 1654
	fsqrt	%f0 %f2	# 1654
	fld	-6(%r29) %f1	# 1654
	fmul	%f1 %f1 %f0	# 1654
	fld	-5(%r29) %f0	# 94
	fmul	%f2 %f0 %f0	# 94
	fmul	%f3 %f1 %f1	# 94
	fadd	%f2 %f2 %f3	# 1655
	fst	-7(%r29) %f2	# 1657
	fst	-8(%r29) %f1	# 1657
	fabs	%f0 %f0	# 1657
	addi	%r2 %r0 l.8655	# 1657
	fld	0(%r2) %f1	# 1657
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10811	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10812	# 89
bclt_true.10811:
	addi	%r2 %r0 $1	# 89
bclt_cont.10812:
	beq	%r2 %r0 beq_true.10813	# 1657
	addi	%r2 %r0 l.8657	# 1658
	fld	0(%r2) %f0	# 1658
	beq	%r0 %r0 beq_cont.10814	# 1657
beq_true.10813:
	fld	-5(%r29) %f0	# 1660
	fld	-8(%r29) %f1	# 1660
	finv	%f31 %f0	# 1660
	fmul	%f0 %f1 %f31	# 1660
	fabs	%f0 %f0	# 1660
	addi	%r29 %r29 $-9	# 1662
	st	0(%r29) %r31	# 1662
	jal	min_caml_atan	# 1662
	ld	0(%r29) %r31	# 1662
	addi	%r29 %r29 $9	# 1662
	addi	%r2 %r0 l.8659	# 1662
	fld	0(%r2) %f1	# 1662
	fmul	%f0 %f0 %f1	# 1662
	addi	%r2 %r0 l.8661	# 1662
	fld	0(%r2) %f1	# 1662
	finv	%f31 %f1	# 1662
	fmul	%f0 %f0 %f31	# 1662
beq_cont.10814:
	fst	-9(%r29) %f0	# 1664
	addi	%r29 %r29 $-10	# 1664
	st	0(%r29) %r31	# 1664
	jal	min_caml_floor	# 1664
	ld	0(%r29) %r31	# 1664
	addi	%r29 %r29 $10	# 1664
	fld	-9(%r29) %f1	# 1664
	fneg	%f31 %f0	# 1664
	fadd	%f1 %f1 %f31	# 1664
	addi	%r2 %r0 $1	# 1666
	ld	-3(%r29) %r3	# 1666
	add	%r25 %r3 %r2	# 1666
	fld	0(%r25) %f0	# 1666
	ld	-2(%r29) %r2	# 341
	ld	5(%r2) %r3	# 341
	addi	%r8 %r0 $1	# 346
	add	%r25 %r3 %r8	# 346
	fld	0(%r25) %f2	# 346
	fneg	%f31 %f2	# 1666
	fadd	%f0 %f0 %f31	# 1666
	ld	4(%r2) %r2	# 301
	addi	%r3 %r0 $1	# 306
	add	%r25 %r2 %r3	# 306
	fld	0(%r25) %f2	# 306
	fst	-10(%r29) %f1	# 1666
	fst	-11(%r29) %f0	# 1666
	fsqrt	%f0 %f2	# 1666
	fld	-11(%r29) %f1	# 1666
	fmul	%f1 %f1 %f0	# 1666
	fld	-7(%r29) %f0	# 1668
	fst	-12(%r29) %f1	# 1668
	fabs	%f0 %f0	# 1668
	addi	%r2 %r0 l.8655	# 1668
	fld	0(%r2) %f1	# 1668
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10815	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10816	# 89
bclt_true.10815:
	addi	%r2 %r0 $1	# 89
bclt_cont.10816:
	beq	%r2 %r0 beq_true.10817	# 1668
	addi	%r2 %r0 l.8657	# 1669
	fld	0(%r2) %f0	# 1669
	beq	%r0 %r0 beq_cont.10818	# 1668
beq_true.10817:
	fld	-7(%r29) %f0	# 1671
	fld	-12(%r29) %f1	# 1671
	finv	%f31 %f0	# 1671
	fmul	%f0 %f1 %f31	# 1671
	fabs	%f0 %f0	# 1671
	addi	%r29 %r29 $-13	# 1672
	st	0(%r29) %r31	# 1672
	jal	min_caml_atan	# 1672
	ld	0(%r29) %r31	# 1672
	addi	%r29 %r29 $13	# 1672
	addi	%r2 %r0 l.8659	# 1672
	fld	0(%r2) %f1	# 1672
	fmul	%f0 %f0 %f1	# 1672
	addi	%r2 %r0 l.8661	# 1672
	fld	0(%r2) %f1	# 1672
	finv	%f31 %f1	# 1672
	fmul	%f0 %f0 %f31	# 1672
beq_cont.10818:
	fst	-13(%r29) %f0	# 1674
	addi	%r29 %r29 $-14	# 1674
	st	0(%r29) %r31	# 1674
	jal	min_caml_floor	# 1674
	ld	0(%r29) %r31	# 1674
	addi	%r29 %r29 $14	# 1674
	fld	-13(%r29) %f1	# 1674
	fneg	%f31 %f0	# 1674
	fadd	%f1 %f1 %f31	# 1674
	addi	%r2 %r0 l.8667	# 1675
	fld	0(%r2) %f0	# 1675
	addi	%r2 %r0 l.8586	# 1675
	fld	0(%r2) %f2	# 1675
	fld	-10(%r29) %f3	# 1675
	fneg	%f31 %f3	# 1675
	fadd	%f2 %f2 %f31	# 1675
	fmul	%f2 %f2 %f2	# 94
	fneg	%f31 %f2	# 1675
	fadd	%f0 %f0 %f31	# 1675
	addi	%r2 %r0 l.8586	# 1675
	fld	0(%r2) %f2	# 1675
	fneg	%f31 %f1	# 1675
	fadd	%f2 %f2 %f31	# 1675
	fmul	%f2 %f2 %f2	# 94
	fneg	%f31 %f2	# 1675
	fadd	%f0 %f0 %f31	# 1675
	addi	%r2 %r0 l.8518	# 91
	fld	0(%r2) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10819	# 91
	addi	%r2 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10820	# 91
bclt_true.10819:
	addi	%r2 %r0 $1	# 91
bclt_cont.10820:
	beq	%r2 %r0 beq_true.10821	# 1676
	addi	%r2 %r0 l.8518	# 1676
	fld	0(%r2) %f0	# 1676
	beq	%r0 %r0 beq_cont.10822	# 1676
beq_true.10821:
beq_cont.10822:
	addi	%r2 %r0 $2	# 1677
	addi	%r3 %r0 l.8673	# 1677
	fld	0(%r3) %f1	# 1677
	fmul	%f1 %f1 %f0	# 1677
	addi	%r3 %r0 l.8675	# 1677
	fld	0(%r3) %f0	# 1677
	finv	%f31 %f0	# 1677
	fmul	%f1 %f1 %f31	# 1677
	ld	-1(%r29) %r3	# 1677
	add	%r25 %r3 %r2	# 1677
	fst	0(%r25) %f1	# 1677
	jr	%r31	# 1677
beq.10808:
	addi	%r9 %r0 $0	# 1643
	add	%r25 %r3 %r9	# 1643
	fld	0(%r25) %f0	# 1643
	ld	5(%r2) %r9	# 331
	addi	%r10 %r0 $0	# 336
	add	%r25 %r9 %r10	# 336
	fld	0(%r25) %f1	# 336
	fneg	%f31 %f1	# 1643
	fadd	%f0 %f0 %f31	# 1643
	addi	%r9 %r0 $2	# 1644
	add	%r25 %r3 %r9	# 1644
	fld	0(%r25) %f1	# 1644
	ld	5(%r2) %r2	# 351
	addi	%r3 %r0 $2	# 356
	add	%r25 %r2 %r3	# 356
	fld	0(%r25) %f2	# 356
	fneg	%f31 %f2	# 1644
	fadd	%f1 %f1 %f31	# 1644
	fmul	%f0 %f0 %f0	# 94
	fmul	%f1 %f1 %f1	# 94
	fadd	%f0 %f0 %f1	# 1645
	st	-1(%r29) %r8	# 1645
	fsqrt	%f0 %f0	# 1645
	addi	%r2 %r0 l.8677	# 1645
	fld	0(%r2) %f1	# 1645
	finv	%f31 %f1	# 1645
	fmul	%f0 %f0 %f31	# 1645
	fst	-14(%r29) %f0	# 1646
	addi	%r29 %r29 $-15	# 1646
	st	0(%r29) %r31	# 1646
	jal	min_caml_floor	# 1646
	ld	0(%r29) %r31	# 1646
	addi	%r29 %r29 $15	# 1646
	fld	-14(%r29) %f1	# 1646
	fneg	%f31 %f0	# 1646
	fadd	%f1 %f1 %f31	# 1646
	addi	%r2 %r0 l.8661	# 1646
	fld	0(%r2) %f0	# 1646
	fmul	%f0 %f1 %f0	# 1646
	addi	%r29 %r29 $-15	# 1647
	st	0(%r29) %r31	# 1647
	jal	min_caml_cos	# 1647
	ld	0(%r29) %r31	# 1647
	addi	%r29 %r29 $15	# 1647
	fmul	%f0 %f0 %f0	# 94
	addi	%r2 %r0 $1	# 1648
	addi	%r3 %r0 l.8673	# 1648
	fld	0(%r3) %f1	# 1648
	fmul	%f1 %f0 %f1	# 1648
	ld	-1(%r29) %r3	# 1648
	add	%r25 %r3 %r2	# 1648
	fst	0(%r25) %f1	# 1648
	addi	%r2 %r0 $2	# 1649
	addi	%r8 %r0 l.8520	# 1649
	fld	0(%r8) %f1	# 1649
	fneg	%f31 %f0	# 1649
	fadd	%f1 %f1 %f31	# 1649
	addi	%r8 %r0 l.8673	# 1649
	fld	0(%r8) %f0	# 1649
	fmul	%f1 %f1 %f0	# 1649
	add	%r25 %r3 %r2	# 1649
	fst	0(%r25) %f1	# 1649
	jr	%r31	# 1649
beq.10807:
	addi	%r2 %r0 $1	# 1636
	add	%r25 %r3 %r2	# 1636
	fld	0(%r25) %f0	# 1636
	addi	%r2 %r0 l.8683	# 1636
	fld	0(%r2) %f1	# 1636
	fmul	%f0 %f0 %f1	# 1636
	st	-1(%r29) %r8	# 1636
	addi	%r29 %r29 $-15	# 1636
	st	0(%r29) %r31	# 1636
	jal	min_caml_sin	# 1636
	ld	0(%r29) %r31	# 1636
	addi	%r29 %r29 $15	# 1636
	fmul	%f0 %f0 %f0	# 94
	addi	%r2 %r0 $0	# 1637
	addi	%r3 %r0 l.8673	# 1637
	fld	0(%r3) %f1	# 1637
	fmul	%f1 %f1 %f0	# 1637
	ld	-1(%r29) %r3	# 1637
	add	%r25 %r3 %r2	# 1637
	fst	0(%r25) %f1	# 1637
	addi	%r2 %r0 $1	# 1638
	addi	%r8 %r0 l.8673	# 1638
	fld	0(%r8) %f1	# 1638
	addi	%r8 %r0 l.8520	# 1638
	fld	0(%r8) %f2	# 1638
	fneg	%f31 %f0	# 1638
	fadd	%f2 %f2 %f31	# 1638
	fmul	%f1 %f1 %f2	# 1638
	add	%r25 %r3 %r2	# 1638
	fst	0(%r25) %f1	# 1638
	jr	%r31	# 1638
beq.10806:
	addi	%r9 %r0 $0	# 1618
	add	%r25 %r3 %r9	# 1618
	fld	0(%r25) %f0	# 1618
	ld	5(%r2) %r9	# 331
	addi	%r10 %r0 $0	# 336
	add	%r25 %r9 %r10	# 336
	fld	0(%r25) %f1	# 336
	fneg	%f31 %f1	# 1618
	fadd	%f0 %f0 %f31	# 1618
	addi	%r9 %r0 l.8688	# 1620
	fld	0(%r9) %f1	# 1620
	fmul	%f1 %f0 %f1	# 1620
	st	-1(%r29) %r8	# 1620
	st	-2(%r29) %r2	# 1620
	st	-3(%r29) %r3	# 1620
	fst	-15(%r29) %f0	# 1620
	fmov	%f0 %f1	# 1620
	addi	%r29 %r29 $-16	# 1620
	st	0(%r29) %r31	# 1620
	jal	min_caml_floor	# 1620
	ld	0(%r29) %r31	# 1620
	addi	%r29 %r29 $16	# 1620
	addi	%r2 %r0 l.8690	# 1620
	fld	0(%r2) %f1	# 1620
	fmul	%f0 %f0 %f1	# 1620
	fld	-15(%r29) %f1	# 1621
	fneg	%f31 %f0	# 1621
	fadd	%f1 %f1 %f31	# 1621
	addi	%r2 %r0 l.8677	# 1621
	fld	0(%r2) %f0	# 1621
	fslt	%f1 %f0	# 89
	bclt	bclt_true.10826	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10827	# 89
bclt_true.10826:
	addi	%r2 %r0 $1	# 89
bclt_cont.10827:
	addi	%r3 %r0 $2	# 1623
	ld	-3(%r29) %r8	# 1623
	add	%r25 %r8 %r3	# 1623
	fld	0(%r25) %f0	# 1623
	ld	-2(%r29) %r3	# 351
	ld	5(%r3) %r3	# 351
	addi	%r8 %r0 $2	# 356
	add	%r25 %r3 %r8	# 356
	fld	0(%r25) %f1	# 356
	fneg	%f31 %f1	# 1623
	fadd	%f0 %f0 %f31	# 1623
	addi	%r3 %r0 l.8688	# 1625
	fld	0(%r3) %f1	# 1625
	fmul	%f1 %f0 %f1	# 1625
	st	-16(%r29) %r2	# 1625
	fst	-17(%r29) %f0	# 1625
	fmov	%f0 %f1	# 1625
	addi	%r29 %r29 $-18	# 1625
	st	0(%r29) %r31	# 1625
	jal	min_caml_floor	# 1625
	ld	0(%r29) %r31	# 1625
	addi	%r29 %r29 $18	# 1625
	addi	%r2 %r0 l.8690	# 1625
	fld	0(%r2) %f1	# 1625
	fmul	%f0 %f0 %f1	# 1625
	fld	-17(%r29) %f1	# 1626
	fneg	%f31 %f0	# 1626
	fadd	%f1 %f1 %f31	# 1626
	addi	%r2 %r0 l.8677	# 1626
	fld	0(%r2) %f0	# 1626
	fslt	%f1 %f0	# 89
	bclt	bclt_true.10828	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10829	# 89
bclt_true.10828:
	addi	%r2 %r0 $1	# 89
bclt_cont.10829:
	addi	%r3 %r0 $1	# 1628
	ld	-16(%r29) %r8	# 1629
	beq	%r8 %r0 beq_true.10830	# 1629
	beq	%r2 %r0 beq_true.10832	# 1630
	addi	%r2 %r0 l.8673	# 1630
	fld	0(%r2) %f0	# 1630
	beq	%r0 %r0 beq_cont.10833	# 1630
beq_true.10832:
	addi	%r2 %r0 l.8518	# 1630
	fld	0(%r2) %f0	# 1630
beq_cont.10833:
	beq	%r0 %r0 beq_cont.10831	# 1629
beq_true.10830:
	beq	%r2 %r0 beq_true.10834	# 1631
	addi	%r2 %r0 l.8518	# 1631
	fld	0(%r2) %f0	# 1631
	beq	%r0 %r0 beq_cont.10835	# 1631
beq_true.10834:
	addi	%r2 %r0 l.8673	# 1631
	fld	0(%r2) %f0	# 1631
beq_cont.10835:
beq_cont.10831:
	ld	-1(%r29) %r2	# 1628
	add	%r25 %r2 %r3	# 1628
	fst	0(%r25) %f0	# 1628
	jr	%r31	# 1628
add_light.2809:
	ld	2(%r16) %r3	# 0
	ld	1(%r16) %r2	# 0
	addi	%r8 %r0 l.8518	# 90
	fld	0(%r8) %f3	# 90
	fslt	%f3 %f0	# 90
	bclt	bclt_true.10837	# 90
	addi	%r8 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10838	# 90
bclt_true.10837:
	addi	%r8 %r0 $1	# 90
bclt_cont.10838:
	st	-1(%r29) %r2	# 1690
	fst	-2(%r29) %f2	# 1690
	fst	-3(%r29) %f1	# 1690
	beq	%r8 %r0 beq_true.10839	# 1690
	addi	%r29 %r29 $-4	# 1691
	st	0(%r29) %r31	# 1691
	jal	vecaccum.2520	# 1691
	ld	0(%r29) %r31	# 1691
	addi	%r29 %r29 $4	# 1691
	beq	%r0 %r0 beq_cont.10840	# 1690
beq_true.10839:
beq_cont.10840:
	addi	%r2 %r0 l.8518	# 90
	fld	0(%r2) %f0	# 90
	fld	-3(%r29) %f1	# 90
	fslt	%f0 %f1	# 90
	bclt	bclt_true.10841	# 90
	addi	%r2 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10842	# 90
bclt_true.10841:
	addi	%r2 %r0 $1	# 90
bclt_cont.10842:
	beq	%r2 %r0 beq.10843	# 1695
	fmul	%f1 %f1 %f1	# 94
	fmul	%f1 %f1 %f1	# 94
	fld	-2(%r29) %f0	# 1696
	fmul	%f1 %f1 %f0	# 1696
	addi	%r2 %r0 $0	# 1697
	addi	%r3 %r0 $0	# 1697
	ld	-1(%r29) %r8	# 1697
	add	%r25 %r8 %r3	# 1697
	fld	0(%r25) %f0	# 1697
	fadd	%f0 %f0 %f1	# 1697
	add	%r25 %r8 %r2	# 1697
	fst	0(%r25) %f0	# 1697
	addi	%r2 %r0 $1	# 1698
	addi	%r3 %r0 $1	# 1698
	add	%r25 %r8 %r3	# 1698
	fld	0(%r25) %f0	# 1698
	fadd	%f0 %f0 %f1	# 1698
	add	%r25 %r8 %r2	# 1698
	fst	0(%r25) %f0	# 1698
	addi	%r2 %r0 $2	# 1699
	addi	%r3 %r0 $2	# 1699
	add	%r25 %r8 %r3	# 1699
	fld	0(%r25) %f0	# 1699
	fadd	%f0 %f0 %f1	# 1699
	add	%r25 %r8 %r2	# 1699
	fst	0(%r25) %f0	# 1699
	jr	%r31	# 1699
beq.10843:
	jr	%r31	# 1700
trace_reflections.2813:
	ld	8(%r16) %r8	# 0
	ld	7(%r16) %r9	# 0
	ld	6(%r16) %r10	# 0
	ld	5(%r16) %r11	# 0
	ld	4(%r16) %r12	# 0
	ld	3(%r16) %r13	# 0
	ld	2(%r16) %r14	# 0
	ld	1(%r16) %r15	# 0
	sub	%r25 %r0 %r2	# 1706
	addi	%r25 %r25 $0	# 1706
	slt	%r25 %r0 %r25	# 1706
	beq	%r25 %r0 beq.10846	# 1706
	jr	%r31	# 1726
beq.10846:
	add	%r25 %r9 %r2	# 1707
	ld	0(%r25) %r9	# 1707
	st	-1(%r29) %r2	# 561
	ld	1(%r9) %r2	# 561
	st	-2(%r29) %r16	# 1711
	fst	-3(%r29) %f1	# 1711
	st	-4(%r29) %r15	# 1711
	st	-5(%r29) %r3	# 1711
	fst	-6(%r29) %f0	# 1711
	st	-7(%r29) %r11	# 1711
	st	-8(%r29) %r2	# 1711
	st	-9(%r29) %r8	# 1711
	st	-10(%r29) %r10	# 1711
	st	-11(%r29) %r9	# 1711
	st	-12(%r29) %r13	# 1711
	st	-13(%r29) %r14	# 1711
	add	%r16 %r0 %r12	# 1711
	addi	%r29 %r29 $-14	# 1711
	st	0(%r29) %r31	# 1711
	ld	0(%r16) %r24	# 1711
	jalr	%r24	# 1711
	ld	0(%r29) %r31	# 1711
	addi	%r29 %r29 $14	# 1711
	beq	%r2 %r0 beq_true.10848	# 1711
	addi	%r2 %r0 $0	# 1712
	ld	-13(%r29) %r3	# 1712
	add	%r25 %r3 %r2	# 1712
	ld	0(%r25) %r2	# 1712
	addi	%r25 %r0 $2	# 1712
	sll	%r2 %r2 %r25	# 1712
	addi	%r3 %r0 $0	# 1712
	ld	-12(%r29) %r8	# 1712
	add	%r25 %r8 %r3	# 1712
	ld	0(%r25) %r3	# 1712
	add	%r2 %r2 %r3	# 1712
	ld	-11(%r29) %r3	# 555
	ld	0(%r3) %r8	# 555
	beq	%r2 %r8 beq_true.10850	# 1713
	beq	%r0 %r0 beq_cont.10851	# 1713
beq_true.10850:
	addi	%r2 %r0 $0	# 1715
	addi	%r8 %r0 $0	# 1715
	ld	-10(%r29) %r9	# 1715
	add	%r25 %r9 %r8	# 1715
	ld	0(%r25) %r8	# 1715
	ld	-9(%r29) %r9	# 1715
	add	%r3 %r0 %r8	# 1715
	add	%r16 %r0 %r9	# 1715
	addi	%r29 %r29 $-14	# 1715
	st	0(%r29) %r31	# 1715
	ld	0(%r16) %r24	# 1715
	jalr	%r24	# 1715
	ld	0(%r29) %r31	# 1715
	addi	%r29 %r29 $14	# 1715
	beq	%r2 %r0 beq_true.10852	# 1715
	beq	%r0 %r0 beq_cont.10853	# 1715
beq_true.10852:
	ld	-8(%r29) %r2	# 539
	ld	0(%r2) %r3	# 539
	ld	-7(%r29) %r8	# 1717
	add	%r2 %r0 %r8	# 1717
	addi	%r29 %r29 $-14	# 1717
	st	0(%r29) %r31	# 1717
	jal	veciprod.2512	# 1717
	ld	0(%r29) %r31	# 1717
	addi	%r29 %r29 $14	# 1717
	ld	-11(%r29) %r2	# 567
	fld	2(%r2) %f1	# 567
	fld	-6(%r29) %f2	# 1719
	fmul	%f3 %f1 %f2	# 1719
	fmul	%f3 %f3 %f0	# 1719
	ld	-8(%r29) %r2	# 539
	ld	0(%r2) %r3	# 539
	ld	-5(%r29) %r2	# 1720
	fst	-14(%r29) %f3	# 1720
	fst	-15(%r29) %f1	# 1720
	addi	%r29 %r29 $-16	# 1720
	st	0(%r29) %r31	# 1720
	jal	veciprod.2512	# 1720
	ld	0(%r29) %r31	# 1720
	addi	%r29 %r29 $16	# 1720
	fld	-15(%r29) %f1	# 1720
	fmul	%f1 %f1 %f0	# 1720
	fld	-14(%r29) %f0	# 1721
	fld	-3(%r29) %f2	# 1721
	ld	-4(%r29) %r2	# 1721
	add	%r16 %r0 %r2	# 1721
	addi	%r29 %r29 $-16	# 1721
	st	0(%r29) %r31	# 1721
	ld	0(%r16) %r24	# 1721
	jalr	%r24	# 1721
	ld	0(%r29) %r31	# 1721
	addi	%r29 %r29 $16	# 1721
beq_cont.10853:
beq_cont.10851:
	beq	%r0 %r0 beq_cont.10849	# 1711
beq_true.10848:
beq_cont.10849:
	ld	-1(%r29) %r2	# 1725
	addi	%r2 %r2 $-1	# 1725
	fld	-6(%r29) %f0	# 1725
	fld	-3(%r29) %f1	# 1725
	ld	-5(%r29) %r3	# 1725
	ld	-2(%r29) %r8	# 1725
	add	%r16 %r0 %r8	# 1725
	ld	0(%r16) %r24	# 1725
	jr	%r24	# 1725
trace_ray.2818:
	ld	24(%r16) %r9	# 0
	ld	23(%r16) %r10	# 0
	ld	22(%r16) %r11	# 0
	ld	21(%r16) %r12	# 0
	ld	20(%r16) %r13	# 0
	ld	19(%r16) %r14	# 0
	ld	18(%r16) %r15	# 0
	st	-1(%r29) %r11	# 0
	ld	17(%r16) %r11	# 0
	st	-2(%r29) %r10	# 0
	ld	16(%r16) %r10	# 0
	st	-3(%r29) %r11	# 0
	ld	15(%r16) %r11	# 0
	st	-4(%r29) %r13	# 0
	ld	14(%r16) %r13	# 0
	st	-5(%r29) %r15	# 0
	ld	13(%r16) %r15	# 0
	st	-6(%r29) %r11	# 0
	ld	12(%r16) %r11	# 0
	st	-7(%r29) %r11	# 0
	ld	11(%r16) %r11	# 0
	st	-8(%r29) %r11	# 0
	ld	10(%r16) %r11	# 0
	st	-9(%r29) %r15	# 0
	ld	9(%r16) %r15	# 0
	st	-10(%r29) %r12	# 0
	ld	8(%r16) %r12	# 0
	st	-11(%r29) %r12	# 0
	ld	7(%r16) %r12	# 0
	st	-12(%r29) %r9	# 0
	ld	6(%r16) %r9	# 0
	st	-13(%r29) %r12	# 0
	ld	5(%r16) %r12	# 0
	st	-14(%r29) %r14	# 0
	ld	4(%r16) %r14	# 0
	st	-15(%r29) %r12	# 0
	ld	3(%r16) %r12	# 0
	st	-16(%r29) %r12	# 0
	ld	2(%r16) %r12	# 0
	st	-17(%r29) %r14	# 0
	ld	1(%r16) %r14	# 0
	sub	%r25 %r0 %r2	# 1734
	addi	%r25 %r25 $4	# 1734
	slt	%r25 %r25 %r0	# 1734
	beq	%r25 %r0 beq.10854	# 1734
	jr	%r31	# 1815
beq.10854:
	st	-18(%r29) %r14	# 477
	ld	2(%r8) %r14	# 477
	st	-19(%r29) %r16	# 1736
	fst	-20(%r29) %f1	# 1736
	st	-21(%r29) %r8	# 1736
	st	-22(%r29) %r13	# 1736
	st	-23(%r29) %r9	# 1736
	st	-24(%r29) %r10	# 1736
	st	-25(%r29) %r12	# 1736
	fst	-26(%r29) %f0	# 1736
	st	-27(%r29) %r11	# 1736
	st	-28(%r29) %r3	# 1736
	st	-29(%r29) %r2	# 1736
	st	-30(%r29) %r14	# 1736
	add	%r2 %r0 %r3	# 1736
	add	%r16 %r0 %r15	# 1736
	addi	%r29 %r29 $-31	# 1736
	st	0(%r29) %r31	# 1736
	ld	0(%r16) %r24	# 1736
	jalr	%r24	# 1736
	ld	0(%r29) %r31	# 1736
	addi	%r29 %r29 $31	# 1736
	beq	%r2 %r0 beq.10856	# 1736
	addi	%r2 %r0 $0	# 1738
	ld	-23(%r29) %r3	# 1738
	add	%r25 %r3 %r2	# 1738
	ld	0(%r25) %r2	# 1738
	ld	-22(%r29) %r3	# 1739
	add	%r25 %r3 %r2	# 1739
	ld	0(%r25) %r3	# 1739
	ld	2(%r3) %r8	# 263
	ld	7(%r3) %r9	# 361
	addi	%r10 %r0 $0	# 366
	add	%r25 %r9 %r10	# 366
	fld	0(%r25) %f0	# 366
	fld	-26(%r29) %f1	# 1741
	fmul	%f0 %f0 %f1	# 1741
	ld	1(%r3) %r9	# 253
	st	-31(%r29) %r8	# 1595
	fst	-32(%r29) %f0	# 1595
	st	-33(%r29) %r2	# 1595
	st	-34(%r29) %r3	# 1595
	addi	%r25 %r9 $-1	# 1595
	beq	%r25 %r0 beq_true.10857	# 1595
	addi	%r25 %r9 $-2	# 1597
	beq	%r25 %r0 beq_true.10859	# 1597
	ld	-15(%r29) %r9	# 1600
	add	%r2 %r0 %r3	# 1600
	add	%r16 %r0 %r9	# 1600
	addi	%r29 %r29 $-35	# 1600
	st	0(%r29) %r31	# 1600
	ld	0(%r16) %r24	# 1600
	jalr	%r24	# 1600
	ld	0(%r29) %r31	# 1600
	addi	%r29 %r29 $35	# 1600
	beq	%r0 %r0 beq_cont.10860	# 1597
beq_true.10859:
	ld	-16(%r29) %r9	# 1598
	add	%r2 %r0 %r3	# 1598
	add	%r16 %r0 %r9	# 1598
	addi	%r29 %r29 $-35	# 1598
	st	0(%r29) %r31	# 1598
	ld	0(%r16) %r24	# 1598
	jalr	%r24	# 1598
	ld	0(%r29) %r31	# 1598
	addi	%r29 %r29 $35	# 1598
beq_cont.10860:
	beq	%r0 %r0 beq_cont.10858	# 1595
beq_true.10857:
	ld	-28(%r29) %r9	# 1596
	ld	-17(%r29) %r10	# 1596
	add	%r2 %r0 %r9	# 1596
	add	%r16 %r0 %r10	# 1596
	addi	%r29 %r29 $-35	# 1596
	st	0(%r29) %r31	# 1596
	ld	0(%r16) %r24	# 1596
	jalr	%r24	# 1596
	ld	0(%r29) %r31	# 1596
	addi	%r29 %r29 $35	# 1596
beq_cont.10858:
	ld	-14(%r29) %r2	# 1744
	ld	-13(%r29) %r3	# 1744
	addi	%r29 %r29 $-35	# 1744
	st	0(%r29) %r31	# 1744
	jal	veccpy.2501	# 1744
	ld	0(%r29) %r31	# 1744
	addi	%r29 %r29 $35	# 1744
	ld	-34(%r29) %r2	# 1745
	ld	-13(%r29) %r3	# 1745
	ld	-12(%r29) %r8	# 1745
	add	%r16 %r0 %r8	# 1745
	addi	%r29 %r29 $-35	# 1745
	st	0(%r29) %r31	# 1745
	ld	0(%r16) %r24	# 1745
	jalr	%r24	# 1745
	ld	0(%r29) %r31	# 1745
	addi	%r29 %r29 $35	# 1745
	ld	-33(%r29) %r2	# 1748
	addi	%r25 %r0 $2	# 1748
	sll	%r2 %r2 %r25	# 1748
	addi	%r3 %r0 $0	# 1748
	ld	-11(%r29) %r8	# 1748
	add	%r25 %r8 %r3	# 1748
	ld	0(%r25) %r3	# 1748
	add	%r2 %r2 %r3	# 1748
	ld	-29(%r29) %r3	# 1748
	ld	-30(%r29) %r8	# 1748
	add	%r25 %r8 %r3	# 1748
	st	0(%r25) %r2	# 1748
	ld	-21(%r29) %r2	# 469
	ld	1(%r2) %r9	# 469
	add	%r25 %r9 %r3	# 1750
	ld	0(%r25) %r9	# 1750
	ld	-13(%r29) %r10	# 1750
	add	%r3 %r0 %r10	# 1750
	add	%r2 %r0 %r9	# 1750
	addi	%r29 %r29 $-35	# 1750
	st	0(%r29) %r31	# 1750
	jal	veccpy.2501	# 1750
	ld	0(%r29) %r31	# 1750
	addi	%r29 %r29 $35	# 1750
	ld	-21(%r29) %r2	# 484
	ld	3(%r2) %r3	# 484
	ld	-34(%r29) %r8	# 361
	ld	7(%r8) %r9	# 361
	addi	%r10 %r0 $0	# 366
	add	%r25 %r9 %r10	# 366
	fld	0(%r25) %f0	# 366
	addi	%r9 %r0 l.8586	# 1754
	fld	0(%r9) %f1	# 1754
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10861	# 89
	addi	%r9 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10862	# 89
bclt_true.10861:
	addi	%r9 %r0 $1	# 89
bclt_cont.10862:
	beq	%r9 %r0 beq_true.10863	# 1754
	addi	%r9 %r0 $0	# 1755
	ld	-29(%r29) %r10	# 1755
	add	%r25 %r3 %r10	# 1755
	st	0(%r25) %r9	# 1755
	beq	%r0 %r0 beq_cont.10864	# 1754
beq_true.10863:
	addi	%r9 %r0 $1	# 1757
	ld	-29(%r29) %r10	# 1757
	add	%r25 %r3 %r10	# 1757
	st	0(%r25) %r9	# 1757
	ld	4(%r2) %r3	# 491
	add	%r25 %r3 %r10	# 1759
	ld	0(%r25) %r9	# 1759
	ld	-10(%r29) %r11	# 1759
	st	-35(%r29) %r3	# 1759
	add	%r3 %r0 %r11	# 1759
	add	%r2 %r0 %r9	# 1759
	addi	%r29 %r29 $-36	# 1759
	st	0(%r29) %r31	# 1759
	jal	veccpy.2501	# 1759
	ld	0(%r29) %r31	# 1759
	addi	%r29 %r29 $36	# 1759
	ld	-29(%r29) %r2	# 1760
	ld	-35(%r29) %r3	# 1760
	add	%r25 %r3 %r2	# 1760
	ld	0(%r25) %r3	# 1760
	addi	%r8 %r0 l.8703	# 1760
	fld	0(%r8) %f0	# 1760
	fld	-32(%r29) %f1	# 1760
	fmul	%f0 %f0 %f1	# 1760
	add	%r2 %r0 %r3	# 1760
	addi	%r29 %r29 $-36	# 1760
	st	0(%r29) %r31	# 1760
	jal	vecscale.2530	# 1760
	ld	0(%r29) %r31	# 1760
	addi	%r29 %r29 $36	# 1760
	ld	-21(%r29) %r2	# 528
	ld	7(%r2) %r3	# 528
	ld	-29(%r29) %r8	# 1762
	add	%r25 %r3 %r8	# 1762
	ld	0(%r25) %r3	# 1762
	ld	-9(%r29) %r9	# 1762
	add	%r2 %r0 %r3	# 1762
	add	%r3 %r0 %r9	# 1762
	addi	%r29 %r29 $-36	# 1762
	st	0(%r29) %r31	# 1762
	jal	veccpy.2501	# 1762
	ld	0(%r29) %r31	# 1762
	addi	%r29 %r29 $36	# 1762
beq_cont.10864:
	addi	%r2 %r0 l.8705	# 1765
	fld	0(%r2) %f0	# 1765
	ld	-28(%r29) %r2	# 1765
	ld	-9(%r29) %r3	# 1765
	fst	-36(%r29) %f0	# 1765
	addi	%r29 %r29 $-37	# 1765
	st	0(%r29) %r31	# 1765
	jal	veciprod.2512	# 1765
	ld	0(%r29) %r31	# 1765
	addi	%r29 %r29 $37	# 1765
	fld	-36(%r29) %f1	# 1765
	fmul	%f0 %f1 %f0	# 1765
	ld	-28(%r29) %r2	# 1767
	ld	-9(%r29) %r3	# 1767
	addi	%r29 %r29 $-37	# 1767
	st	0(%r29) %r31	# 1767
	jal	vecaccum.2520	# 1767
	ld	0(%r29) %r31	# 1767
	addi	%r29 %r29 $37	# 1767
	ld	-34(%r29) %r2	# 371
	ld	7(%r2) %r3	# 371
	addi	%r8 %r0 $1	# 376
	add	%r25 %r3 %r8	# 376
	fld	0(%r25) %f0	# 376
	fld	-26(%r29) %f1	# 1769
	fmul	%f0 %f1 %f0	# 1769
	addi	%r3 %r0 $0	# 1772
	addi	%r8 %r0 $0	# 1772
	ld	-6(%r29) %r9	# 1772
	add	%r25 %r9 %r8	# 1772
	ld	0(%r25) %r8	# 1772
	ld	-5(%r29) %r9	# 1772
	fst	-37(%r29) %f0	# 1772
	add	%r2 %r0 %r3	# 1772
	add	%r16 %r0 %r9	# 1772
	add	%r3 %r0 %r8	# 1772
	addi	%r29 %r29 $-38	# 1772
	st	0(%r29) %r31	# 1772
	ld	0(%r16) %r24	# 1772
	jalr	%r24	# 1772
	ld	0(%r29) %r31	# 1772
	addi	%r29 %r29 $38	# 1772
	beq	%r2 %r0 beq_true.10865	# 1772
	beq	%r0 %r0 beq_cont.10866	# 1772
beq_true.10865:
	ld	-9(%r29) %r2	# 1773
	ld	-27(%r29) %r3	# 1773
	addi	%r29 %r29 $-38	# 1773
	st	0(%r29) %r31	# 1773
	jal	veciprod.2512	# 1773
	ld	0(%r29) %r31	# 1773
	addi	%r29 %r29 $38	# 1773
	fneg	%f0 %f0	# 95
	fld	-32(%r29) %f1	# 1773
	fmul	%f0 %f0 %f1	# 1773
	ld	-28(%r29) %r2	# 1774
	ld	-27(%r29) %r3	# 1774
	fst	-38(%r29) %f0	# 1774
	addi	%r29 %r29 $-39	# 1774
	st	0(%r29) %r31	# 1774
	jal	veciprod.2512	# 1774
	ld	0(%r29) %r31	# 1774
	addi	%r29 %r29 $39	# 1774
	fneg	%f1 %f0	# 95
	fld	-38(%r29) %f0	# 1775
	fld	-37(%r29) %f2	# 1775
	ld	-18(%r29) %r2	# 1775
	add	%r16 %r0 %r2	# 1775
	addi	%r29 %r29 $-39	# 1775
	st	0(%r29) %r31	# 1775
	ld	0(%r16) %r24	# 1775
	jalr	%r24	# 1775
	ld	0(%r29) %r31	# 1775
	addi	%r29 %r29 $39	# 1775
beq_cont.10866:
	ld	-4(%r29) %r2	# 1216
	ld	-13(%r29) %r3	# 1216
	addi	%r29 %r29 $-39	# 1216
	st	0(%r29) %r31	# 1216
	jal	veccpy.2501	# 1216
	ld	0(%r29) %r31	# 1216
	addi	%r29 %r29 $39	# 1216
	addi	%r2 %r0 $0	# 1217
	ld	-8(%r29) %r3	# 1217
	add	%r25 %r3 %r2	# 1217
	ld	0(%r25) %r2	# 1217
	addi	%r3 %r2 $-1	# 1217
	ld	-13(%r29) %r2	# 1217
	ld	-3(%r29) %r8	# 1217
	add	%r16 %r0 %r8	# 1217
	addi	%r29 %r29 $-39	# 1217
	st	0(%r29) %r31	# 1217
	ld	0(%r16) %r24	# 1217
	jalr	%r24	# 1217
	ld	0(%r29) %r31	# 1217
	addi	%r29 %r29 $39	# 1217
	addi	%r2 %r0 $0	# 1780
	ld	-7(%r29) %r3	# 1780
	add	%r25 %r3 %r2	# 1780
	ld	0(%r25) %r2	# 1780
	addi	%r2 %r2 $-1	# 1780
	fld	-32(%r29) %f0	# 1780
	fld	-37(%r29) %f1	# 1780
	ld	-28(%r29) %r3	# 1780
	ld	-2(%r29) %r8	# 1780
	add	%r16 %r0 %r8	# 1780
	addi	%r29 %r29 $-39	# 1780
	st	0(%r29) %r31	# 1780
	ld	0(%r16) %r24	# 1780
	jalr	%r24	# 1780
	ld	0(%r29) %r31	# 1780
	addi	%r29 %r29 $39	# 1780
	addi	%r2 %r0 l.8707	# 1783
	fld	0(%r2) %f0	# 1783
	fld	-26(%r29) %f1	# 89
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10867	# 89
	addi	%r2 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10868	# 89
bclt_true.10867:
	addi	%r2 %r0 $1	# 89
bclt_cont.10868:
	beq	%r2 %r0 beq.10869	# 1783
	ld	-29(%r29) %r2	# 1785
	sub	%r25 %r0 %r2	# 1785
	addi	%r25 %r25 $4	# 1785
	slt	%r25 %r0 %r25	# 1785
	beq	%r25 %r0 beq_true.10870	# 1785
	addi	%r3 %r2 $1	# 1786
	addi	%r8 %r0 $-1	# 1786
	ld	-30(%r29) %r9	# 1786
	add	%r25 %r9 %r3	# 1786
	st	0(%r25) %r8	# 1786
	beq	%r0 %r0 beq_cont.10871	# 1785
beq_true.10870:
beq_cont.10871:
	ld	-31(%r29) %r3	# 1789
	addi	%r25 %r3 $-2	# 1789
	beq	%r25 %r0 beq.10872	# 1789
	jr	%r31	# 1792
beq.10872:
	addi	%r3 %r0 l.8520	# 1790
	fld	0(%r3) %f0	# 1790
	ld	-34(%r29) %r3	# 361
	ld	7(%r3) %r3	# 361
	addi	%r8 %r0 $0	# 366
	add	%r25 %r3 %r8	# 366
	fld	0(%r25) %f2	# 366
	fneg	%f31 %f2	# 1790
	fadd	%f0 %f0 %f31	# 1790
	fmul	%f0 %f1 %f0	# 1790
	addi	%r2 %r2 $1	# 1791
	addi	%r3 %r0 $0	# 1791
	ld	-1(%r29) %r8	# 1791
	add	%r25 %r8 %r3	# 1791
	fld	0(%r25) %f1	# 1791
	fld	-20(%r29) %f2	# 1791
	fadd	%f1 %f2 %f1	# 1791
	ld	-28(%r29) %r3	# 1791
	ld	-21(%r29) %r8	# 1791
	ld	-19(%r29) %r9	# 1791
	add	%r16 %r0 %r9	# 1791
	ld	0(%r16) %r24	# 1791
	jr	%r24	# 1791
beq.10869:
	jr	%r31	# 1794
beq.10856:
	addi	%r2 %r0 $-1	# 1799
	ld	-29(%r29) %r3	# 1799
	ld	-30(%r29) %r8	# 1799
	add	%r25 %r8 %r3	# 1799
	st	0(%r25) %r2	# 1799
	beq	%r3 %r0 beq.10875	# 1801
	ld	-28(%r29) %r2	# 1802
	ld	-27(%r29) %r3	# 1802
	addi	%r29 %r29 $-39	# 1802
	st	0(%r29) %r31	# 1802
	jal	veciprod.2512	# 1802
	ld	0(%r29) %r31	# 1802
	addi	%r29 %r29 $39	# 1802
	fneg	%f0 %f0	# 95
	addi	%r2 %r0 l.8518	# 90
	fld	0(%r2) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10876	# 90
	addi	%r2 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10877	# 90
bclt_true.10876:
	addi	%r2 %r0 $1	# 90
bclt_cont.10877:
	beq	%r2 %r0 beq.10878	# 1804
	fmul	%f1 %f0 %f0	# 94
	fmul	%f1 %f1 %f0	# 1807
	fld	-26(%r29) %f0	# 1807
	fmul	%f1 %f1 %f0	# 1807
	addi	%r2 %r0 $0	# 1807
	ld	-25(%r29) %r3	# 1807
	add	%r25 %r3 %r2	# 1807
	fld	0(%r25) %f0	# 1807
	fmul	%f1 %f1 %f0	# 1807
	addi	%r2 %r0 $0	# 1808
	addi	%r3 %r0 $0	# 1808
	ld	-24(%r29) %r8	# 1808
	add	%r25 %r8 %r3	# 1808
	fld	0(%r25) %f0	# 1808
	fadd	%f0 %f0 %f1	# 1808
	add	%r25 %r8 %r2	# 1808
	fst	0(%r25) %f0	# 1808
	addi	%r2 %r0 $1	# 1809
	addi	%r3 %r0 $1	# 1809
	add	%r25 %r8 %r3	# 1809
	fld	0(%r25) %f0	# 1809
	fadd	%f0 %f0 %f1	# 1809
	add	%r25 %r8 %r2	# 1809
	fst	0(%r25) %f0	# 1809
	addi	%r2 %r0 $2	# 1810
	addi	%r3 %r0 $2	# 1810
	add	%r25 %r8 %r3	# 1810
	fld	0(%r25) %f0	# 1810
	fadd	%f0 %f0 %f1	# 1810
	add	%r25 %r8 %r2	# 1810
	fst	0(%r25) %f0	# 1810
	jr	%r31	# 1810
beq.10878:
	jr	%r31	# 1812
beq.10875:
	jr	%r31	# 1813
trace_diffuse_ray.2824:
	ld	14(%r16) %r3	# 0
	ld	13(%r16) %r8	# 0
	ld	12(%r16) %r9	# 0
	ld	11(%r16) %r10	# 0
	ld	10(%r16) %r11	# 0
	ld	9(%r16) %r12	# 0
	ld	8(%r16) %r13	# 0
	ld	7(%r16) %r14	# 0
	ld	6(%r16) %r15	# 0
	st	-1(%r29) %r8	# 0
	ld	5(%r16) %r8	# 0
	st	-2(%r29) %r13	# 0
	ld	4(%r16) %r13	# 0
	st	-3(%r29) %r12	# 0
	ld	3(%r16) %r12	# 0
	st	-4(%r29) %r9	# 0
	ld	2(%r16) %r9	# 0
	st	-5(%r29) %r10	# 0
	ld	1(%r16) %r10	# 0
	st	-6(%r29) %r10	# 1829
	fst	-7(%r29) %f0	# 1829
	st	-8(%r29) %r15	# 1829
	st	-9(%r29) %r3	# 1829
	st	-10(%r29) %r13	# 1829
	st	-11(%r29) %r9	# 1829
	st	-12(%r29) %r12	# 1829
	st	-13(%r29) %r2	# 1829
	st	-14(%r29) %r11	# 1829
	st	-15(%r29) %r8	# 1829
	add	%r16 %r0 %r14	# 1829
	addi	%r29 %r29 $-16	# 1829
	st	0(%r29) %r31	# 1829
	ld	0(%r16) %r24	# 1829
	jalr	%r24	# 1829
	ld	0(%r29) %r31	# 1829
	addi	%r29 %r29 $16	# 1829
	beq	%r2 %r0 beq.10882	# 1829
	addi	%r2 %r0 $0	# 1830
	ld	-15(%r29) %r3	# 1830
	add	%r25 %r3 %r2	# 1830
	ld	0(%r25) %r2	# 1830
	ld	-14(%r29) %r3	# 1830
	add	%r25 %r3 %r2	# 1830
	ld	0(%r25) %r2	# 1830
	ld	-13(%r29) %r3	# 539
	ld	0(%r3) %r3	# 539
	ld	1(%r2) %r8	# 253
	st	-16(%r29) %r2	# 1595
	addi	%r25 %r8 $-1	# 1595
	beq	%r25 %r0 beq_true.10883	# 1595
	addi	%r25 %r8 $-2	# 1597
	beq	%r25 %r0 beq_true.10885	# 1597
	ld	-10(%r29) %r3	# 1600
	add	%r16 %r0 %r3	# 1600
	addi	%r29 %r29 $-17	# 1600
	st	0(%r29) %r31	# 1600
	ld	0(%r16) %r24	# 1600
	jalr	%r24	# 1600
	ld	0(%r29) %r31	# 1600
	addi	%r29 %r29 $17	# 1600
	beq	%r0 %r0 beq_cont.10886	# 1597
beq_true.10885:
	ld	-11(%r29) %r3	# 1598
	add	%r16 %r0 %r3	# 1598
	addi	%r29 %r29 $-17	# 1598
	st	0(%r29) %r31	# 1598
	ld	0(%r16) %r24	# 1598
	jalr	%r24	# 1598
	ld	0(%r29) %r31	# 1598
	addi	%r29 %r29 $17	# 1598
beq_cont.10886:
	beq	%r0 %r0 beq_cont.10884	# 1595
beq_true.10883:
	ld	-12(%r29) %r8	# 1596
	add	%r2 %r0 %r3	# 1596
	add	%r16 %r0 %r8	# 1596
	addi	%r29 %r29 $-17	# 1596
	st	0(%r29) %r31	# 1596
	ld	0(%r16) %r24	# 1596
	jalr	%r24	# 1596
	ld	0(%r29) %r31	# 1596
	addi	%r29 %r29 $17	# 1596
beq_cont.10884:
	ld	-16(%r29) %r2	# 1832
	ld	-8(%r29) %r3	# 1832
	ld	-9(%r29) %r8	# 1832
	add	%r16 %r0 %r8	# 1832
	addi	%r29 %r29 $-17	# 1832
	st	0(%r29) %r31	# 1832
	ld	0(%r16) %r24	# 1832
	jalr	%r24	# 1832
	ld	0(%r29) %r31	# 1832
	addi	%r29 %r29 $17	# 1832
	addi	%r2 %r0 $0	# 1835
	addi	%r3 %r0 $0	# 1835
	ld	-5(%r29) %r8	# 1835
	add	%r25 %r8 %r3	# 1835
	ld	0(%r25) %r3	# 1835
	ld	-4(%r29) %r8	# 1835
	add	%r16 %r0 %r8	# 1835
	addi	%r29 %r29 $-17	# 1835
	st	0(%r29) %r31	# 1835
	ld	0(%r16) %r24	# 1835
	jalr	%r24	# 1835
	ld	0(%r29) %r31	# 1835
	addi	%r29 %r29 $17	# 1835
	beq	%r2 %r0 beq.10887	# 1835
	jr	%r31	# 1839
beq.10887:
	ld	-3(%r29) %r2	# 1836
	ld	-2(%r29) %r3	# 1836
	addi	%r29 %r29 $-17	# 1836
	st	0(%r29) %r31	# 1836
	jal	veciprod.2512	# 1836
	ld	0(%r29) %r31	# 1836
	addi	%r29 %r29 $17	# 1836
	fneg	%f0 %f0	# 95
	addi	%r2 %r0 l.8518	# 90
	fld	0(%r2) %f1	# 90
	fslt	%f1 %f0	# 90
	bclt	bclt_true.10889	# 90
	addi	%r2 %r0 $0	# 90
	beq	%r0 %r0 bclt_cont.10890	# 90
bclt_true.10889:
	addi	%r2 %r0 $1	# 90
bclt_cont.10890:
	beq	%r2 %r0 beq_true.10891	# 1837
	beq	%r0 %r0 beq_cont.10892	# 1837
beq_true.10891:
	addi	%r2 %r0 l.8518	# 1837
	fld	0(%r2) %f0	# 1837
beq_cont.10892:
	fld	-7(%r29) %f1	# 1838
	fmul	%f1 %f1 %f0	# 1838
	ld	-16(%r29) %r2	# 361
	ld	7(%r2) %r2	# 361
	addi	%r3 %r0 $0	# 366
	add	%r25 %r2 %r3	# 366
	fld	0(%r25) %f0	# 366
	fmul	%f0 %f1 %f0	# 1838
	ld	-6(%r29) %r2	# 1838
	ld	-1(%r29) %r3	# 1838
	beq	%r0 %r0 vecaccum.2520	# 1838
beq.10882:
	jr	%r31	# 1840
iter_trace_diffuse_rays.2827:
	ld	1(%r16) %r10	# 0
	sub	%r25 %r0 %r9	# 1846
	addi	%r25 %r25 $0	# 1846
	slt	%r25 %r0 %r25	# 1846
	beq	%r25 %r0 beq.10894	# 1846
	jr	%r31	# 1857
beq.10894:
	add	%r25 %r2 %r9	# 1847
	ld	0(%r25) %r11	# 1847
	ld	0(%r11) %r11	# 539
	st	-1(%r29) %r8	# 1847
	st	-2(%r29) %r3	# 1847
	st	-3(%r29) %r16	# 1847
	st	-4(%r29) %r10	# 1847
	st	-5(%r29) %r9	# 1847
	st	-6(%r29) %r2	# 1847
	add	%r2 %r0 %r11	# 1847
	addi	%r29 %r29 $-7	# 1847
	st	0(%r29) %r31	# 1847
	jal	veciprod.2512	# 1847
	ld	0(%r29) %r31	# 1847
	addi	%r29 %r29 $7	# 1847
	addi	%r2 %r0 l.8518	# 91
	fld	0(%r2) %f1	# 91
	fslt	%f0 %f1	# 91
	bclt	bclt_true.10896	# 91
	addi	%r2 %r0 $0	# 91
	beq	%r0 %r0 bclt_cont.10897	# 91
bclt_true.10896:
	addi	%r2 %r0 $1	# 91
bclt_cont.10897:
	beq	%r2 %r0 beq_true.10898	# 1851
	ld	-5(%r29) %r2	# 1852
	addi	%r3 %r2 $1	# 1852
	ld	-6(%r29) %r8	# 1852
	add	%r25 %r8 %r3	# 1852
	ld	0(%r25) %r3	# 1852
	addi	%r9 %r0 l.8714	# 1852
	fld	0(%r9) %f1	# 1852
	finv	%f31 %f1	# 1852
	fmul	%f0 %f0 %f31	# 1852
	ld	-4(%r29) %r9	# 1852
	add	%r2 %r0 %r3	# 1852
	add	%r16 %r0 %r9	# 1852
	addi	%r29 %r29 $-7	# 1852
	st	0(%r29) %r31	# 1852
	ld	0(%r16) %r24	# 1852
	jalr	%r24	# 1852
	ld	0(%r29) %r31	# 1852
	addi	%r29 %r29 $7	# 1852
	beq	%r0 %r0 beq_cont.10899	# 1851
beq_true.10898:
	ld	-5(%r29) %r2	# 1854
	ld	-6(%r29) %r3	# 1854
	add	%r25 %r3 %r2	# 1854
	ld	0(%r25) %r8	# 1854
	addi	%r9 %r0 l.8716	# 1854
	fld	0(%r9) %f1	# 1854
	finv	%f31 %f1	# 1854
	fmul	%f0 %f0 %f31	# 1854
	ld	-4(%r29) %r9	# 1854
	add	%r2 %r0 %r8	# 1854
	add	%r16 %r0 %r9	# 1854
	addi	%r29 %r29 $-7	# 1854
	st	0(%r29) %r31	# 1854
	ld	0(%r16) %r24	# 1854
	jalr	%r24	# 1854
	ld	0(%r29) %r31	# 1854
	addi	%r29 %r29 $7	# 1854
beq_cont.10899:
	ld	-5(%r29) %r2	# 1856
	addi	%r9 %r2 $-2	# 1856
	ld	-6(%r29) %r2	# 1856
	ld	-2(%r29) %r3	# 1856
	ld	-1(%r29) %r8	# 1856
	ld	-3(%r29) %r10	# 1856
	add	%r16 %r0 %r10	# 1856
	ld	0(%r16) %r24	# 1856
	jr	%r24	# 1856
trace_diffuse_ray_80percent.2836:
	ld	5(%r16) %r9	# 0
	ld	4(%r16) %r10	# 0
	ld	3(%r16) %r11	# 0
	ld	2(%r16) %r12	# 0
	ld	1(%r16) %r13	# 0
	st	-1(%r29) %r3	# 1873
	st	-2(%r29) %r12	# 1873
	st	-3(%r29) %r10	# 1873
	st	-4(%r29) %r11	# 1873
	st	-5(%r29) %r8	# 1873
	st	-6(%r29) %r9	# 1873
	st	-7(%r29) %r13	# 1873
	st	-8(%r29) %r2	# 1873
	beq	%r2 %r0 beq_true.10900	# 1873
	addi	%r14 %r0 $0	# 1874
	add	%r25 %r13 %r14	# 1874
	ld	0(%r25) %r14	# 1874
	st	-9(%r29) %r14	# 1216
	add	%r3 %r0 %r8	# 1216
	add	%r2 %r0 %r9	# 1216
	addi	%r29 %r29 $-10	# 1216
	st	0(%r29) %r31	# 1216
	jal	veccpy.2501	# 1216
	ld	0(%r29) %r31	# 1216
	addi	%r29 %r29 $10	# 1216
	addi	%r2 %r0 $0	# 1217
	ld	-4(%r29) %r3	# 1217
	add	%r25 %r3 %r2	# 1217
	ld	0(%r25) %r2	# 1217
	addi	%r2 %r2 $-1	# 1217
	ld	-5(%r29) %r8	# 1217
	ld	-3(%r29) %r9	# 1217
	add	%r3 %r0 %r2	# 1217
	add	%r16 %r0 %r9	# 1217
	add	%r2 %r0 %r8	# 1217
	addi	%r29 %r29 $-10	# 1217
	st	0(%r29) %r31	# 1217
	ld	0(%r16) %r24	# 1217
	jalr	%r24	# 1217
	ld	0(%r29) %r31	# 1217
	addi	%r29 %r29 $10	# 1217
	addi	%r9 %r0 $118	# 1866
	ld	-9(%r29) %r2	# 1866
	ld	-1(%r29) %r3	# 1866
	ld	-5(%r29) %r8	# 1866
	ld	-2(%r29) %r10	# 1866
	add	%r16 %r0 %r10	# 1866
	addi	%r29 %r29 $-10	# 1866
	st	0(%r29) %r31	# 1866
	ld	0(%r16) %r24	# 1866
	jalr	%r24	# 1866
	ld	0(%r29) %r31	# 1866
	addi	%r29 %r29 $10	# 1866
	beq	%r0 %r0 beq_cont.10901	# 1873
beq_true.10900:
beq_cont.10901:
	ld	-8(%r29) %r2	# 1877
	addi	%r25 %r2 $-1	# 1877
	beq	%r25 %r0 beq_true.10902	# 1877
	addi	%r3 %r0 $1	# 1878
	ld	-7(%r29) %r8	# 1878
	add	%r25 %r8 %r3	# 1878
	ld	0(%r25) %r3	# 1878
	ld	-6(%r29) %r9	# 1216
	ld	-5(%r29) %r10	# 1216
	st	-10(%r29) %r3	# 1216
	add	%r3 %r0 %r10	# 1216
	add	%r2 %r0 %r9	# 1216
	addi	%r29 %r29 $-11	# 1216
	st	0(%r29) %r31	# 1216
	jal	veccpy.2501	# 1216
	ld	0(%r29) %r31	# 1216
	addi	%r29 %r29 $11	# 1216
	addi	%r2 %r0 $0	# 1217
	ld	-4(%r29) %r3	# 1217
	add	%r25 %r3 %r2	# 1217
	ld	0(%r25) %r2	# 1217
	addi	%r2 %r2 $-1	# 1217
	ld	-5(%r29) %r8	# 1217
	ld	-3(%r29) %r9	# 1217
	add	%r3 %r0 %r2	# 1217
	add	%r16 %r0 %r9	# 1217
	add	%r2 %r0 %r8	# 1217
	addi	%r29 %r29 $-11	# 1217
	st	0(%r29) %r31	# 1217
	ld	0(%r16) %r24	# 1217
	jalr	%r24	# 1217
	ld	0(%r29) %r31	# 1217
	addi	%r29 %r29 $11	# 1217
	addi	%r9 %r0 $118	# 1866
	ld	-10(%r29) %r2	# 1866
	ld	-1(%r29) %r3	# 1866
	ld	-5(%r29) %r8	# 1866
	ld	-2(%r29) %r10	# 1866
	add	%r16 %r0 %r10	# 1866
	addi	%r29 %r29 $-11	# 1866
	st	0(%r29) %r31	# 1866
	ld	0(%r16) %r24	# 1866
	jalr	%r24	# 1866
	ld	0(%r29) %r31	# 1866
	addi	%r29 %r29 $11	# 1866
	beq	%r0 %r0 beq_cont.10903	# 1877
beq_true.10902:
beq_cont.10903:
	ld	-8(%r29) %r2	# 1881
	addi	%r25 %r2 $-2	# 1881
	beq	%r25 %r0 beq_true.10904	# 1881
	addi	%r3 %r0 $2	# 1882
	ld	-7(%r29) %r8	# 1882
	add	%r25 %r8 %r3	# 1882
	ld	0(%r25) %r3	# 1882
	ld	-6(%r29) %r9	# 1216
	ld	-5(%r29) %r10	# 1216
	st	-11(%r29) %r3	# 1216
	add	%r3 %r0 %r10	# 1216
	add	%r2 %r0 %r9	# 1216
	addi	%r29 %r29 $-12	# 1216
	st	0(%r29) %r31	# 1216
	jal	veccpy.2501	# 1216
	ld	0(%r29) %r31	# 1216
	addi	%r29 %r29 $12	# 1216
	addi	%r2 %r0 $0	# 1217
	ld	-4(%r29) %r3	# 1217
	add	%r25 %r3 %r2	# 1217
	ld	0(%r25) %r2	# 1217
	addi	%r2 %r2 $-1	# 1217
	ld	-5(%r29) %r8	# 1217
	ld	-3(%r29) %r9	# 1217
	add	%r3 %r0 %r2	# 1217
	add	%r16 %r0 %r9	# 1217
	add	%r2 %r0 %r8	# 1217
	addi	%r29 %r29 $-12	# 1217
	st	0(%r29) %r31	# 1217
	ld	0(%r16) %r24	# 1217
	jalr	%r24	# 1217
	ld	0(%r29) %r31	# 1217
	addi	%r29 %r29 $12	# 1217
	addi	%r9 %r0 $118	# 1866
	ld	-11(%r29) %r2	# 1866
	ld	-1(%r29) %r3	# 1866
	ld	-5(%r29) %r8	# 1866
	ld	-2(%r29) %r10	# 1866
	add	%r16 %r0 %r10	# 1866
	addi	%r29 %r29 $-12	# 1866
	st	0(%r29) %r31	# 1866
	ld	0(%r16) %r24	# 1866
	jalr	%r24	# 1866
	ld	0(%r29) %r31	# 1866
	addi	%r29 %r29 $12	# 1866
	beq	%r0 %r0 beq_cont.10905	# 1881
beq_true.10904:
beq_cont.10905:
	ld	-8(%r29) %r2	# 1885
	addi	%r25 %r2 $-3	# 1885
	beq	%r25 %r0 beq_true.10906	# 1885
	addi	%r3 %r0 $3	# 1886
	ld	-7(%r29) %r8	# 1886
	add	%r25 %r8 %r3	# 1886
	ld	0(%r25) %r3	# 1886
	ld	-6(%r29) %r9	# 1216
	ld	-5(%r29) %r10	# 1216
	st	-12(%r29) %r3	# 1216
	add	%r3 %r0 %r10	# 1216
	add	%r2 %r0 %r9	# 1216
	addi	%r29 %r29 $-13	# 1216
	st	0(%r29) %r31	# 1216
	jal	veccpy.2501	# 1216
	ld	0(%r29) %r31	# 1216
	addi	%r29 %r29 $13	# 1216
	addi	%r2 %r0 $0	# 1217
	ld	-4(%r29) %r3	# 1217
	add	%r25 %r3 %r2	# 1217
	ld	0(%r25) %r2	# 1217
	addi	%r2 %r2 $-1	# 1217
	ld	-5(%r29) %r8	# 1217
	ld	-3(%r29) %r9	# 1217
	add	%r3 %r0 %r2	# 1217
	add	%r16 %r0 %r9	# 1217
	add	%r2 %r0 %r8	# 1217
	addi	%r29 %r29 $-13	# 1217
	st	0(%r29) %r31	# 1217
	ld	0(%r16) %r24	# 1217
	jalr	%r24	# 1217
	ld	0(%r29) %r31	# 1217
	addi	%r29 %r29 $13	# 1217
	addi	%r9 %r0 $118	# 1866
	ld	-12(%r29) %r2	# 1866
	ld	-1(%r29) %r3	# 1866
	ld	-5(%r29) %r8	# 1866
	ld	-2(%r29) %r10	# 1866
	add	%r16 %r0 %r10	# 1866
	addi	%r29 %r29 $-13	# 1866
	st	0(%r29) %r31	# 1866
	ld	0(%r16) %r24	# 1866
	jalr	%r24	# 1866
	ld	0(%r29) %r31	# 1866
	addi	%r29 %r29 $13	# 1866
	beq	%r0 %r0 beq_cont.10907	# 1885
beq_true.10906:
beq_cont.10907:
	ld	-8(%r29) %r2	# 1889
	addi	%r25 %r2 $-4	# 1889
	beq	%r25 %r0 beq.10908	# 1889
	addi	%r2 %r0 $4	# 1890
	ld	-7(%r29) %r3	# 1890
	add	%r25 %r3 %r2	# 1890
	ld	0(%r25) %r2	# 1890
	ld	-6(%r29) %r3	# 1216
	ld	-5(%r29) %r8	# 1216
	st	-13(%r29) %r2	# 1216
	add	%r2 %r0 %r3	# 1216
	add	%r3 %r0 %r8	# 1216
	addi	%r29 %r29 $-14	# 1216
	st	0(%r29) %r31	# 1216
	jal	veccpy.2501	# 1216
	ld	0(%r29) %r31	# 1216
	addi	%r29 %r29 $14	# 1216
	addi	%r2 %r0 $0	# 1217
	ld	-4(%r29) %r3	# 1217
	add	%r25 %r3 %r2	# 1217
	ld	0(%r25) %r2	# 1217
	addi	%r3 %r2 $-1	# 1217
	ld	-5(%r29) %r2	# 1217
	ld	-3(%r29) %r8	# 1217
	add	%r16 %r0 %r8	# 1217
	addi	%r29 %r29 $-14	# 1217
	st	0(%r29) %r31	# 1217
	ld	0(%r16) %r24	# 1217
	jalr	%r24	# 1217
	ld	0(%r29) %r31	# 1217
	addi	%r29 %r29 $14	# 1217
	addi	%r9 %r0 $118	# 1866
	ld	-13(%r29) %r2	# 1866
	ld	-1(%r29) %r3	# 1866
	ld	-5(%r29) %r8	# 1866
	ld	-2(%r29) %r10	# 1866
	add	%r16 %r0 %r10	# 1866
	ld	0(%r16) %r24	# 1866
	jr	%r24	# 1866
beq.10908:
	jr	%r31	# 1891
calc_diffuse_using_1point.2840:
	ld	3(%r16) %r8	# 0
	ld	2(%r16) %r9	# 0
	ld	1(%r16) %r10	# 0
	ld	5(%r2) %r11	# 498
	ld	7(%r2) %r12	# 528
	ld	1(%r2) %r13	# 469
	ld	4(%r2) %r14	# 491
	add	%r25 %r11 %r3	# 1904
	ld	0(%r25) %r11	# 1904
	st	-1(%r29) %r10	# 1904
	st	-2(%r29) %r9	# 1904
	st	-3(%r29) %r14	# 1904
	st	-4(%r29) %r8	# 1904
	st	-5(%r29) %r13	# 1904
	st	-6(%r29) %r3	# 1904
	st	-7(%r29) %r12	# 1904
	st	-8(%r29) %r2	# 1904
	add	%r3 %r0 %r11	# 1904
	add	%r2 %r0 %r10	# 1904
	addi	%r29 %r29 $-9	# 1904
	st	0(%r29) %r31	# 1904
	jal	veccpy.2501	# 1904
	ld	0(%r29) %r31	# 1904
	addi	%r29 %r29 $9	# 1904
	ld	-8(%r29) %r2	# 514
	ld	6(%r2) %r2	# 514
	addi	%r3 %r0 $0	# 516
	add	%r25 %r2 %r3	# 516
	ld	0(%r25) %r2	# 516
	ld	-6(%r29) %r3	# 1907
	ld	-7(%r29) %r8	# 1907
	add	%r25 %r8 %r3	# 1907
	ld	0(%r25) %r8	# 1907
	ld	-5(%r29) %r9	# 1908
	add	%r25 %r9 %r3	# 1908
	ld	0(%r25) %r9	# 1908
	ld	-4(%r29) %r10	# 1905
	add	%r3 %r0 %r8	# 1905
	add	%r16 %r0 %r10	# 1905
	add	%r8 %r0 %r9	# 1905
	addi	%r29 %r29 $-9	# 1905
	st	0(%r29) %r31	# 1905
	ld	0(%r16) %r24	# 1905
	jalr	%r24	# 1905
	ld	0(%r29) %r31	# 1905
	addi	%r29 %r29 $9	# 1905
	ld	-6(%r29) %r2	# 1909
	ld	-3(%r29) %r3	# 1909
	add	%r25 %r3 %r2	# 1909
	ld	0(%r25) %r3	# 1909
	ld	-2(%r29) %r2	# 1909
	ld	-1(%r29) %r8	# 1909
	beq	%r0 %r0 vecaccumv.2533	# 1909
calc_diffuse_using_5points.2843:
	ld	2(%r16) %r11	# 0
	ld	1(%r16) %r12	# 0
	add	%r25 %r3 %r2	# 1918
	ld	0(%r25) %r3	# 1918
	ld	5(%r3) %r3	# 498
	addi	%r13 %r2 $-1	# 1919
	add	%r25 %r8 %r13	# 1919
	ld	0(%r25) %r13	# 1919
	ld	5(%r13) %r13	# 498
	add	%r25 %r8 %r2	# 1920
	ld	0(%r25) %r14	# 1920
	ld	5(%r14) %r14	# 498
	addi	%r15 %r2 $1	# 1921
	add	%r25 %r8 %r15	# 1921
	ld	0(%r25) %r15	# 1921
	ld	5(%r15) %r15	# 498
	add	%r25 %r9 %r2	# 1922
	ld	0(%r25) %r9	# 1922
	ld	5(%r9) %r9	# 498
	add	%r25 %r3 %r10	# 1924
	ld	0(%r25) %r3	# 1924
	st	-1(%r29) %r11	# 1924
	st	-2(%r29) %r2	# 1924
	st	-3(%r29) %r8	# 1924
	st	-4(%r29) %r9	# 1924
	st	-5(%r29) %r15	# 1924
	st	-6(%r29) %r14	# 1924
	st	-7(%r29) %r12	# 1924
	st	-8(%r29) %r10	# 1924
	st	-9(%r29) %r13	# 1924
	add	%r2 %r0 %r12	# 1924
	addi	%r29 %r29 $-10	# 1924
	st	0(%r29) %r31	# 1924
	jal	veccpy.2501	# 1924
	ld	0(%r29) %r31	# 1924
	addi	%r29 %r29 $10	# 1924
	ld	-8(%r29) %r2	# 1925
	ld	-9(%r29) %r3	# 1925
	add	%r25 %r3 %r2	# 1925
	ld	0(%r25) %r3	# 1925
	ld	-7(%r29) %r8	# 1925
	add	%r2 %r0 %r8	# 1925
	addi	%r29 %r29 $-10	# 1925
	st	0(%r29) %r31	# 1925
	jal	vecadd.2524	# 1925
	ld	0(%r29) %r31	# 1925
	addi	%r29 %r29 $10	# 1925
	ld	-8(%r29) %r2	# 1926
	ld	-6(%r29) %r3	# 1926
	add	%r25 %r3 %r2	# 1926
	ld	0(%r25) %r3	# 1926
	ld	-7(%r29) %r8	# 1926
	add	%r2 %r0 %r8	# 1926
	addi	%r29 %r29 $-10	# 1926
	st	0(%r29) %r31	# 1926
	jal	vecadd.2524	# 1926
	ld	0(%r29) %r31	# 1926
	addi	%r29 %r29 $10	# 1926
	ld	-8(%r29) %r2	# 1927
	ld	-5(%r29) %r3	# 1927
	add	%r25 %r3 %r2	# 1927
	ld	0(%r25) %r3	# 1927
	ld	-7(%r29) %r8	# 1927
	add	%r2 %r0 %r8	# 1927
	addi	%r29 %r29 $-10	# 1927
	st	0(%r29) %r31	# 1927
	jal	vecadd.2524	# 1927
	ld	0(%r29) %r31	# 1927
	addi	%r29 %r29 $10	# 1927
	ld	-8(%r29) %r2	# 1928
	ld	-4(%r29) %r3	# 1928
	add	%r25 %r3 %r2	# 1928
	ld	0(%r25) %r3	# 1928
	ld	-7(%r29) %r8	# 1928
	add	%r2 %r0 %r8	# 1928
	addi	%r29 %r29 $-10	# 1928
	st	0(%r29) %r31	# 1928
	jal	vecadd.2524	# 1928
	ld	0(%r29) %r31	# 1928
	addi	%r29 %r29 $10	# 1928
	ld	-2(%r29) %r2	# 1930
	ld	-3(%r29) %r3	# 1930
	add	%r25 %r3 %r2	# 1930
	ld	0(%r25) %r2	# 1930
	ld	4(%r2) %r2	# 491
	ld	-8(%r29) %r3	# 1931
	add	%r25 %r2 %r3	# 1931
	ld	0(%r25) %r3	# 1931
	ld	-1(%r29) %r2	# 1931
	ld	-7(%r29) %r8	# 1931
	beq	%r0 %r0 vecaccumv.2533	# 1931
do_without_neighbors.2849:
	ld	1(%r16) %r8	# 0
	sub	%r25 %r0 %r3	# 1937
	addi	%r25 %r25 $4	# 1937
	slt	%r25 %r25 %r0	# 1937
	beq	%r25 %r0 beq.10910	# 1937
	jr	%r31	# 1947
beq.10910:
	ld	2(%r2) %r9	# 477
	add	%r25 %r9 %r3	# 1940
	ld	0(%r25) %r9	# 1940
	sub	%r25 %r0 %r9	# 1940
	addi	%r25 %r25 $0	# 1940
	slt	%r25 %r0 %r25	# 1940
	beq	%r25 %r0 beq.10912	# 1940
	jr	%r31	# 1946
beq.10912:
	ld	3(%r2) %r9	# 484
	add	%r25 %r9 %r3	# 1942
	ld	0(%r25) %r9	# 1942
	st	-1(%r29) %r2	# 1942
	st	-2(%r29) %r16	# 1942
	st	-3(%r29) %r3	# 1942
	beq	%r9 %r0 beq_true.10914	# 1942
	add	%r16 %r0 %r8	# 1943
	addi	%r29 %r29 $-4	# 1943
	st	0(%r29) %r31	# 1943
	ld	0(%r16) %r24	# 1943
	jalr	%r24	# 1943
	ld	0(%r29) %r31	# 1943
	addi	%r29 %r29 $4	# 1943
	beq	%r0 %r0 beq_cont.10915	# 1942
beq_true.10914:
beq_cont.10915:
	ld	-3(%r29) %r2	# 1945
	addi	%r3 %r2 $1	# 1945
	ld	-1(%r29) %r2	# 1945
	ld	-2(%r29) %r8	# 1945
	add	%r16 %r0 %r8	# 1945
	ld	0(%r16) %r24	# 1945
	jr	%r24	# 1945
neighbors_exist.2852:
	ld	1(%r16) %r8	# 0
	addi	%r9 %r0 $1	# 1952
	add	%r25 %r8 %r9	# 1952
	ld	0(%r25) %r9	# 1952
	addi	%r10 %r3 $1	# 1952
	slt	%r25 %r10 %r9	# 1952
	beq	%r25 %r0 beq.10916	# 1952
	sub	%r25 %r0 %r3	# 1953
	addi	%r25 %r25 $0	# 1953
	slt	%r25 %r25 %r0	# 1953
	beq	%r25 %r0 beq.10917	# 1953
	addi	%r3 %r0 $0	# 1954
	add	%r25 %r8 %r3	# 1954
	ld	0(%r25) %r3	# 1954
	addi	%r8 %r2 $1	# 1954
	slt	%r25 %r8 %r3	# 1954
	beq	%r25 %r0 beq.10918	# 1954
	sub	%r25 %r0 %r2	# 1955
	addi	%r25 %r25 $0	# 1955
	slt	%r25 %r25 %r0	# 1955
	beq	%r25 %r0 beq.10919	# 1955
	addi	%r2 %r0 $1	# 1956
	jr	%r31	# 1956
beq.10919:
	addi	%r2 %r0 $0	# 1957
	jr	%r31	# 1957
beq.10918:
	addi	%r2 %r0 $0	# 1958
	jr	%r31	# 1958
beq.10917:
	addi	%r2 %r0 $0	# 1959
	jr	%r31	# 1959
beq.10916:
	addi	%r2 %r0 $0	# 1960
	jr	%r31	# 1960
neighbors_are_available.2859:
	add	%r25 %r8 %r2	# 1971
	ld	0(%r25) %r11	# 1971
	ld	2(%r11) %r11	# 477
	add	%r25 %r11 %r10	# 1965
	ld	0(%r25) %r11	# 1965
	add	%r25 %r3 %r2	# 1973
	ld	0(%r25) %r3	# 1973
	ld	2(%r3) %r3	# 477
	add	%r25 %r3 %r10	# 1965
	ld	0(%r25) %r3	# 1965
	beq	%r3 %r11 beq.10920	# 1973
	addi	%r2 %r0 $0	# 1981
	jr	%r31	# 1981
beq.10920:
	add	%r25 %r9 %r2	# 1974
	ld	0(%r25) %r3	# 1974
	ld	2(%r3) %r3	# 477
	add	%r25 %r3 %r10	# 1965
	ld	0(%r25) %r3	# 1965
	beq	%r3 %r11 beq.10921	# 1974
	addi	%r2 %r0 $0	# 1980
	jr	%r31	# 1980
beq.10921:
	addi	%r3 %r2 $-1	# 1975
	add	%r25 %r8 %r3	# 1975
	ld	0(%r25) %r3	# 1975
	ld	2(%r3) %r3	# 477
	add	%r25 %r3 %r10	# 1965
	ld	0(%r25) %r3	# 1965
	beq	%r3 %r11 beq.10922	# 1975
	addi	%r2 %r0 $0	# 1979
	jr	%r31	# 1979
beq.10922:
	addi	%r2 %r2 $1	# 1976
	add	%r25 %r8 %r2	# 1976
	ld	0(%r25) %r2	# 1976
	ld	2(%r2) %r2	# 477
	add	%r25 %r2 %r10	# 1965
	ld	0(%r25) %r2	# 1965
	beq	%r2 %r11 beq.10923	# 1976
	addi	%r2 %r0 $0	# 1978
	jr	%r31	# 1978
beq.10923:
	addi	%r2 %r0 $1	# 1977
	jr	%r31	# 1977
try_exploit_neighbors.2865:
	ld	2(%r16) %r12	# 0
	ld	1(%r16) %r13	# 0
	add	%r25 %r9 %r2	# 1989
	ld	0(%r25) %r14	# 1989
	sub	%r25 %r0 %r11	# 1990
	addi	%r25 %r25 $4	# 1990
	slt	%r25 %r25 %r0	# 1990
	beq	%r25 %r0 beq.10924	# 1990
	jr	%r31	# 2009
beq.10924:
	ld	2(%r14) %r15	# 477
	add	%r25 %r15 %r11	# 1965
	ld	0(%r25) %r15	# 1965
	sub	%r25 %r0 %r15	# 1993
	addi	%r25 %r25 $0	# 1993
	slt	%r25 %r0 %r25	# 1993
	beq	%r25 %r0 beq.10926	# 1993
	jr	%r31	# 2008
beq.10926:
	st	-1(%r29) %r3	# 1995
	st	-2(%r29) %r16	# 1995
	st	-3(%r29) %r10	# 1995
	st	-4(%r29) %r8	# 1995
	st	-5(%r29) %r13	# 1995
	st	-6(%r29) %r14	# 1995
	st	-7(%r29) %r11	# 1995
	st	-8(%r29) %r12	# 1995
	st	-9(%r29) %r2	# 1995
	st	-10(%r29) %r9	# 1995
	add	%r3 %r0 %r8	# 1995
	add	%r8 %r0 %r9	# 1995
	add	%r9 %r0 %r10	# 1995
	add	%r10 %r0 %r11	# 1995
	addi	%r29 %r29 $-11	# 1995
	st	0(%r29) %r31	# 1995
	jal	neighbors_are_available.2859	# 1995
	ld	0(%r29) %r31	# 1995
	addi	%r29 %r29 $11	# 1995
	beq	%r2 %r0 beq.10928	# 1995
	ld	-6(%r29) %r2	# 484
	ld	3(%r2) %r2	# 484
	ld	-7(%r29) %r10	# 1999
	add	%r25 %r2 %r10	# 1999
	ld	0(%r25) %r2	# 1999
	beq	%r2 %r0 beq_true.10929	# 1999
	ld	-9(%r29) %r2	# 2000
	ld	-4(%r29) %r3	# 2000
	ld	-10(%r29) %r8	# 2000
	ld	-3(%r29) %r9	# 2000
	ld	-5(%r29) %r11	# 2000
	add	%r16 %r0 %r11	# 2000
	addi	%r29 %r29 $-11	# 2000
	st	0(%r29) %r31	# 2000
	ld	0(%r16) %r24	# 2000
	jalr	%r24	# 2000
	ld	0(%r29) %r31	# 2000
	addi	%r29 %r29 $11	# 2000
	beq	%r0 %r0 beq_cont.10930	# 1999
beq_true.10929:
beq_cont.10930:
	ld	-7(%r29) %r2	# 2004
	addi	%r11 %r2 $1	# 2004
	ld	-9(%r29) %r2	# 2004
	ld	-1(%r29) %r3	# 2004
	ld	-4(%r29) %r8	# 2004
	ld	-10(%r29) %r9	# 2004
	ld	-3(%r29) %r10	# 2004
	ld	-2(%r29) %r12	# 2004
	add	%r16 %r0 %r12	# 2004
	ld	0(%r16) %r24	# 2004
	jr	%r24	# 2004
beq.10928:
	ld	-9(%r29) %r2	# 2007
	ld	-10(%r29) %r3	# 2007
	add	%r25 %r3 %r2	# 2007
	ld	0(%r25) %r2	# 2007
	ld	-7(%r29) %r3	# 2007
	ld	-8(%r29) %r8	# 2007
	add	%r16 %r0 %r8	# 2007
	ld	0(%r16) %r24	# 2007
	jr	%r24	# 2007
write_ppm_header.2872:
	ld	1(%r16) %r2	# 0
	addi	%r3 %r0 $80	# 2017
	st	-1(%r29) %r2	# 2017
	add	%r2 %r0 %r3	# 2017
	addi	%r29 %r29 $-2	# 2017
	st	0(%r29) %r31	# 2017
	jal	min_caml_print_char	# 2017
	ld	0(%r29) %r31	# 2017
	addi	%r29 %r29 $2	# 2017
	addi	%r2 %r0 $51	# 2018
	addi	%r29 %r29 $-2	# 2018
	st	0(%r29) %r31	# 2018
	jal	min_caml_print_char	# 2018
	ld	0(%r29) %r31	# 2018
	addi	%r29 %r29 $2	# 2018
	addi	%r2 %r0 $10	# 2019
	addi	%r29 %r29 $-2	# 2019
	st	0(%r29) %r31	# 2019
	jal	min_caml_print_char	# 2019
	ld	0(%r29) %r31	# 2019
	addi	%r29 %r29 $2	# 2019
	addi	%r2 %r0 $0	# 2020
	ld	-1(%r29) %r3	# 2020
	add	%r25 %r3 %r2	# 2020
	ld	0(%r25) %r2	# 2020
	addi	%r29 %r29 $-2	# 2020
	st	0(%r29) %r31	# 2020
	jal	min_caml_print_int	# 2020
	ld	0(%r29) %r31	# 2020
	addi	%r29 %r29 $2	# 2020
	addi	%r2 %r0 $32	# 2021
	addi	%r29 %r29 $-2	# 2021
	st	0(%r29) %r31	# 2021
	jal	min_caml_print_char	# 2021
	ld	0(%r29) %r31	# 2021
	addi	%r29 %r29 $2	# 2021
	addi	%r2 %r0 $1	# 2022
	ld	-1(%r29) %r3	# 2022
	add	%r25 %r3 %r2	# 2022
	ld	0(%r25) %r2	# 2022
	addi	%r29 %r29 $-2	# 2022
	st	0(%r29) %r31	# 2022
	jal	min_caml_print_int	# 2022
	ld	0(%r29) %r31	# 2022
	addi	%r29 %r29 $2	# 2022
	addi	%r2 %r0 $32	# 2023
	addi	%r29 %r29 $-2	# 2023
	st	0(%r29) %r31	# 2023
	jal	min_caml_print_char	# 2023
	ld	0(%r29) %r31	# 2023
	addi	%r29 %r29 $2	# 2023
	addi	%r2 %r0 $255	# 2024
	addi	%r29 %r29 $-2	# 2024
	st	0(%r29) %r31	# 2024
	jal	min_caml_print_int	# 2024
	ld	0(%r29) %r31	# 2024
	addi	%r29 %r29 $2	# 2024
	addi	%r2 %r0 $10	# 2025
	beq	%r0 %r0 min_caml_print_char	# 2025
write_rgb.2876:
	ld	1(%r16) %r2	# 0
	addi	%r3 %r0 $0	# 2036
	add	%r25 %r2 %r3	# 2036
	fld	0(%r25) %f0	# 2036
	st	-1(%r29) %r2	# 2030
	addi	%r29 %r29 $-2	# 2030
	st	0(%r29) %r31	# 2030
	jal	min_caml_int_of_float	# 2030
	ld	0(%r29) %r31	# 2030
	addi	%r29 %r29 $2	# 2030
	sub	%r25 %r0 %r2	# 2031
	addi	%r25 %r25 $255	# 2031
	slt	%r25 %r25 %r0	# 2031
	beq	%r25 %r0 beq_true.10931	# 2031
	addi	%r2 %r0 $255	# 2031
	beq	%r0 %r0 beq_cont.10932	# 2031
beq_true.10931:
	sub	%r25 %r0 %r2	# 2031
	addi	%r25 %r25 $0	# 2031
	slt	%r25 %r0 %r25	# 2031
	beq	%r25 %r0 beq_true.10933	# 2031
	addi	%r2 %r0 $0	# 2031
	beq	%r0 %r0 beq_cont.10934	# 2031
beq_true.10933:
beq_cont.10934:
beq_cont.10932:
	addi	%r29 %r29 $-2	# 2032
	st	0(%r29) %r31	# 2032
	jal	min_caml_print_int	# 2032
	ld	0(%r29) %r31	# 2032
	addi	%r29 %r29 $2	# 2032
	addi	%r2 %r0 $32	# 2037
	addi	%r29 %r29 $-2	# 2037
	st	0(%r29) %r31	# 2037
	jal	min_caml_print_char	# 2037
	ld	0(%r29) %r31	# 2037
	addi	%r29 %r29 $2	# 2037
	addi	%r2 %r0 $1	# 2038
	ld	-1(%r29) %r3	# 2038
	add	%r25 %r3 %r2	# 2038
	fld	0(%r25) %f0	# 2038
	addi	%r29 %r29 $-2	# 2030
	st	0(%r29) %r31	# 2030
	jal	min_caml_int_of_float	# 2030
	ld	0(%r29) %r31	# 2030
	addi	%r29 %r29 $2	# 2030
	sub	%r25 %r0 %r2	# 2031
	addi	%r25 %r25 $255	# 2031
	slt	%r25 %r25 %r0	# 2031
	beq	%r25 %r0 beq_true.10935	# 2031
	addi	%r2 %r0 $255	# 2031
	beq	%r0 %r0 beq_cont.10936	# 2031
beq_true.10935:
	sub	%r25 %r0 %r2	# 2031
	addi	%r25 %r25 $0	# 2031
	slt	%r25 %r0 %r25	# 2031
	beq	%r25 %r0 beq_true.10937	# 2031
	addi	%r2 %r0 $0	# 2031
	beq	%r0 %r0 beq_cont.10938	# 2031
beq_true.10937:
beq_cont.10938:
beq_cont.10936:
	addi	%r29 %r29 $-2	# 2032
	st	0(%r29) %r31	# 2032
	jal	min_caml_print_int	# 2032
	ld	0(%r29) %r31	# 2032
	addi	%r29 %r29 $2	# 2032
	addi	%r2 %r0 $32	# 2039
	addi	%r29 %r29 $-2	# 2039
	st	0(%r29) %r31	# 2039
	jal	min_caml_print_char	# 2039
	ld	0(%r29) %r31	# 2039
	addi	%r29 %r29 $2	# 2039
	addi	%r2 %r0 $2	# 2040
	ld	-1(%r29) %r3	# 2040
	add	%r25 %r3 %r2	# 2040
	fld	0(%r25) %f0	# 2040
	addi	%r29 %r29 $-2	# 2030
	st	0(%r29) %r31	# 2030
	jal	min_caml_int_of_float	# 2030
	ld	0(%r29) %r31	# 2030
	addi	%r29 %r29 $2	# 2030
	sub	%r25 %r0 %r2	# 2031
	addi	%r25 %r25 $255	# 2031
	slt	%r25 %r25 %r0	# 2031
	beq	%r25 %r0 beq_true.10939	# 2031
	addi	%r2 %r0 $255	# 2031
	beq	%r0 %r0 beq_cont.10940	# 2031
beq_true.10939:
	sub	%r25 %r0 %r2	# 2031
	addi	%r25 %r25 $0	# 2031
	slt	%r25 %r0 %r25	# 2031
	beq	%r25 %r0 beq_true.10941	# 2031
	addi	%r2 %r0 $0	# 2031
	beq	%r0 %r0 beq_cont.10942	# 2031
beq_true.10941:
beq_cont.10942:
beq_cont.10940:
	addi	%r29 %r29 $-2	# 2032
	st	0(%r29) %r31	# 2032
	jal	min_caml_print_int	# 2032
	ld	0(%r29) %r31	# 2032
	addi	%r29 %r29 $2	# 2032
	addi	%r2 %r0 $10	# 2041
	beq	%r0 %r0 min_caml_print_char	# 2041
pretrace_diffuse_rays.2878:
	ld	6(%r16) %r8	# 0
	ld	5(%r16) %r9	# 0
	ld	4(%r16) %r10	# 0
	ld	3(%r16) %r11	# 0
	ld	2(%r16) %r12	# 0
	ld	1(%r16) %r13	# 0
	sub	%r25 %r0 %r3	# 2053
	addi	%r25 %r25 $4	# 2053
	slt	%r25 %r25 %r0	# 2053
	beq	%r25 %r0 beq.10943	# 2053
	jr	%r31	# 2077
beq.10943:
	ld	2(%r2) %r14	# 477
	add	%r25 %r14 %r3	# 1965
	ld	0(%r25) %r14	# 1965
	sub	%r25 %r0 %r14	# 2057
	addi	%r25 %r25 $0	# 2057
	slt	%r25 %r0 %r25	# 2057
	beq	%r25 %r0 beq.10945	# 2057
	jr	%r31	# 2076
beq.10945:
	ld	3(%r2) %r14	# 484
	add	%r25 %r14 %r3	# 2060
	ld	0(%r25) %r14	# 2060
	st	-1(%r29) %r2	# 2060
	st	-2(%r29) %r16	# 2060
	st	-3(%r29) %r3	# 2060
	beq	%r14 %r0 beq_true.10947	# 2060
	ld	6(%r2) %r14	# 514
	addi	%r15 %r0 $0	# 516
	add	%r25 %r14 %r15	# 516
	ld	0(%r25) %r14	# 516
	addi	%r15 %r0 l.8518	# 160
	fld	0(%r15) %f0	# 160
	addi	%r15 %r0 $0	# 153
	add	%r25 %r13 %r15	# 153
	fst	0(%r25) %f0	# 153
	addi	%r15 %r0 $1	# 154
	add	%r25 %r13 %r15	# 154
	fst	0(%r25) %f0	# 154
	addi	%r15 %r0 $2	# 155
	add	%r25 %r13 %r15	# 155
	fst	0(%r25) %f0	# 155
	ld	7(%r2) %r15	# 528
	st	-4(%r29) %r13	# 469
	ld	1(%r2) %r13	# 469
	add	%r25 %r12 %r14	# 2069
	ld	0(%r25) %r12	# 2069
	add	%r25 %r15 %r3	# 2070
	ld	0(%r25) %r14	# 2070
	add	%r25 %r13 %r3	# 2071
	ld	0(%r25) %r13	# 2071
	st	-5(%r29) %r14	# 1216
	st	-6(%r29) %r12	# 1216
	st	-7(%r29) %r11	# 1216
	st	-8(%r29) %r13	# 1216
	st	-9(%r29) %r9	# 1216
	st	-10(%r29) %r10	# 1216
	add	%r3 %r0 %r13	# 1216
	add	%r2 %r0 %r8	# 1216
	addi	%r29 %r29 $-11	# 1216
	st	0(%r29) %r31	# 1216
	jal	veccpy.2501	# 1216
	ld	0(%r29) %r31	# 1216
	addi	%r29 %r29 $11	# 1216
	addi	%r2 %r0 $0	# 1217
	ld	-10(%r29) %r3	# 1217
	add	%r25 %r3 %r2	# 1217
	ld	0(%r25) %r2	# 1217
	addi	%r3 %r2 $-1	# 1217
	ld	-8(%r29) %r2	# 1217
	ld	-9(%r29) %r8	# 1217
	add	%r16 %r0 %r8	# 1217
	addi	%r29 %r29 $-11	# 1217
	st	0(%r29) %r31	# 1217
	ld	0(%r16) %r24	# 1217
	jalr	%r24	# 1217
	ld	0(%r29) %r31	# 1217
	addi	%r29 %r29 $11	# 1217
	addi	%r9 %r0 $118	# 1866
	ld	-6(%r29) %r2	# 1866
	ld	-5(%r29) %r3	# 1866
	ld	-8(%r29) %r8	# 1866
	ld	-7(%r29) %r10	# 1866
	add	%r16 %r0 %r10	# 1866
	addi	%r29 %r29 $-11	# 1866
	st	0(%r29) %r31	# 1866
	ld	0(%r16) %r24	# 1866
	jalr	%r24	# 1866
	ld	0(%r29) %r31	# 1866
	addi	%r29 %r29 $11	# 1866
	ld	-1(%r29) %r2	# 498
	ld	5(%r2) %r3	# 498
	ld	-3(%r29) %r8	# 2073
	add	%r25 %r3 %r8	# 2073
	ld	0(%r25) %r3	# 2073
	ld	-4(%r29) %r9	# 2073
	add	%r2 %r0 %r3	# 2073
	add	%r3 %r0 %r9	# 2073
	addi	%r29 %r29 $-11	# 2073
	st	0(%r29) %r31	# 2073
	jal	veccpy.2501	# 2073
	ld	0(%r29) %r31	# 2073
	addi	%r29 %r29 $11	# 2073
	beq	%r0 %r0 beq_cont.10948	# 2060
beq_true.10947:
beq_cont.10948:
	ld	-3(%r29) %r2	# 2075
	addi	%r3 %r2 $1	# 2075
	ld	-1(%r29) %r2	# 2075
	ld	-2(%r29) %r8	# 2075
	add	%r16 %r0 %r8	# 2075
	ld	0(%r16) %r24	# 2075
	jr	%r24	# 2075
pretrace_pixels.2881:
	ld	9(%r16) %r9	# 0
	ld	8(%r16) %r10	# 0
	ld	7(%r16) %r11	# 0
	ld	6(%r16) %r12	# 0
	ld	5(%r16) %r13	# 0
	ld	4(%r16) %r14	# 0
	ld	3(%r16) %r15	# 0
	st	-1(%r29) %r8	# 0
	ld	2(%r16) %r8	# 0
	st	-2(%r29) %r8	# 0
	ld	1(%r16) %r8	# 0
	sub	%r25 %r0 %r3	# 2083
	addi	%r25 %r25 $0	# 2083
	slt	%r25 %r0 %r25	# 2083
	beq	%r25 %r0 beq.10949	# 2083
	jr	%r31	# 2103
beq.10949:
	st	-3(%r29) %r10	# 2085
	addi	%r10 %r0 $0	# 2085
	add	%r25 %r13 %r10	# 2085
	fld	0(%r25) %f3	# 2085
	addi	%r10 %r0 $0	# 2085
	add	%r25 %r8 %r10	# 2085
	ld	0(%r25) %r8	# 2085
	sub	%r8 %r3 %r8	# 2085
	st	-4(%r29) %r16	# 2085
	st	-5(%r29) %r3	# 2085
	st	-6(%r29) %r2	# 2085
	st	-7(%r29) %r9	# 2085
	st	-8(%r29) %r11	# 2085
	st	-9(%r29) %r14	# 2085
	fst	-10(%r29) %f2	# 2085
	fst	-11(%r29) %f1	# 2085
	st	-12(%r29) %r15	# 2085
	fst	-13(%r29) %f0	# 2085
	st	-14(%r29) %r12	# 2085
	fst	-15(%r29) %f3	# 2085
	add	%r2 %r0 %r8	# 2085
	addi	%r29 %r29 $-16	# 2085
	st	0(%r29) %r31	# 2085
	jal	min_caml_float_of_int	# 2085
	ld	0(%r29) %r31	# 2085
	addi	%r29 %r29 $16	# 2085
	fld	-15(%r29) %f1	# 2085
	fmul	%f1 %f1 %f0	# 2085
	addi	%r2 %r0 $0	# 2086
	addi	%r3 %r0 $0	# 2086
	ld	-14(%r29) %r8	# 2086
	add	%r25 %r8 %r3	# 2086
	fld	0(%r25) %f0	# 2086
	fmul	%f0 %f1 %f0	# 2086
	fld	-13(%r29) %f2	# 2086
	fadd	%f0 %f0 %f2	# 2086
	ld	-12(%r29) %r3	# 2086
	add	%r25 %r3 %r2	# 2086
	fst	0(%r25) %f0	# 2086
	addi	%r2 %r0 $1	# 2087
	addi	%r9 %r0 $1	# 2087
	add	%r25 %r8 %r9	# 2087
	fld	0(%r25) %f0	# 2087
	fmul	%f0 %f1 %f0	# 2087
	fld	-11(%r29) %f3	# 2087
	fadd	%f0 %f0 %f3	# 2087
	add	%r25 %r3 %r2	# 2087
	fst	0(%r25) %f0	# 2087
	addi	%r2 %r0 $2	# 2088
	addi	%r9 %r0 $2	# 2088
	add	%r25 %r8 %r9	# 2088
	fld	0(%r25) %f0	# 2088
	fmul	%f1 %f1 %f0	# 2088
	fld	-10(%r29) %f0	# 2088
	fadd	%f1 %f1 %f0	# 2088
	add	%r25 %r3 %r2	# 2088
	fst	0(%r25) %f1	# 2088
	addi	%r2 %r0 $0	# 2089
	add	%r24 %r0 %r3	# 2089
	add	%r3 %r0 %r2	# 2089
	add	%r2 %r0 %r24	# 2089
	addi	%r29 %r29 $-16	# 2089
	st	0(%r29) %r31	# 2089
	jal	vecunit_sgn.2509	# 2089
	ld	0(%r29) %r31	# 2089
	addi	%r29 %r29 $16	# 2089
	addi	%r2 %r0 l.8518	# 160
	fld	0(%r2) %f0	# 160
	addi	%r2 %r0 $0	# 153
	ld	-9(%r29) %r3	# 153
	add	%r25 %r3 %r2	# 153
	fst	0(%r25) %f0	# 153
	addi	%r2 %r0 $1	# 154
	add	%r25 %r3 %r2	# 154
	fst	0(%r25) %f0	# 154
	addi	%r2 %r0 $2	# 155
	add	%r25 %r3 %r2	# 155
	fst	0(%r25) %f0	# 155
	ld	-8(%r29) %r2	# 2091
	ld	-7(%r29) %r8	# 2091
	add	%r3 %r0 %r8	# 2091
	addi	%r29 %r29 $-16	# 2091
	st	0(%r29) %r31	# 2091
	jal	veccpy.2501	# 2091
	ld	0(%r29) %r31	# 2091
	addi	%r29 %r29 $16	# 2091
	addi	%r2 %r0 $0	# 2094
	addi	%r3 %r0 l.8520	# 2094
	fld	0(%r3) %f0	# 2094
	ld	-5(%r29) %r3	# 2094
	ld	-6(%r29) %r8	# 2094
	add	%r25 %r8 %r3	# 2094
	ld	0(%r25) %r9	# 2094
	addi	%r10 %r0 l.8518	# 2094
	fld	0(%r10) %f1	# 2094
	ld	-12(%r29) %r10	# 2094
	ld	-3(%r29) %r11	# 2094
	add	%r8 %r0 %r9	# 2094
	add	%r3 %r0 %r10	# 2094
	add	%r16 %r0 %r11	# 2094
	addi	%r29 %r29 $-16	# 2094
	st	0(%r29) %r31	# 2094
	ld	0(%r16) %r24	# 2094
	jalr	%r24	# 2094
	ld	0(%r29) %r31	# 2094
	addi	%r29 %r29 $16	# 2094
	ld	-5(%r29) %r2	# 2095
	ld	-6(%r29) %r3	# 2095
	add	%r25 %r3 %r2	# 2095
	ld	0(%r25) %r8	# 2095
	ld	0(%r8) %r8	# 462
	ld	-9(%r29) %r9	# 2095
	add	%r3 %r0 %r9	# 2095
	add	%r2 %r0 %r8	# 2095
	addi	%r29 %r29 $-16	# 2095
	st	0(%r29) %r31	# 2095
	jal	veccpy.2501	# 2095
	ld	0(%r29) %r31	# 2095
	addi	%r29 %r29 $16	# 2095
	ld	-5(%r29) %r2	# 2096
	ld	-6(%r29) %r3	# 2096
	add	%r25 %r3 %r2	# 2096
	ld	0(%r25) %r8	# 2096
	ld	6(%r8) %r8	# 521
	addi	%r9 %r0 $0	# 523
	ld	-1(%r29) %r10	# 523
	add	%r25 %r8 %r9	# 523
	st	0(%r25) %r10	# 523
	add	%r25 %r3 %r2	# 2099
	ld	0(%r25) %r8	# 2099
	addi	%r9 %r0 $0	# 2099
	ld	-2(%r29) %r11	# 2099
	add	%r3 %r0 %r9	# 2099
	add	%r2 %r0 %r8	# 2099
	add	%r16 %r0 %r11	# 2099
	addi	%r29 %r29 $-16	# 2099
	st	0(%r29) %r31	# 2099
	ld	0(%r16) %r24	# 2099
	jalr	%r24	# 2099
	ld	0(%r29) %r31	# 2099
	addi	%r29 %r29 $16	# 2099
	ld	-5(%r29) %r2	# 2101
	addi	%r3 %r2 $-1	# 2101
	ld	-1(%r29) %r2	# 130
	addi	%r2 %r2 $1	# 130
	sub	%r25 %r0 %r2	# 131
	addi	%r25 %r25 $5	# 131
	slt	%r25 %r0 %r25	# 131
	beq	%r25 %r0 beq_true.10951	# 131
	add	%r8 %r0 %r2	# 131
	beq	%r0 %r0 beq_cont.10952	# 131
beq_true.10951:
	addi	%r8 %r2 $-5	# 131
beq_cont.10952:
	fld	-13(%r29) %f0	# 2101
	fld	-11(%r29) %f1	# 2101
	fld	-10(%r29) %f2	# 2101
	ld	-6(%r29) %r2	# 2101
	ld	-4(%r29) %r9	# 2101
	add	%r16 %r0 %r9	# 2101
	ld	0(%r16) %r24	# 2101
	jr	%r24	# 2101
pretrace_line.2888:
	ld	6(%r16) %r9	# 0
	ld	5(%r16) %r10	# 0
	ld	4(%r16) %r11	# 0
	ld	3(%r16) %r12	# 0
	ld	2(%r16) %r13	# 0
	ld	1(%r16) %r14	# 0
	addi	%r15 %r0 $0	# 2108
	add	%r25 %r11 %r15	# 2108
	fld	0(%r25) %f0	# 2108
	addi	%r11 %r0 $1	# 2108
	add	%r25 %r14 %r11	# 2108
	ld	0(%r25) %r11	# 2108
	sub	%r3 %r3 %r11	# 2108
	st	-1(%r29) %r8	# 2108
	st	-2(%r29) %r2	# 2108
	st	-3(%r29) %r12	# 2108
	st	-4(%r29) %r13	# 2108
	st	-5(%r29) %r9	# 2108
	st	-6(%r29) %r10	# 2108
	fst	-7(%r29) %f0	# 2108
	add	%r2 %r0 %r3	# 2108
	addi	%r29 %r29 $-8	# 2108
	st	0(%r29) %r31	# 2108
	jal	min_caml_float_of_int	# 2108
	ld	0(%r29) %r31	# 2108
	addi	%r29 %r29 $8	# 2108
	fld	-7(%r29) %f1	# 2108
	fmul	%f1 %f1 %f0	# 2108
	addi	%r2 %r0 $0	# 2111
	ld	-6(%r29) %r3	# 2111
	add	%r25 %r3 %r2	# 2111
	fld	0(%r25) %f0	# 2111
	fmul	%f0 %f1 %f0	# 2111
	addi	%r2 %r0 $0	# 2111
	ld	-5(%r29) %r8	# 2111
	add	%r25 %r8 %r2	# 2111
	fld	0(%r25) %f2	# 2111
	fadd	%f0 %f0 %f2	# 2111
	addi	%r2 %r0 $1	# 2112
	add	%r25 %r3 %r2	# 2112
	fld	0(%r25) %f2	# 2112
	fmul	%f2 %f1 %f2	# 2112
	addi	%r2 %r0 $1	# 2112
	add	%r25 %r8 %r2	# 2112
	fld	0(%r25) %f3	# 2112
	fadd	%f2 %f2 %f3	# 2112
	addi	%r2 %r0 $2	# 2113
	add	%r25 %r3 %r2	# 2113
	fld	0(%r25) %f3	# 2113
	fmul	%f1 %f1 %f3	# 2113
	addi	%r2 %r0 $2	# 2113
	add	%r25 %r8 %r2	# 2113
	fld	0(%r25) %f3	# 2113
	fadd	%f1 %f1 %f3	# 2113
	addi	%r2 %r0 $0	# 2114
	ld	-4(%r29) %r3	# 2114
	add	%r25 %r3 %r2	# 2114
	ld	0(%r25) %r2	# 2114
	addi	%r3 %r2 $-1	# 2114
	ld	-2(%r29) %r2	# 2114
	ld	-1(%r29) %r8	# 2114
	ld	-3(%r29) %r9	# 2114
	add	%r16 %r0 %r9	# 2114
	fmov	%f30 %f2	# 2114
	fmov	%f2 %f1	# 2114
	fmov	%f1 %f30	# 2114
	ld	0(%r16) %r24	# 2114
	jr	%r24	# 2114
scan_pixel.2892:
	ld	6(%r16) %r11	# 0
	ld	5(%r16) %r12	# 0
	ld	4(%r16) %r13	# 0
	ld	3(%r16) %r14	# 0
	ld	2(%r16) %r15	# 0
	st	-1(%r29) %r11	# 0
	ld	1(%r16) %r11	# 0
	st	-2(%r29) %r8	# 2124
	addi	%r8 %r0 $0	# 2124
	add	%r25 %r15 %r8	# 2124
	ld	0(%r25) %r8	# 2124
	slt	%r25 %r2 %r8	# 2124
	beq	%r25 %r0 beq.10953	# 2124
	add	%r25 %r9 %r2	# 2127
	ld	0(%r25) %r8	# 2127
	ld	0(%r8) %r8	# 462
	st	-3(%r29) %r16	# 2127
	st	-4(%r29) %r12	# 2127
	st	-5(%r29) %r11	# 2127
	st	-6(%r29) %r9	# 2127
	st	-7(%r29) %r10	# 2127
	st	-8(%r29) %r3	# 2127
	st	-9(%r29) %r2	# 2127
	st	-10(%r29) %r14	# 2127
	add	%r3 %r0 %r8	# 2127
	add	%r2 %r0 %r13	# 2127
	addi	%r29 %r29 $-11	# 2127
	st	0(%r29) %r31	# 2127
	jal	veccpy.2501	# 2127
	ld	0(%r29) %r31	# 2127
	addi	%r29 %r29 $11	# 2127
	ld	-9(%r29) %r2	# 2130
	ld	-8(%r29) %r3	# 2130
	ld	-7(%r29) %r8	# 2130
	ld	-10(%r29) %r9	# 2130
	add	%r16 %r0 %r9	# 2130
	addi	%r29 %r29 $-11	# 2130
	st	0(%r29) %r31	# 2130
	ld	0(%r16) %r24	# 2130
	jalr	%r24	# 2130
	ld	0(%r29) %r31	# 2130
	addi	%r29 %r29 $11	# 2130
	beq	%r2 %r0 beq_true.10954	# 2130
	addi	%r11 %r0 $0	# 2131
	ld	-9(%r29) %r2	# 2131
	ld	-8(%r29) %r3	# 2131
	ld	-2(%r29) %r8	# 2131
	ld	-6(%r29) %r9	# 2131
	ld	-7(%r29) %r10	# 2131
	ld	-4(%r29) %r12	# 2131
	add	%r16 %r0 %r12	# 2131
	addi	%r29 %r29 $-11	# 2131
	st	0(%r29) %r31	# 2131
	ld	0(%r16) %r24	# 2131
	jalr	%r24	# 2131
	ld	0(%r29) %r31	# 2131
	addi	%r29 %r29 $11	# 2131
	beq	%r0 %r0 beq_cont.10955	# 2130
beq_true.10954:
	ld	-9(%r29) %r2	# 2133
	ld	-6(%r29) %r3	# 2133
	add	%r25 %r3 %r2	# 2133
	ld	0(%r25) %r8	# 2133
	addi	%r9 %r0 $0	# 2133
	ld	-5(%r29) %r10	# 2133
	add	%r3 %r0 %r9	# 2133
	add	%r2 %r0 %r8	# 2133
	add	%r16 %r0 %r10	# 2133
	addi	%r29 %r29 $-11	# 2133
	st	0(%r29) %r31	# 2133
	ld	0(%r16) %r24	# 2133
	jalr	%r24	# 2133
	ld	0(%r29) %r31	# 2133
	addi	%r29 %r29 $11	# 2133
beq_cont.10955:
	ld	-1(%r29) %r2	# 2136
	add	%r16 %r0 %r2	# 2136
	addi	%r29 %r29 $-11	# 2136
	st	0(%r29) %r31	# 2136
	ld	0(%r16) %r24	# 2136
	jalr	%r24	# 2136
	ld	0(%r29) %r31	# 2136
	addi	%r29 %r29 $11	# 2136
	ld	-9(%r29) %r2	# 2138
	addi	%r2 %r2 $1	# 2138
	ld	-8(%r29) %r3	# 2138
	ld	-2(%r29) %r8	# 2138
	ld	-6(%r29) %r9	# 2138
	ld	-7(%r29) %r10	# 2138
	ld	-3(%r29) %r11	# 2138
	add	%r16 %r0 %r11	# 2138
	ld	0(%r16) %r24	# 2138
	jr	%r24	# 2138
beq.10953:
	jr	%r31	# 2139
scan_line.2898:
	ld	3(%r16) %r11	# 0
	ld	2(%r16) %r12	# 0
	ld	1(%r16) %r13	# 0
	addi	%r14 %r0 $1	# 2145
	add	%r25 %r13 %r14	# 2145
	ld	0(%r25) %r14	# 2145
	slt	%r25 %r2 %r14	# 2145
	beq	%r25 %r0 beq.10957	# 2145
	addi	%r14 %r0 $1	# 2147
	add	%r25 %r13 %r14	# 2147
	ld	0(%r25) %r13	# 2147
	addi	%r13 %r13 $-1	# 2147
	st	-1(%r29) %r16	# 2147
	st	-2(%r29) %r10	# 2147
	st	-3(%r29) %r9	# 2147
	st	-4(%r29) %r8	# 2147
	st	-5(%r29) %r3	# 2147
	st	-6(%r29) %r2	# 2147
	st	-7(%r29) %r11	# 2147
	slt	%r25 %r2 %r13	# 2147
	beq	%r25 %r0 beq_true.10958	# 2147
	addi	%r13 %r2 $1	# 2148
	add	%r8 %r0 %r10	# 2148
	add	%r3 %r0 %r13	# 2148
	add	%r2 %r0 %r9	# 2148
	add	%r16 %r0 %r12	# 2148
	addi	%r29 %r29 $-8	# 2148
	st	0(%r29) %r31	# 2148
	ld	0(%r16) %r24	# 2148
	jalr	%r24	# 2148
	ld	0(%r29) %r31	# 2148
	addi	%r29 %r29 $8	# 2148
	beq	%r0 %r0 beq_cont.10959	# 2147
beq_true.10958:
beq_cont.10959:
	addi	%r2 %r0 $0	# 2150
	ld	-6(%r29) %r3	# 2150
	ld	-5(%r29) %r8	# 2150
	ld	-4(%r29) %r9	# 2150
	ld	-3(%r29) %r10	# 2150
	ld	-7(%r29) %r11	# 2150
	add	%r16 %r0 %r11	# 2150
	addi	%r29 %r29 $-8	# 2150
	st	0(%r29) %r31	# 2150
	ld	0(%r16) %r24	# 2150
	jalr	%r24	# 2150
	ld	0(%r29) %r31	# 2150
	addi	%r29 %r29 $8	# 2150
	ld	-6(%r29) %r2	# 2151
	addi	%r2 %r2 $1	# 2151
	ld	-2(%r29) %r3	# 130
	addi	%r3 %r3 $2	# 130
	sub	%r25 %r0 %r3	# 131
	addi	%r25 %r25 $5	# 131
	slt	%r25 %r0 %r25	# 131
	beq	%r25 %r0 beq_true.10960	# 131
	add	%r10 %r0 %r3	# 131
	beq	%r0 %r0 beq_cont.10961	# 131
beq_true.10960:
	addi	%r10 %r3 $-5	# 131
beq_cont.10961:
	ld	-4(%r29) %r3	# 2151
	ld	-3(%r29) %r8	# 2151
	ld	-5(%r29) %r9	# 2151
	ld	-1(%r29) %r11	# 2151
	add	%r16 %r0 %r11	# 2151
	ld	0(%r16) %r24	# 2151
	jr	%r24	# 2151
beq.10957:
	jr	%r31	# 2152
create_float5x3array.2904:
	addi	%r2 %r0 $3	# 2162
	addi	%r3 %r0 l.8518	# 2162
	fld	0(%r3) %f0	# 2162
	addi	%r29 %r29 $-1	# 2162
	st	0(%r29) %r31	# 2162
	jal	min_caml_create_float_array	# 2162
	ld	0(%r29) %r31	# 2162
	addi	%r29 %r29 $1	# 2162
	add	%r3 %r0 %r2	# 2162
	addi	%r2 %r0 $5	# 2163
	addi	%r29 %r29 $-1	# 2163
	st	0(%r29) %r31	# 2163
	jal	min_caml_create_array	# 2163
	ld	0(%r29) %r31	# 2163
	addi	%r29 %r29 $1	# 2163
	addi	%r3 %r0 $1	# 2164
	addi	%r8 %r0 $3	# 2164
	addi	%r9 %r0 l.8518	# 2164
	fld	0(%r9) %f0	# 2164
	st	-1(%r29) %r3	# 2164
	st	-2(%r29) %r2	# 2164
	add	%r2 %r0 %r8	# 2164
	addi	%r29 %r29 $-3	# 2164
	st	0(%r29) %r31	# 2164
	jal	min_caml_create_float_array	# 2164
	ld	0(%r29) %r31	# 2164
	addi	%r29 %r29 $3	# 2164
	ld	-1(%r29) %r3	# 2164
	ld	-2(%r29) %r8	# 2164
	add	%r25 %r8 %r3	# 2164
	st	0(%r25) %r2	# 2164
	addi	%r2 %r0 $2	# 2165
	addi	%r3 %r0 $3	# 2165
	addi	%r9 %r0 l.8518	# 2165
	fld	0(%r9) %f0	# 2165
	st	-3(%r29) %r2	# 2165
	add	%r2 %r0 %r3	# 2165
	addi	%r29 %r29 $-4	# 2165
	st	0(%r29) %r31	# 2165
	jal	min_caml_create_float_array	# 2165
	ld	0(%r29) %r31	# 2165
	addi	%r29 %r29 $4	# 2165
	ld	-3(%r29) %r3	# 2165
	ld	-2(%r29) %r8	# 2165
	add	%r25 %r8 %r3	# 2165
	st	0(%r25) %r2	# 2165
	addi	%r2 %r0 $3	# 2166
	addi	%r3 %r0 $3	# 2166
	addi	%r9 %r0 l.8518	# 2166
	fld	0(%r9) %f0	# 2166
	st	-4(%r29) %r2	# 2166
	add	%r2 %r0 %r3	# 2166
	addi	%r29 %r29 $-5	# 2166
	st	0(%r29) %r31	# 2166
	jal	min_caml_create_float_array	# 2166
	ld	0(%r29) %r31	# 2166
	addi	%r29 %r29 $5	# 2166
	ld	-4(%r29) %r3	# 2166
	ld	-2(%r29) %r8	# 2166
	add	%r25 %r8 %r3	# 2166
	st	0(%r25) %r2	# 2166
	addi	%r2 %r0 $4	# 2167
	addi	%r3 %r0 $3	# 2167
	addi	%r9 %r0 l.8518	# 2167
	fld	0(%r9) %f0	# 2167
	st	-5(%r29) %r2	# 2167
	add	%r2 %r0 %r3	# 2167
	addi	%r29 %r29 $-6	# 2167
	st	0(%r29) %r31	# 2167
	jal	min_caml_create_float_array	# 2167
	ld	0(%r29) %r31	# 2167
	addi	%r29 %r29 $6	# 2167
	ld	-5(%r29) %r3	# 2167
	ld	-2(%r29) %r8	# 2167
	add	%r25 %r8 %r3	# 2167
	st	0(%r25) %r2	# 2167
	add	%r2 %r0 %r8	# 2168
	jr	%r31	# 2168
create_pixel.2906:
	addi	%r2 %r0 $3	# 2174
	addi	%r3 %r0 l.8518	# 2174
	fld	0(%r3) %f0	# 2174
	addi	%r29 %r29 $-1	# 2174
	st	0(%r29) %r31	# 2174
	jal	min_caml_create_float_array	# 2174
	ld	0(%r29) %r31	# 2174
	addi	%r29 %r29 $1	# 2174
	st	-1(%r29) %r2	# 2175
	addi	%r29 %r29 $-2	# 2175
	st	0(%r29) %r31	# 2175
	jal	create_float5x3array.2904	# 2175
	ld	0(%r29) %r31	# 2175
	addi	%r29 %r29 $2	# 2175
	addi	%r3 %r0 $5	# 2176
	addi	%r8 %r0 $0	# 2176
	st	-2(%r29) %r2	# 2176
	add	%r2 %r0 %r3	# 2176
	add	%r3 %r0 %r8	# 2176
	addi	%r29 %r29 $-3	# 2176
	st	0(%r29) %r31	# 2176
	jal	min_caml_create_array	# 2176
	ld	0(%r29) %r31	# 2176
	addi	%r29 %r29 $3	# 2176
	addi	%r3 %r0 $5	# 2177
	addi	%r8 %r0 $0	# 2177
	st	-3(%r29) %r2	# 2177
	add	%r2 %r0 %r3	# 2177
	add	%r3 %r0 %r8	# 2177
	addi	%r29 %r29 $-4	# 2177
	st	0(%r29) %r31	# 2177
	jal	min_caml_create_array	# 2177
	ld	0(%r29) %r31	# 2177
	addi	%r29 %r29 $4	# 2177
	st	-4(%r29) %r2	# 2178
	addi	%r29 %r29 $-5	# 2178
	st	0(%r29) %r31	# 2178
	jal	create_float5x3array.2904	# 2178
	ld	0(%r29) %r31	# 2178
	addi	%r29 %r29 $5	# 2178
	st	-5(%r29) %r2	# 2179
	addi	%r29 %r29 $-6	# 2179
	st	0(%r29) %r31	# 2179
	jal	create_float5x3array.2904	# 2179
	ld	0(%r29) %r31	# 2179
	addi	%r29 %r29 $6	# 2179
	addi	%r3 %r0 $1	# 2180
	addi	%r8 %r0 $0	# 2180
	st	-6(%r29) %r2	# 2180
	add	%r2 %r0 %r3	# 2180
	add	%r3 %r0 %r8	# 2180
	addi	%r29 %r29 $-7	# 2180
	st	0(%r29) %r31	# 2180
	jal	min_caml_create_array	# 2180
	ld	0(%r29) %r31	# 2180
	addi	%r29 %r29 $7	# 2180
	st	-7(%r29) %r2	# 2181
	addi	%r29 %r29 $-8	# 2181
	st	0(%r29) %r31	# 2181
	jal	create_float5x3array.2904	# 2181
	ld	0(%r29) %r31	# 2181
	addi	%r29 %r29 $8	# 2181
	add	%r3 %r0 %r28	# 2182
	addi	%r28 %r28 $8	# 2182
	st	7(%r3) %r2	# 2182
	ld	-7(%r29) %r2	# 2182
	st	6(%r3) %r2	# 2182
	ld	-6(%r29) %r2	# 2182
	st	5(%r3) %r2	# 2182
	ld	-5(%r29) %r2	# 2182
	st	4(%r3) %r2	# 2182
	ld	-4(%r29) %r2	# 2182
	st	3(%r3) %r2	# 2182
	ld	-3(%r29) %r2	# 2182
	st	2(%r3) %r2	# 2182
	ld	-2(%r29) %r2	# 2182
	st	1(%r3) %r2	# 2182
	ld	-1(%r29) %r2	# 2182
	st	0(%r3) %r2	# 2182
	add	%r2 %r0 %r3	# 2182
	jr	%r31	# 2182
init_line_elements.2908:
	sub	%r25 %r0 %r3	# 2187
	addi	%r25 %r25 $0	# 2187
	slt	%r25 %r0 %r25	# 2187
	beq	%r25 %r0 beq.10963	# 2187
	jr	%r31	# 2191
beq.10963:
	st	-1(%r29) %r3	# 2188
	st	-2(%r29) %r2	# 2188
	addi	%r29 %r29 $-3	# 2188
	st	0(%r29) %r31	# 2188
	jal	create_pixel.2906	# 2188
	ld	0(%r29) %r31	# 2188
	addi	%r29 %r29 $3	# 2188
	ld	-1(%r29) %r3	# 2188
	ld	-2(%r29) %r8	# 2188
	add	%r25 %r8 %r3	# 2188
	st	0(%r25) %r2	# 2188
	addi	%r3 %r3 $-1	# 2189
	sub	%r25 %r0 %r3	# 2187
	addi	%r25 %r25 $0	# 2187
	slt	%r25 %r0 %r25	# 2187
	beq	%r25 %r0 beq.10964	# 2187
	add	%r2 %r0 %r8	# 2191
	jr	%r31	# 2191
beq.10964:
	st	-3(%r29) %r3	# 2188
	addi	%r29 %r29 $-4	# 2188
	st	0(%r29) %r31	# 2188
	jal	create_pixel.2906	# 2188
	ld	0(%r29) %r31	# 2188
	addi	%r29 %r29 $4	# 2188
	ld	-3(%r29) %r3	# 2188
	ld	-2(%r29) %r8	# 2188
	add	%r25 %r8 %r3	# 2188
	st	0(%r25) %r2	# 2188
	addi	%r3 %r3 $-1	# 2189
	add	%r2 %r0 %r8	# 2189
	beq	%r0 %r0 init_line_elements.2908	# 2189
calc_dirvec.2918:
	ld	1(%r16) %r9	# 0
	sub	%r25 %r0 %r2	# 2224
	addi	%r25 %r25 $5	# 2224
	slt	%r25 %r0 %r25	# 2224
	beq	%r25 %r0 beq.10965	# 2224
	fmul	%f1 %f1 %f1	# 2215
	addi	%r9 %r0 l.8707	# 2215
	fld	0(%r9) %f0	# 2215
	fadd	%f0 %f1 %f0	# 2215
	st	-1(%r29) %r8	# 2215
	st	-2(%r29) %r3	# 2215
	st	-3(%r29) %r16	# 2215
	fst	-4(%r29) %f3	# 2215
	st	-5(%r29) %r2	# 2215
	fst	-6(%r29) %f2	# 2215
	fsqrt	%f0 %f0	# 2215
	addi	%r2 %r0 l.8520	# 2216
	fld	0(%r2) %f1	# 2216
	finv	%f31 %f0	# 2216
	fmul	%f1 %f1 %f31	# 2216
	fst	-7(%r29) %f0	# 2217
	fmov	%f0 %f1	# 2217
	addi	%r29 %r29 $-8	# 2217
	st	0(%r29) %r31	# 2217
	jal	min_caml_atan	# 2217
	ld	0(%r29) %r31	# 2217
	addi	%r29 %r29 $8	# 2217
	fld	-6(%r29) %f1	# 2218
	fmul	%f0 %f0 %f1	# 2218
	fst	-8(%r29) %f0	# 2210
	addi	%r29 %r29 $-9	# 2210
	st	0(%r29) %r31	# 2210
	jal	min_caml_sin	# 2210
	ld	0(%r29) %r31	# 2210
	addi	%r29 %r29 $9	# 2210
	fld	-8(%r29) %f1	# 2210
	fst	-9(%r29) %f0	# 2210
	fmov	%f0 %f1	# 2210
	addi	%r29 %r29 $-10	# 2210
	st	0(%r29) %r31	# 2210
	jal	min_caml_cos	# 2210
	ld	0(%r29) %r31	# 2210
	addi	%r29 %r29 $10	# 2210
	fld	-9(%r29) %f1	# 2210
	finv	%f31 %f0	# 2210
	fmul	%f1 %f1 %f31	# 2210
	fld	-7(%r29) %f0	# 2219
	fmul	%f1 %f1 %f0	# 2219
	ld	-5(%r29) %r2	# 2240
	addi	%r2 %r2 $1	# 2240
	fmul	%f0 %f1 %f1	# 2215
	addi	%r3 %r0 l.8707	# 2215
	fld	0(%r3) %f2	# 2215
	fadd	%f0 %f0 %f2	# 2215
	fst	-10(%r29) %f1	# 2215
	st	-11(%r29) %r2	# 2215
	fsqrt	%f0 %f0	# 2215
	addi	%r2 %r0 l.8520	# 2216
	fld	0(%r2) %f1	# 2216
	finv	%f31 %f0	# 2216
	fmul	%f1 %f1 %f31	# 2216
	fst	-12(%r29) %f0	# 2217
	fmov	%f0 %f1	# 2217
	addi	%r29 %r29 $-13	# 2217
	st	0(%r29) %r31	# 2217
	jal	min_caml_atan	# 2217
	ld	0(%r29) %r31	# 2217
	addi	%r29 %r29 $13	# 2217
	fld	-4(%r29) %f1	# 2218
	fmul	%f0 %f0 %f1	# 2218
	fst	-13(%r29) %f0	# 2210
	addi	%r29 %r29 $-14	# 2210
	st	0(%r29) %r31	# 2210
	jal	min_caml_sin	# 2210
	ld	0(%r29) %r31	# 2210
	addi	%r29 %r29 $14	# 2210
	fld	-13(%r29) %f1	# 2210
	fst	-14(%r29) %f0	# 2210
	fmov	%f0 %f1	# 2210
	addi	%r29 %r29 $-15	# 2210
	st	0(%r29) %r31	# 2210
	jal	min_caml_cos	# 2210
	ld	0(%r29) %r31	# 2210
	addi	%r29 %r29 $15	# 2210
	fld	-14(%r29) %f1	# 2210
	finv	%f31 %f0	# 2210
	fmul	%f1 %f1 %f31	# 2210
	fld	-12(%r29) %f0	# 2219
	fmul	%f1 %f1 %f0	# 2219
	fld	-10(%r29) %f0	# 2240
	fld	-6(%r29) %f2	# 2240
	fld	-4(%r29) %f3	# 2240
	ld	-11(%r29) %r2	# 2240
	ld	-2(%r29) %r3	# 2240
	ld	-1(%r29) %r8	# 2240
	ld	-3(%r29) %r9	# 2240
	add	%r16 %r0 %r9	# 2240
	ld	0(%r16) %r24	# 2240
	jr	%r24	# 2240
beq.10965:
	fmul	%f2 %f0 %f0	# 94
	fmul	%f3 %f1 %f1	# 94
	fadd	%f2 %f2 %f3	# 2225
	addi	%r2 %r0 l.8520	# 2225
	fld	0(%r2) %f3	# 2225
	fadd	%f2 %f2 %f3	# 2225
	st	-1(%r29) %r8	# 2225
	st	-2(%r29) %r3	# 2225
	st	-15(%r29) %r9	# 2225
	fst	-16(%r29) %f1	# 2225
	fst	-17(%r29) %f0	# 2225
	fsqrt	%f0 %f2	# 2225
	fld	-17(%r29) %f1	# 2226
	finv	%f31 %f0	# 2226
	fmul	%f1 %f1 %f31	# 2226
	fld	-16(%r29) %f2	# 2227
	finv	%f31 %f0	# 2227
	fmul	%f2 %f2 %f31	# 2227
	addi	%r2 %r0 l.8520	# 2228
	fld	0(%r2) %f3	# 2228
	finv	%f31 %f0	# 2228
	fmul	%f3 %f3 %f31	# 2228
	ld	-2(%r29) %r2	# 2231
	ld	-15(%r29) %r3	# 2231
	add	%r25 %r3 %r2	# 2231
	ld	0(%r25) %r2	# 2231
	ld	-1(%r29) %r3	# 2232
	add	%r25 %r2 %r3	# 2232
	ld	0(%r25) %r8	# 2232
	ld	0(%r8) %r8	# 539
	addi	%r9 %r0 $0	# 146
	add	%r25 %r8 %r9	# 146
	fst	0(%r25) %f1	# 146
	addi	%r9 %r0 $1	# 147
	add	%r25 %r8 %r9	# 147
	fst	0(%r25) %f2	# 147
	addi	%r9 %r0 $2	# 148
	add	%r25 %r8 %r9	# 148
	fst	0(%r25) %f3	# 148
	addi	%r8 %r3 $40	# 2233
	add	%r25 %r2 %r8	# 2233
	ld	0(%r25) %r8	# 2233
	ld	0(%r8) %r8	# 539
	fneg	%f0 %f2	# 95
	addi	%r9 %r0 $0	# 146
	add	%r25 %r8 %r9	# 146
	fst	0(%r25) %f1	# 146
	addi	%r9 %r0 $1	# 147
	add	%r25 %r8 %r9	# 147
	fst	0(%r25) %f3	# 147
	addi	%r9 %r0 $2	# 148
	add	%r25 %r8 %r9	# 148
	fst	0(%r25) %f0	# 148
	addi	%r8 %r3 $80	# 2234
	add	%r25 %r2 %r8	# 2234
	ld	0(%r25) %r8	# 2234
	ld	0(%r8) %r8	# 539
	fneg	%f0 %f1	# 95
	fneg	%f4 %f2	# 95
	addi	%r9 %r0 $0	# 146
	add	%r25 %r8 %r9	# 146
	fst	0(%r25) %f3	# 146
	addi	%r9 %r0 $1	# 147
	add	%r25 %r8 %r9	# 147
	fst	0(%r25) %f0	# 147
	addi	%r9 %r0 $2	# 148
	add	%r25 %r8 %r9	# 148
	fst	0(%r25) %f4	# 148
	addi	%r8 %r3 $1	# 2235
	add	%r25 %r2 %r8	# 2235
	ld	0(%r25) %r8	# 2235
	ld	0(%r8) %r8	# 539
	fneg	%f0 %f1	# 95
	fneg	%f4 %f2	# 95
	fneg	%f5 %f3	# 95
	addi	%r9 %r0 $0	# 146
	add	%r25 %r8 %r9	# 146
	fst	0(%r25) %f0	# 146
	addi	%r9 %r0 $1	# 147
	add	%r25 %r8 %r9	# 147
	fst	0(%r25) %f4	# 147
	addi	%r9 %r0 $2	# 148
	add	%r25 %r8 %r9	# 148
	fst	0(%r25) %f5	# 148
	addi	%r8 %r3 $41	# 2236
	add	%r25 %r2 %r8	# 2236
	ld	0(%r25) %r8	# 2236
	ld	0(%r8) %r8	# 539
	fneg	%f0 %f1	# 95
	fneg	%f4 %f3	# 95
	addi	%r9 %r0 $0	# 146
	add	%r25 %r8 %r9	# 146
	fst	0(%r25) %f0	# 146
	addi	%r9 %r0 $1	# 147
	add	%r25 %r8 %r9	# 147
	fst	0(%r25) %f4	# 147
	addi	%r9 %r0 $2	# 148
	add	%r25 %r8 %r9	# 148
	fst	0(%r25) %f2	# 148
	addi	%r3 %r3 $81	# 2237
	add	%r25 %r2 %r3	# 2237
	ld	0(%r25) %r2	# 2237
	ld	0(%r2) %r2	# 539
	fneg	%f3 %f3	# 95
	addi	%r3 %r0 $0	# 146
	add	%r25 %r2 %r3	# 146
	fst	0(%r25) %f3	# 146
	addi	%r3 %r0 $1	# 147
	add	%r25 %r2 %r3	# 147
	fst	0(%r25) %f1	# 147
	addi	%r3 %r0 $2	# 148
	add	%r25 %r2 %r3	# 148
	fst	0(%r25) %f2	# 148
	jr	%r31	# 148
calc_dirvecs.2926:
	ld	1(%r16) %r9	# 0
	sub	%r25 %r0 %r2	# 2245
	addi	%r25 %r25 $0	# 2245
	slt	%r25 %r0 %r25	# 2245
	beq	%r25 %r0 beq.10967	# 2245
	jr	%r31	# 2254
beq.10967:
	st	-1(%r29) %r16	# 2247
	st	-2(%r29) %r2	# 2247
	fst	-3(%r29) %f0	# 2247
	st	-4(%r29) %r8	# 2247
	st	-5(%r29) %r3	# 2247
	st	-6(%r29) %r9	# 2247
	addi	%r29 %r29 $-7	# 2247
	st	0(%r29) %r31	# 2247
	jal	min_caml_float_of_int	# 2247
	ld	0(%r29) %r31	# 2247
	addi	%r29 %r29 $7	# 2247
	addi	%r2 %r0 l.8743	# 2247
	fld	0(%r2) %f1	# 2247
	fmul	%f0 %f0 %f1	# 2247
	addi	%r2 %r0 l.8745	# 2247
	fld	0(%r2) %f1	# 2247
	fneg	%f31 %f1	# 2247
	fadd	%f2 %f0 %f31	# 2247
	addi	%r2 %r0 $0	# 2248
	addi	%r3 %r0 l.8518	# 2248
	fld	0(%r3) %f0	# 2248
	addi	%r3 %r0 l.8518	# 2248
	fld	0(%r3) %f1	# 2248
	fld	-3(%r29) %f3	# 2248
	ld	-5(%r29) %r3	# 2248
	ld	-4(%r29) %r8	# 2248
	ld	-6(%r29) %r9	# 2248
	add	%r16 %r0 %r9	# 2248
	addi	%r29 %r29 $-7	# 2248
	st	0(%r29) %r31	# 2248
	ld	0(%r16) %r24	# 2248
	jalr	%r24	# 2248
	ld	0(%r29) %r31	# 2248
	addi	%r29 %r29 $7	# 2248
	ld	-2(%r29) %r2	# 2250
	addi	%r29 %r29 $-7	# 2250
	st	0(%r29) %r31	# 2250
	jal	min_caml_float_of_int	# 2250
	ld	0(%r29) %r31	# 2250
	addi	%r29 %r29 $7	# 2250
	addi	%r2 %r0 l.8743	# 2250
	fld	0(%r2) %f1	# 2250
	fmul	%f0 %f0 %f1	# 2250
	addi	%r2 %r0 l.8707	# 2250
	fld	0(%r2) %f1	# 2250
	fadd	%f2 %f0 %f1	# 2250
	addi	%r2 %r0 $0	# 2251
	addi	%r3 %r0 l.8518	# 2251
	fld	0(%r3) %f0	# 2251
	addi	%r3 %r0 l.8518	# 2251
	fld	0(%r3) %f1	# 2251
	ld	-4(%r29) %r3	# 2251
	addi	%r8 %r3 $2	# 2251
	fld	-3(%r29) %f3	# 2251
	ld	-5(%r29) %r9	# 2251
	ld	-6(%r29) %r10	# 2251
	add	%r3 %r0 %r9	# 2251
	add	%r16 %r0 %r10	# 2251
	addi	%r29 %r29 $-7	# 2251
	st	0(%r29) %r31	# 2251
	ld	0(%r16) %r24	# 2251
	jalr	%r24	# 2251
	ld	0(%r29) %r31	# 2251
	addi	%r29 %r29 $7	# 2251
	ld	-2(%r29) %r2	# 2253
	addi	%r2 %r2 $-1	# 2253
	ld	-5(%r29) %r3	# 130
	addi	%r3 %r3 $1	# 130
	sub	%r25 %r0 %r3	# 131
	addi	%r25 %r25 $5	# 131
	slt	%r25 %r0 %r25	# 131
	beq	%r25 %r0 beq_true.10969	# 131
	beq	%r0 %r0 beq_cont.10970	# 131
beq_true.10969:
	addi	%r3 %r3 $-5	# 131
beq_cont.10970:
	fld	-3(%r29) %f0	# 2253
	ld	-4(%r29) %r8	# 2253
	ld	-1(%r29) %r9	# 2253
	add	%r16 %r0 %r9	# 2253
	ld	0(%r16) %r24	# 2253
	jr	%r24	# 2253
calc_dirvec_rows.2931:
	ld	1(%r16) %r9	# 0
	sub	%r25 %r0 %r2	# 2259
	addi	%r25 %r25 $0	# 2259
	slt	%r25 %r0 %r25	# 2259
	beq	%r25 %r0 beq.10971	# 2259
	jr	%r31	# 2263
beq.10971:
	st	-1(%r29) %r16	# 2260
	st	-2(%r29) %r2	# 2260
	st	-3(%r29) %r8	# 2260
	st	-4(%r29) %r3	# 2260
	st	-5(%r29) %r9	# 2260
	addi	%r29 %r29 $-6	# 2260
	st	0(%r29) %r31	# 2260
	jal	min_caml_float_of_int	# 2260
	ld	0(%r29) %r31	# 2260
	addi	%r29 %r29 $6	# 2260
	addi	%r2 %r0 l.8743	# 2260
	fld	0(%r2) %f1	# 2260
	fmul	%f0 %f0 %f1	# 2260
	addi	%r2 %r0 l.8745	# 2260
	fld	0(%r2) %f1	# 2260
	fneg	%f31 %f1	# 2260
	fadd	%f0 %f0 %f31	# 2260
	addi	%r2 %r0 $4	# 2261
	ld	-4(%r29) %r3	# 2261
	ld	-3(%r29) %r8	# 2261
	ld	-5(%r29) %r9	# 2261
	add	%r16 %r0 %r9	# 2261
	addi	%r29 %r29 $-6	# 2261
	st	0(%r29) %r31	# 2261
	ld	0(%r16) %r24	# 2261
	jalr	%r24	# 2261
	ld	0(%r29) %r31	# 2261
	addi	%r29 %r29 $6	# 2261
	ld	-2(%r29) %r2	# 2262
	addi	%r2 %r2 $-1	# 2262
	ld	-4(%r29) %r3	# 130
	addi	%r3 %r3 $2	# 130
	sub	%r25 %r0 %r3	# 131
	addi	%r25 %r25 $5	# 131
	slt	%r25 %r0 %r25	# 131
	beq	%r25 %r0 beq_true.10973	# 131
	beq	%r0 %r0 beq_cont.10974	# 131
beq_true.10973:
	addi	%r3 %r3 $-5	# 131
beq_cont.10974:
	ld	-3(%r29) %r8	# 2262
	addi	%r8 %r8 $4	# 2262
	ld	-1(%r29) %r9	# 2262
	add	%r16 %r0 %r9	# 2262
	ld	0(%r16) %r24	# 2262
	jr	%r24	# 2262
create_dirvec_elements.2937:
	ld	1(%r16) %r8	# 0
	sub	%r25 %r0 %r3	# 2278
	addi	%r25 %r25 $0	# 2278
	slt	%r25 %r0 %r25	# 2278
	beq	%r25 %r0 beq.10975	# 2278
	jr	%r31	# 2281
beq.10975:
	addi	%r9 %r0 $3	# 2272
	addi	%r10 %r0 l.8518	# 2272
	fld	0(%r10) %f0	# 2272
	st	-1(%r29) %r16	# 2272
	st	-2(%r29) %r3	# 2272
	st	-3(%r29) %r2	# 2272
	st	-4(%r29) %r8	# 2272
	add	%r2 %r0 %r9	# 2272
	addi	%r29 %r29 $-5	# 2272
	st	0(%r29) %r31	# 2272
	jal	min_caml_create_float_array	# 2272
	ld	0(%r29) %r31	# 2272
	addi	%r29 %r29 $5	# 2272
	add	%r3 %r0 %r2	# 2272
	addi	%r2 %r0 $0	# 2273
	ld	-4(%r29) %r8	# 2273
	add	%r25 %r8 %r2	# 2273
	ld	0(%r25) %r2	# 2273
	st	-5(%r29) %r3	# 2273
	addi	%r29 %r29 $-6	# 2273
	st	0(%r29) %r31	# 2273
	jal	min_caml_create_array	# 2273
	ld	0(%r29) %r31	# 2273
	addi	%r29 %r29 $6	# 2273
	add	%r3 %r0 %r28	# 2274
	addi	%r28 %r28 $2	# 2274
	st	1(%r3) %r2	# 2274
	ld	-5(%r29) %r2	# 2274
	st	0(%r3) %r2	# 2274
	ld	-2(%r29) %r2	# 2279
	ld	-3(%r29) %r8	# 2279
	add	%r25 %r8 %r2	# 2279
	st	0(%r25) %r3	# 2279
	addi	%r2 %r2 $-1	# 2280
	sub	%r25 %r0 %r2	# 2278
	addi	%r25 %r25 $0	# 2278
	slt	%r25 %r0 %r25	# 2278
	beq	%r25 %r0 beq.10977	# 2278
	jr	%r31	# 2281
beq.10977:
	addi	%r3 %r0 $3	# 2272
	addi	%r9 %r0 l.8518	# 2272
	fld	0(%r9) %f0	# 2272
	st	-6(%r29) %r2	# 2272
	add	%r2 %r0 %r3	# 2272
	addi	%r29 %r29 $-7	# 2272
	st	0(%r29) %r31	# 2272
	jal	min_caml_create_float_array	# 2272
	ld	0(%r29) %r31	# 2272
	addi	%r29 %r29 $7	# 2272
	add	%r3 %r0 %r2	# 2272
	addi	%r2 %r0 $0	# 2273
	ld	-4(%r29) %r8	# 2273
	add	%r25 %r8 %r2	# 2273
	ld	0(%r25) %r2	# 2273
	st	-7(%r29) %r3	# 2273
	addi	%r29 %r29 $-8	# 2273
	st	0(%r29) %r31	# 2273
	jal	min_caml_create_array	# 2273
	ld	0(%r29) %r31	# 2273
	addi	%r29 %r29 $8	# 2273
	add	%r3 %r0 %r28	# 2274
	addi	%r28 %r28 $2	# 2274
	st	1(%r3) %r2	# 2274
	ld	-7(%r29) %r2	# 2274
	st	0(%r3) %r2	# 2274
	ld	-6(%r29) %r2	# 2279
	ld	-3(%r29) %r8	# 2279
	add	%r25 %r8 %r2	# 2279
	st	0(%r25) %r3	# 2279
	addi	%r3 %r2 $-1	# 2280
	ld	-1(%r29) %r2	# 2280
	add	%r16 %r0 %r2	# 2280
	add	%r2 %r0 %r8	# 2280
	ld	0(%r16) %r24	# 2280
	jr	%r24	# 2280
create_dirvecs.2940:
	ld	3(%r16) %r3	# 0
	ld	2(%r16) %r8	# 0
	ld	1(%r16) %r9	# 0
	sub	%r25 %r0 %r2	# 2285
	addi	%r25 %r25 $0	# 2285
	slt	%r25 %r0 %r25	# 2285
	beq	%r25 %r0 beq.10979	# 2285
	jr	%r31	# 2289
beq.10979:
	addi	%r10 %r0 $120	# 2286
	addi	%r11 %r0 $3	# 2272
	addi	%r12 %r0 l.8518	# 2272
	fld	0(%r12) %f0	# 2272
	st	-1(%r29) %r16	# 2272
	st	-2(%r29) %r9	# 2272
	st	-3(%r29) %r2	# 2272
	st	-4(%r29) %r8	# 2272
	st	-5(%r29) %r10	# 2272
	st	-6(%r29) %r3	# 2272
	add	%r2 %r0 %r11	# 2272
	addi	%r29 %r29 $-7	# 2272
	st	0(%r29) %r31	# 2272
	jal	min_caml_create_float_array	# 2272
	ld	0(%r29) %r31	# 2272
	addi	%r29 %r29 $7	# 2272
	add	%r3 %r0 %r2	# 2272
	addi	%r2 %r0 $0	# 2273
	ld	-6(%r29) %r8	# 2273
	add	%r25 %r8 %r2	# 2273
	ld	0(%r25) %r2	# 2273
	st	-7(%r29) %r3	# 2273
	addi	%r29 %r29 $-8	# 2273
	st	0(%r29) %r31	# 2273
	jal	min_caml_create_array	# 2273
	ld	0(%r29) %r31	# 2273
	addi	%r29 %r29 $8	# 2273
	add	%r3 %r0 %r28	# 2274
	addi	%r28 %r28 $2	# 2274
	st	1(%r3) %r2	# 2274
	ld	-7(%r29) %r2	# 2274
	st	0(%r3) %r2	# 2274
	ld	-5(%r29) %r2	# 2286
	addi	%r29 %r29 $-8	# 2286
	st	0(%r29) %r31	# 2286
	jal	min_caml_create_array	# 2286
	ld	0(%r29) %r31	# 2286
	addi	%r29 %r29 $8	# 2286
	ld	-3(%r29) %r3	# 2286
	ld	-4(%r29) %r8	# 2286
	add	%r25 %r8 %r3	# 2286
	st	0(%r25) %r2	# 2286
	add	%r25 %r8 %r3	# 2287
	ld	0(%r25) %r2	# 2287
	addi	%r8 %r0 $118	# 2287
	addi	%r9 %r0 $3	# 2272
	addi	%r10 %r0 l.8518	# 2272
	fld	0(%r10) %f0	# 2272
	st	-8(%r29) %r8	# 2272
	st	-9(%r29) %r2	# 2272
	add	%r2 %r0 %r9	# 2272
	addi	%r29 %r29 $-10	# 2272
	st	0(%r29) %r31	# 2272
	jal	min_caml_create_float_array	# 2272
	ld	0(%r29) %r31	# 2272
	addi	%r29 %r29 $10	# 2272
	add	%r3 %r0 %r2	# 2272
	addi	%r2 %r0 $0	# 2273
	ld	-6(%r29) %r8	# 2273
	add	%r25 %r8 %r2	# 2273
	ld	0(%r25) %r2	# 2273
	st	-10(%r29) %r3	# 2273
	addi	%r29 %r29 $-11	# 2273
	st	0(%r29) %r31	# 2273
	jal	min_caml_create_array	# 2273
	ld	0(%r29) %r31	# 2273
	addi	%r29 %r29 $11	# 2273
	add	%r3 %r0 %r28	# 2274
	addi	%r28 %r28 $2	# 2274
	st	1(%r3) %r2	# 2274
	ld	-10(%r29) %r2	# 2274
	st	0(%r3) %r2	# 2274
	ld	-8(%r29) %r2	# 2279
	ld	-9(%r29) %r8	# 2279
	add	%r25 %r8 %r2	# 2279
	st	0(%r25) %r3	# 2279
	addi	%r3 %r0 $117	# 2280
	ld	-2(%r29) %r2	# 2280
	add	%r16 %r0 %r2	# 2280
	add	%r2 %r0 %r8	# 2280
	addi	%r29 %r29 $-11	# 2280
	st	0(%r29) %r31	# 2280
	ld	0(%r16) %r24	# 2280
	jalr	%r24	# 2280
	ld	0(%r29) %r31	# 2280
	addi	%r29 %r29 $11	# 2280
	ld	-3(%r29) %r2	# 2288
	addi	%r2 %r2 $-1	# 2288
	ld	-1(%r29) %r3	# 2288
	add	%r16 %r0 %r3	# 2288
	ld	0(%r16) %r24	# 2288
	jr	%r24	# 2288
init_dirvec_constants.2942:
	ld	2(%r16) %r8	# 0
	ld	1(%r16) %r9	# 0
	sub	%r25 %r0 %r3	# 2297
	addi	%r25 %r25 $0	# 2297
	slt	%r25 %r0 %r25	# 2297
	beq	%r25 %r0 beq.10981	# 2297
	jr	%r31	# 2300
beq.10981:
	add	%r25 %r2 %r3	# 2298
	ld	0(%r25) %r10	# 2298
	addi	%r11 %r0 $0	# 1189
	add	%r25 %r8 %r11	# 1189
	ld	0(%r25) %r11	# 1189
	addi	%r11 %r11 $-1	# 1189
	st	-1(%r29) %r16	# 1189
	st	-2(%r29) %r9	# 1189
	st	-3(%r29) %r8	# 1189
	st	-4(%r29) %r2	# 1189
	st	-5(%r29) %r3	# 1189
	add	%r3 %r0 %r11	# 1189
	add	%r2 %r0 %r10	# 1189
	add	%r16 %r0 %r9	# 1189
	addi	%r29 %r29 $-6	# 1189
	st	0(%r29) %r31	# 1189
	ld	0(%r16) %r24	# 1189
	jalr	%r24	# 1189
	ld	0(%r29) %r31	# 1189
	addi	%r29 %r29 $6	# 1189
	ld	-5(%r29) %r2	# 2299
	addi	%r2 %r2 $-1	# 2299
	sub	%r25 %r0 %r2	# 2297
	addi	%r25 %r25 $0	# 2297
	slt	%r25 %r0 %r25	# 2297
	beq	%r25 %r0 beq.10983	# 2297
	jr	%r31	# 2300
beq.10983:
	ld	-4(%r29) %r3	# 2298
	add	%r25 %r3 %r2	# 2298
	ld	0(%r25) %r8	# 2298
	addi	%r9 %r0 $0	# 1189
	ld	-3(%r29) %r10	# 1189
	add	%r25 %r10 %r9	# 1189
	ld	0(%r25) %r9	# 1189
	addi	%r9 %r9 $-1	# 1189
	ld	-2(%r29) %r10	# 1189
	st	-6(%r29) %r2	# 1189
	add	%r3 %r0 %r9	# 1189
	add	%r2 %r0 %r8	# 1189
	add	%r16 %r0 %r10	# 1189
	addi	%r29 %r29 $-7	# 1189
	st	0(%r29) %r31	# 1189
	ld	0(%r16) %r24	# 1189
	jalr	%r24	# 1189
	ld	0(%r29) %r31	# 1189
	addi	%r29 %r29 $7	# 1189
	ld	-6(%r29) %r2	# 2299
	addi	%r3 %r2 $-1	# 2299
	ld	-4(%r29) %r2	# 2299
	ld	-1(%r29) %r8	# 2299
	add	%r16 %r0 %r8	# 2299
	ld	0(%r16) %r24	# 2299
	jr	%r24	# 2299
init_vecset_constants.2945:
	ld	4(%r16) %r3	# 0
	ld	3(%r16) %r8	# 0
	ld	2(%r16) %r9	# 0
	ld	1(%r16) %r10	# 0
	sub	%r25 %r0 %r2	# 2304
	addi	%r25 %r25 $0	# 2304
	slt	%r25 %r0 %r25	# 2304
	beq	%r25 %r0 beq.10985	# 2304
	jr	%r31	# 2307
beq.10985:
	add	%r25 %r10 %r2	# 2305
	ld	0(%r25) %r11	# 2305
	addi	%r12 %r0 $119	# 2305
	add	%r25 %r11 %r12	# 2298
	ld	0(%r25) %r12	# 2298
	addi	%r13 %r0 $0	# 1189
	add	%r25 %r3 %r13	# 1189
	ld	0(%r25) %r3	# 1189
	addi	%r3 %r3 $-1	# 1189
	st	-1(%r29) %r16	# 1189
	st	-2(%r29) %r10	# 1189
	st	-3(%r29) %r2	# 1189
	st	-4(%r29) %r11	# 1189
	st	-5(%r29) %r9	# 1189
	add	%r2 %r0 %r12	# 1189
	add	%r16 %r0 %r8	# 1189
	addi	%r29 %r29 $-6	# 1189
	st	0(%r29) %r31	# 1189
	ld	0(%r16) %r24	# 1189
	jalr	%r24	# 1189
	ld	0(%r29) %r31	# 1189
	addi	%r29 %r29 $6	# 1189
	addi	%r3 %r0 $118	# 2299
	ld	-4(%r29) %r2	# 2299
	ld	-5(%r29) %r8	# 2299
	add	%r16 %r0 %r8	# 2299
	addi	%r29 %r29 $-6	# 2299
	st	0(%r29) %r31	# 2299
	ld	0(%r16) %r24	# 2299
	jalr	%r24	# 2299
	ld	0(%r29) %r31	# 2299
	addi	%r29 %r29 $6	# 2299
	ld	-3(%r29) %r2	# 2306
	addi	%r2 %r2 $-1	# 2306
	sub	%r25 %r0 %r2	# 2304
	addi	%r25 %r25 $0	# 2304
	slt	%r25 %r0 %r25	# 2304
	beq	%r25 %r0 beq.10987	# 2304
	jr	%r31	# 2307
beq.10987:
	ld	-2(%r29) %r3	# 2305
	add	%r25 %r3 %r2	# 2305
	ld	0(%r25) %r3	# 2305
	addi	%r8 %r0 $119	# 2305
	ld	-5(%r29) %r9	# 2305
	st	-6(%r29) %r2	# 2305
	add	%r2 %r0 %r3	# 2305
	add	%r16 %r0 %r9	# 2305
	add	%r3 %r0 %r8	# 2305
	addi	%r29 %r29 $-7	# 2305
	st	0(%r29) %r31	# 2305
	ld	0(%r16) %r24	# 2305
	jalr	%r24	# 2305
	ld	0(%r29) %r31	# 2305
	addi	%r29 %r29 $7	# 2305
	ld	-6(%r29) %r2	# 2306
	addi	%r2 %r2 $-1	# 2306
	ld	-1(%r29) %r3	# 2306
	add	%r16 %r0 %r3	# 2306
	ld	0(%r16) %r24	# 2306
	jr	%r24	# 2306
setup_rect_reflection.2956:
	ld	5(%r16) %r8	# 0
	ld	4(%r16) %r9	# 0
	ld	3(%r16) %r10	# 0
	ld	2(%r16) %r11	# 0
	ld	1(%r16) %r12	# 0
	addi	%r25 %r0 $2	# 2331
	sll	%r2 %r2 %r25	# 2331
	addi	%r13 %r0 $0	# 2332
	add	%r25 %r9 %r13	# 2332
	ld	0(%r25) %r13	# 2332
	addi	%r14 %r0 l.8520	# 2333
	fld	0(%r14) %f0	# 2333
	ld	7(%r3) %r3	# 361
	addi	%r14 %r0 $0	# 366
	add	%r25 %r3 %r14	# 366
	fld	0(%r25) %f1	# 366
	fneg	%f31 %f1	# 2333
	fadd	%f0 %f0 %f31	# 2333
	addi	%r3 %r0 $0	# 2334
	add	%r25 %r11 %r3	# 2334
	fld	0(%r25) %f1	# 2334
	fneg	%f1 %f1	# 95
	addi	%r3 %r0 $1	# 2335
	add	%r25 %r11 %r3	# 2335
	fld	0(%r25) %f2	# 2335
	fneg	%f2 %f2	# 95
	addi	%r3 %r0 $2	# 2336
	add	%r25 %r11 %r3	# 2336
	fld	0(%r25) %f3	# 2336
	fneg	%f3 %f3	# 95
	addi	%r3 %r2 $1	# 2337
	addi	%r14 %r0 $0	# 2337
	add	%r25 %r11 %r14	# 2337
	fld	0(%r25) %f4	# 2337
	addi	%r14 %r0 $3	# 2272
	addi	%r15 %r0 l.8518	# 2272
	fld	0(%r15) %f5	# 2272
	st	-1(%r29) %r9	# 2272
	fst	-2(%r29) %f1	# 2272
	st	-3(%r29) %r11	# 2272
	st	-4(%r29) %r2	# 2272
	st	-5(%r29) %r13	# 2272
	st	-6(%r29) %r8	# 2272
	st	-7(%r29) %r3	# 2272
	fst	-8(%r29) %f0	# 2272
	st	-9(%r29) %r12	# 2272
	fst	-10(%r29) %f3	# 2272
	fst	-11(%r29) %f2	# 2272
	fst	-12(%r29) %f4	# 2272
	st	-13(%r29) %r10	# 2272
	add	%r2 %r0 %r14	# 2272
	fmov	%f0 %f5	# 2272
	addi	%r29 %r29 $-14	# 2272
	st	0(%r29) %r31	# 2272
	jal	min_caml_create_float_array	# 2272
	ld	0(%r29) %r31	# 2272
	addi	%r29 %r29 $14	# 2272
	add	%r3 %r0 %r2	# 2272
	addi	%r2 %r0 $0	# 2273
	ld	-13(%r29) %r8	# 2273
	add	%r25 %r8 %r2	# 2273
	ld	0(%r25) %r2	# 2273
	st	-14(%r29) %r3	# 2273
	addi	%r29 %r29 $-15	# 2273
	st	0(%r29) %r31	# 2273
	jal	min_caml_create_array	# 2273
	ld	0(%r29) %r31	# 2273
	addi	%r29 %r29 $15	# 2273
	add	%r3 %r0 %r28	# 2274
	addi	%r28 %r28 $2	# 2274
	st	1(%r3) %r2	# 2274
	ld	-14(%r29) %r2	# 2274
	st	0(%r3) %r2	# 2274
	addi	%r8 %r0 $0	# 146
	fld	-12(%r29) %f0	# 146
	add	%r25 %r2 %r8	# 146
	fst	0(%r25) %f0	# 146
	addi	%r8 %r0 $1	# 147
	fld	-11(%r29) %f0	# 147
	add	%r25 %r2 %r8	# 147
	fst	0(%r25) %f0	# 147
	addi	%r8 %r0 $2	# 148
	fld	-10(%r29) %f1	# 148
	add	%r25 %r2 %r8	# 148
	fst	0(%r25) %f1	# 148
	addi	%r2 %r0 $0	# 1189
	ld	-13(%r29) %r8	# 1189
	add	%r25 %r8 %r2	# 1189
	ld	0(%r25) %r2	# 1189
	addi	%r2 %r2 $-1	# 1189
	ld	-9(%r29) %r9	# 1189
	st	-15(%r29) %r3	# 1189
	add	%r16 %r0 %r9	# 1189
	add	%r24 %r0 %r3	# 1189
	add	%r3 %r0 %r2	# 1189
	add	%r2 %r0 %r24	# 1189
	addi	%r29 %r29 $-16	# 1189
	st	0(%r29) %r31	# 1189
	ld	0(%r16) %r24	# 1189
	jalr	%r24	# 1189
	ld	0(%r29) %r31	# 1189
	addi	%r29 %r29 $16	# 1189
	add	%r2 %r0 %r28	# 2326
	addi	%r28 %r28 $3	# 2326
	fld	-8(%r29) %f0	# 2326
	fst	2(%r2) %f0	# 2326
	ld	-15(%r29) %r3	# 2326
	st	1(%r2) %r3	# 2326
	ld	-7(%r29) %r3	# 2326
	st	0(%r2) %r3	# 2326
	ld	-5(%r29) %r3	# 2326
	ld	-6(%r29) %r8	# 2326
	add	%r25 %r8 %r3	# 2326
	st	0(%r25) %r2	# 2326
	addi	%r2 %r3 $1	# 2338
	ld	-4(%r29) %r9	# 2338
	addi	%r10 %r9 $2	# 2338
	addi	%r11 %r0 $1	# 2338
	ld	-3(%r29) %r12	# 2338
	add	%r25 %r12 %r11	# 2338
	fld	0(%r25) %f1	# 2338
	addi	%r11 %r0 $3	# 2272
	addi	%r13 %r0 l.8518	# 2272
	fld	0(%r13) %f2	# 2272
	st	-16(%r29) %r2	# 2272
	st	-17(%r29) %r10	# 2272
	fst	-18(%r29) %f1	# 2272
	add	%r2 %r0 %r11	# 2272
	fmov	%f0 %f2	# 2272
	addi	%r29 %r29 $-19	# 2272
	st	0(%r29) %r31	# 2272
	jal	min_caml_create_float_array	# 2272
	ld	0(%r29) %r31	# 2272
	addi	%r29 %r29 $19	# 2272
	add	%r3 %r0 %r2	# 2272
	addi	%r2 %r0 $0	# 2273
	ld	-13(%r29) %r8	# 2273
	add	%r25 %r8 %r2	# 2273
	ld	0(%r25) %r2	# 2273
	st	-19(%r29) %r3	# 2273
	addi	%r29 %r29 $-20	# 2273
	st	0(%r29) %r31	# 2273
	jal	min_caml_create_array	# 2273
	ld	0(%r29) %r31	# 2273
	addi	%r29 %r29 $20	# 2273
	add	%r3 %r0 %r28	# 2274
	addi	%r28 %r28 $2	# 2274
	st	1(%r3) %r2	# 2274
	ld	-19(%r29) %r2	# 2274
	st	0(%r3) %r2	# 2274
	addi	%r8 %r0 $0	# 146
	fld	-2(%r29) %f0	# 146
	add	%r25 %r2 %r8	# 146
	fst	0(%r25) %f0	# 146
	addi	%r8 %r0 $1	# 147
	fld	-18(%r29) %f1	# 147
	add	%r25 %r2 %r8	# 147
	fst	0(%r25) %f1	# 147
	addi	%r8 %r0 $2	# 148
	fld	-10(%r29) %f1	# 148
	add	%r25 %r2 %r8	# 148
	fst	0(%r25) %f1	# 148
	addi	%r2 %r0 $0	# 1189
	ld	-13(%r29) %r8	# 1189
	add	%r25 %r8 %r2	# 1189
	ld	0(%r25) %r2	# 1189
	addi	%r2 %r2 $-1	# 1189
	ld	-9(%r29) %r9	# 1189
	st	-20(%r29) %r3	# 1189
	add	%r16 %r0 %r9	# 1189
	add	%r24 %r0 %r3	# 1189
	add	%r3 %r0 %r2	# 1189
	add	%r2 %r0 %r24	# 1189
	addi	%r29 %r29 $-21	# 1189
	st	0(%r29) %r31	# 1189
	ld	0(%r16) %r24	# 1189
	jalr	%r24	# 1189
	ld	0(%r29) %r31	# 1189
	addi	%r29 %r29 $21	# 1189
	add	%r2 %r0 %r28	# 2326
	addi	%r28 %r28 $3	# 2326
	fld	-8(%r29) %f0	# 2326
	fst	2(%r2) %f0	# 2326
	ld	-20(%r29) %r3	# 2326
	st	1(%r2) %r3	# 2326
	ld	-17(%r29) %r3	# 2326
	st	0(%r2) %r3	# 2326
	ld	-16(%r29) %r3	# 2326
	ld	-6(%r29) %r8	# 2326
	add	%r25 %r8 %r3	# 2326
	st	0(%r25) %r2	# 2326
	ld	-5(%r29) %r2	# 2339
	addi	%r3 %r2 $2	# 2339
	ld	-4(%r29) %r9	# 2339
	addi	%r9 %r9 $3	# 2339
	addi	%r10 %r0 $2	# 2339
	ld	-3(%r29) %r11	# 2339
	add	%r25 %r11 %r10	# 2339
	fld	0(%r25) %f1	# 2339
	addi	%r10 %r0 $3	# 2272
	addi	%r11 %r0 l.8518	# 2272
	fld	0(%r11) %f2	# 2272
	st	-21(%r29) %r3	# 2272
	st	-22(%r29) %r9	# 2272
	fst	-23(%r29) %f1	# 2272
	add	%r2 %r0 %r10	# 2272
	fmov	%f0 %f2	# 2272
	addi	%r29 %r29 $-24	# 2272
	st	0(%r29) %r31	# 2272
	jal	min_caml_create_float_array	# 2272
	ld	0(%r29) %r31	# 2272
	addi	%r29 %r29 $24	# 2272
	add	%r3 %r0 %r2	# 2272
	addi	%r2 %r0 $0	# 2273
	ld	-13(%r29) %r8	# 2273
	add	%r25 %r8 %r2	# 2273
	ld	0(%r25) %r2	# 2273
	st	-24(%r29) %r3	# 2273
	addi	%r29 %r29 $-25	# 2273
	st	0(%r29) %r31	# 2273
	jal	min_caml_create_array	# 2273
	ld	0(%r29) %r31	# 2273
	addi	%r29 %r29 $25	# 2273
	add	%r3 %r0 %r28	# 2274
	addi	%r28 %r28 $2	# 2274
	st	1(%r3) %r2	# 2274
	ld	-24(%r29) %r2	# 2274
	st	0(%r3) %r2	# 2274
	addi	%r8 %r0 $0	# 146
	fld	-2(%r29) %f0	# 146
	add	%r25 %r2 %r8	# 146
	fst	0(%r25) %f0	# 146
	addi	%r8 %r0 $1	# 147
	fld	-11(%r29) %f0	# 147
	add	%r25 %r2 %r8	# 147
	fst	0(%r25) %f0	# 147
	addi	%r8 %r0 $2	# 148
	fld	-23(%r29) %f0	# 148
	add	%r25 %r2 %r8	# 148
	fst	0(%r25) %f0	# 148
	addi	%r2 %r0 $0	# 1189
	ld	-13(%r29) %r8	# 1189
	add	%r25 %r8 %r2	# 1189
	ld	0(%r25) %r2	# 1189
	addi	%r2 %r2 $-1	# 1189
	ld	-9(%r29) %r8	# 1189
	st	-25(%r29) %r3	# 1189
	add	%r16 %r0 %r8	# 1189
	add	%r24 %r0 %r3	# 1189
	add	%r3 %r0 %r2	# 1189
	add	%r2 %r0 %r24	# 1189
	addi	%r29 %r29 $-26	# 1189
	st	0(%r29) %r31	# 1189
	ld	0(%r16) %r24	# 1189
	jalr	%r24	# 1189
	ld	0(%r29) %r31	# 1189
	addi	%r29 %r29 $26	# 1189
	add	%r2 %r0 %r28	# 2326
	addi	%r28 %r28 $3	# 2326
	fld	-8(%r29) %f0	# 2326
	fst	2(%r2) %f0	# 2326
	ld	-25(%r29) %r3	# 2326
	st	1(%r2) %r3	# 2326
	ld	-22(%r29) %r3	# 2326
	st	0(%r2) %r3	# 2326
	ld	-21(%r29) %r3	# 2326
	ld	-6(%r29) %r8	# 2326
	add	%r25 %r8 %r3	# 2326
	st	0(%r25) %r2	# 2326
	addi	%r2 %r0 $0	# 2340
	ld	-5(%r29) %r3	# 2340
	addi	%r3 %r3 $3	# 2340
	ld	-1(%r29) %r8	# 2340
	add	%r25 %r8 %r2	# 2340
	st	0(%r25) %r3	# 2340
	jr	%r31	# 2340
setup_surface_reflection.2959:
	ld	5(%r16) %r8	# 0
	ld	4(%r16) %r9	# 0
	ld	3(%r16) %r10	# 0
	ld	2(%r16) %r11	# 0
	ld	1(%r16) %r12	# 0
	addi	%r25 %r0 $2	# 2345
	sll	%r2 %r2 %r25	# 2345
	addi	%r2 %r2 $1	# 2345
	addi	%r13 %r0 $0	# 2346
	add	%r25 %r9 %r13	# 2346
	ld	0(%r25) %r13	# 2346
	addi	%r14 %r0 l.8520	# 2347
	fld	0(%r14) %f0	# 2347
	ld	7(%r3) %r14	# 361
	addi	%r15 %r0 $0	# 366
	add	%r25 %r14 %r15	# 366
	fld	0(%r25) %f1	# 366
	fneg	%f31 %f1	# 2347
	fadd	%f0 %f0 %f31	# 2347
	ld	4(%r3) %r14	# 321
	st	-1(%r29) %r9	# 2348
	st	-2(%r29) %r13	# 2348
	st	-3(%r29) %r8	# 2348
	st	-4(%r29) %r2	# 2348
	fst	-5(%r29) %f0	# 2348
	st	-6(%r29) %r12	# 2348
	st	-7(%r29) %r10	# 2348
	st	-8(%r29) %r11	# 2348
	st	-9(%r29) %r3	# 2348
	add	%r3 %r0 %r14	# 2348
	add	%r2 %r0 %r11	# 2348
	addi	%r29 %r29 $-10	# 2348
	st	0(%r29) %r31	# 2348
	jal	veciprod.2512	# 2348
	ld	0(%r29) %r31	# 2348
	addi	%r29 %r29 $10	# 2348
	addi	%r2 %r0 l.8536	# 2351
	fld	0(%r2) %f1	# 2351
	ld	-9(%r29) %r2	# 291
	ld	4(%r2) %r3	# 291
	addi	%r8 %r0 $0	# 296
	add	%r25 %r3 %r8	# 296
	fld	0(%r25) %f2	# 296
	fmul	%f1 %f1 %f2	# 2351
	fmul	%f1 %f1 %f0	# 2351
	addi	%r3 %r0 $0	# 2351
	ld	-8(%r29) %r8	# 2351
	add	%r25 %r8 %r3	# 2351
	fld	0(%r25) %f2	# 2351
	fneg	%f31 %f2	# 2351
	fadd	%f1 %f1 %f31	# 2351
	addi	%r3 %r0 l.8536	# 2352
	fld	0(%r3) %f2	# 2352
	ld	4(%r2) %r3	# 301
	addi	%r9 %r0 $1	# 306
	add	%r25 %r3 %r9	# 306
	fld	0(%r25) %f3	# 306
	fmul	%f2 %f2 %f3	# 2352
	fmul	%f2 %f2 %f0	# 2352
	addi	%r3 %r0 $1	# 2352
	add	%r25 %r8 %r3	# 2352
	fld	0(%r25) %f3	# 2352
	fneg	%f31 %f3	# 2352
	fadd	%f2 %f2 %f31	# 2352
	addi	%r3 %r0 l.8536	# 2353
	fld	0(%r3) %f3	# 2353
	ld	4(%r2) %r2	# 311
	addi	%r3 %r0 $2	# 316
	add	%r25 %r2 %r3	# 316
	fld	0(%r25) %f4	# 316
	fmul	%f3 %f3 %f4	# 2353
	fmul	%f3 %f3 %f0	# 2353
	addi	%r2 %r0 $2	# 2353
	add	%r25 %r8 %r2	# 2353
	fld	0(%r25) %f0	# 2353
	fneg	%f31 %f0	# 2353
	fadd	%f3 %f3 %f31	# 2353
	addi	%r2 %r0 $3	# 2272
	addi	%r3 %r0 l.8518	# 2272
	fld	0(%r3) %f0	# 2272
	fst	-10(%r29) %f3	# 2272
	fst	-11(%r29) %f2	# 2272
	fst	-12(%r29) %f1	# 2272
	addi	%r29 %r29 $-13	# 2272
	st	0(%r29) %r31	# 2272
	jal	min_caml_create_float_array	# 2272
	ld	0(%r29) %r31	# 2272
	addi	%r29 %r29 $13	# 2272
	add	%r3 %r0 %r2	# 2272
	addi	%r2 %r0 $0	# 2273
	ld	-7(%r29) %r8	# 2273
	add	%r25 %r8 %r2	# 2273
	ld	0(%r25) %r2	# 2273
	st	-13(%r29) %r3	# 2273
	addi	%r29 %r29 $-14	# 2273
	st	0(%r29) %r31	# 2273
	jal	min_caml_create_array	# 2273
	ld	0(%r29) %r31	# 2273
	addi	%r29 %r29 $14	# 2273
	add	%r3 %r0 %r28	# 2274
	addi	%r28 %r28 $2	# 2274
	st	1(%r3) %r2	# 2274
	ld	-13(%r29) %r2	# 2274
	st	0(%r3) %r2	# 2274
	addi	%r8 %r0 $0	# 146
	fld	-12(%r29) %f0	# 146
	add	%r25 %r2 %r8	# 146
	fst	0(%r25) %f0	# 146
	addi	%r8 %r0 $1	# 147
	fld	-11(%r29) %f0	# 147
	add	%r25 %r2 %r8	# 147
	fst	0(%r25) %f0	# 147
	addi	%r8 %r0 $2	# 148
	fld	-10(%r29) %f0	# 148
	add	%r25 %r2 %r8	# 148
	fst	0(%r25) %f0	# 148
	addi	%r2 %r0 $0	# 1189
	ld	-7(%r29) %r8	# 1189
	add	%r25 %r8 %r2	# 1189
	ld	0(%r25) %r2	# 1189
	addi	%r2 %r2 $-1	# 1189
	ld	-6(%r29) %r8	# 1189
	st	-14(%r29) %r3	# 1189
	add	%r16 %r0 %r8	# 1189
	add	%r24 %r0 %r3	# 1189
	add	%r3 %r0 %r2	# 1189
	add	%r2 %r0 %r24	# 1189
	addi	%r29 %r29 $-15	# 1189
	st	0(%r29) %r31	# 1189
	ld	0(%r16) %r24	# 1189
	jalr	%r24	# 1189
	ld	0(%r29) %r31	# 1189
	addi	%r29 %r29 $15	# 1189
	add	%r2 %r0 %r28	# 2326
	addi	%r28 %r28 $3	# 2326
	fld	-5(%r29) %f0	# 2326
	fst	2(%r2) %f0	# 2326
	ld	-14(%r29) %r3	# 2326
	st	1(%r2) %r3	# 2326
	ld	-4(%r29) %r3	# 2326
	st	0(%r2) %r3	# 2326
	ld	-2(%r29) %r3	# 2326
	ld	-3(%r29) %r8	# 2326
	add	%r25 %r8 %r3	# 2326
	st	0(%r25) %r2	# 2326
	addi	%r2 %r0 $0	# 2354
	addi	%r3 %r3 $1	# 2354
	ld	-1(%r29) %r8	# 2354
	add	%r25 %r8 %r2	# 2354
	st	0(%r25) %r3	# 2354
	jr	%r31	# 2354
setup_reflections.2962:
	ld	3(%r16) %r3	# 0
	ld	2(%r16) %r8	# 0
	ld	1(%r16) %r9	# 0
	sub	%r25 %r0 %r2	# 2360
	addi	%r25 %r25 $0	# 2360
	slt	%r25 %r0 %r25	# 2360
	beq	%r25 %r0 beq.10991	# 2360
	jr	%r31	# 2373
beq.10991:
	add	%r25 %r9 %r2	# 2361
	ld	0(%r25) %r9	# 2361
	ld	2(%r9) %r10	# 263
	addi	%r25 %r10 $-2	# 2362
	beq	%r25 %r0 beq.10993	# 2362
	jr	%r31	# 2372
beq.10993:
	ld	7(%r9) %r10	# 361
	addi	%r11 %r0 $0	# 366
	add	%r25 %r10 %r11	# 366
	fld	0(%r25) %f0	# 366
	addi	%r10 %r0 l.8520	# 2363
	fld	0(%r10) %f1	# 2363
	fslt	%f0 %f1	# 89
	bclt	bclt_true.10995	# 89
	addi	%r10 %r0 $0	# 89
	beq	%r0 %r0 bclt_cont.10996	# 89
bclt_true.10995:
	addi	%r10 %r0 $1	# 89
bclt_cont.10996:
	beq	%r10 %r0 beq.10997	# 2363
	ld	1(%r9) %r10	# 253
	addi	%r25 %r10 $-1	# 2366
	beq	%r25 %r0 beq.10998	# 2366
	addi	%r25 %r10 $-2	# 2368
	beq	%r25 %r0 beq.10999	# 2368
	jr	%r31	# 2370
beq.10999:
	add	%r16 %r0 %r3	# 2369
	add	%r3 %r0 %r9	# 2369
	ld	0(%r16) %r24	# 2369
	jr	%r24	# 2369
beq.10998:
	add	%r3 %r0 %r9	# 2367
	add	%r16 %r0 %r8	# 2367
	ld	0(%r16) %r24	# 2367
	jr	%r24	# 2367
beq.10997:
	jr	%r31	# 2371
rt.2964:
	ld	16(%r16) %r8	# 0
	ld	15(%r16) %r9	# 0
	ld	14(%r16) %r10	# 0
	ld	13(%r16) %r11	# 0
	ld	12(%r16) %r12	# 0
	ld	11(%r16) %r13	# 0
	ld	10(%r16) %r14	# 0
	ld	9(%r16) %r15	# 0
	st	-1(%r29) %r12	# 0
	ld	8(%r16) %r12	# 0
	st	-2(%r29) %r14	# 0
	ld	7(%r16) %r14	# 0
	st	-3(%r29) %r10	# 0
	ld	6(%r16) %r10	# 0
	st	-4(%r29) %r12	# 0
	ld	5(%r16) %r12	# 0
	st	-5(%r29) %r10	# 0
	ld	4(%r16) %r10	# 0
	st	-6(%r29) %r15	# 0
	ld	3(%r16) %r15	# 0
	st	-7(%r29) %r14	# 0
	ld	2(%r16) %r14	# 0
	st	-8(%r29) %r9	# 0
	ld	1(%r16) %r9	# 0
	st	-9(%r29) %r12	# 2383
	addi	%r12 %r0 $0	# 2383
	add	%r25 %r10 %r12	# 2383
	st	0(%r25) %r2	# 2383
	addi	%r12 %r0 $1	# 2384
	add	%r25 %r10 %r12	# 2384
	st	0(%r25) %r3	# 2384
	addi	%r12 %r0 $0	# 2385
	st	-10(%r29) %r9	# 2385
	slt	%r25 %r2 %r0	# 2385
	beq	%r25 %r0 div_positive.11002	# 2385
	sub	%r9 %r0 %r2	# 2385
	addi	%r25 %r0 $1	# 2385
	srl	%r25 %r9 %r25	# 2385
	sub	%r9 %r0 %r25	# 2385
	beq	%r0 %r0 div_exit.11003	# 2385
div_positive.11002:
	addi	%r25 %r0 $1	# 2385
	srl	%r9 %r2 %r25	# 2385
div_exit.11003:
	add	%r25 %r15 %r12	# 2385
	st	0(%r25) %r9	# 2385
	addi	%r9 %r0 $1	# 2386
	slt	%r25 %r3 %r0	# 2386
	beq	%r25 %r0 div_positive.11004	# 2386
	sub	%r3 %r0 %r3	# 2386
	addi	%r25 %r0 $1	# 2386
	srl	%r25 %r3 %r25	# 2386
	sub	%r3 %r0 %r25	# 2386
	beq	%r0 %r0 div_exit.11005	# 2386
div_positive.11004:
	addi	%r25 %r0 $1	# 2386
	srl	%r3 %r3 %r25	# 2386
div_exit.11005:
	add	%r25 %r15 %r9	# 2386
	st	0(%r25) %r3	# 2386
	addi	%r3 %r0 $0	# 2387
	addi	%r9 %r0 l.8809	# 2387
	fld	0(%r9) %f0	# 2387
	st	-11(%r29) %r14	# 2387
	st	-12(%r29) %r8	# 2387
	st	-13(%r29) %r13	# 2387
	st	-14(%r29) %r10	# 2387
	st	-15(%r29) %r3	# 2387
	st	-16(%r29) %r11	# 2387
	fst	-17(%r29) %f0	# 2387
	addi	%r29 %r29 $-18	# 2387
	st	0(%r29) %r31	# 2387
	jal	min_caml_float_of_int	# 2387
	ld	0(%r29) %r31	# 2387
	addi	%r29 %r29 $18	# 2387
	fld	-17(%r29) %f1	# 2387
	finv	%f31 %f0	# 2387
	fmul	%f1 %f1 %f31	# 2387
	ld	-15(%r29) %r2	# 2387
	ld	-16(%r29) %r3	# 2387
	add	%r25 %r3 %r2	# 2387
	fst	0(%r25) %f1	# 2387
	addi	%r2 %r0 $0	# 2196
	ld	-14(%r29) %r3	# 2196
	add	%r25 %r3 %r2	# 2196
	ld	0(%r25) %r2	# 2196
	st	-18(%r29) %r2	# 2196
	addi	%r29 %r29 $-19	# 2196
	st	0(%r29) %r31	# 2196
	jal	create_pixel.2906	# 2196
	ld	0(%r29) %r31	# 2196
	addi	%r29 %r29 $19	# 2196
	add	%r3 %r0 %r2	# 2196
	ld	-18(%r29) %r2	# 2196
	addi	%r29 %r29 $-19	# 2196
	st	0(%r29) %r31	# 2196
	jal	min_caml_create_array	# 2196
	ld	0(%r29) %r31	# 2196
	addi	%r29 %r29 $19	# 2196
	addi	%r3 %r0 $0	# 2197
	ld	-14(%r29) %r8	# 2197
	add	%r25 %r8 %r3	# 2197
	ld	0(%r25) %r3	# 2197
	addi	%r3 %r3 $-2	# 2197
	addi	%r29 %r29 $-19	# 2197
	st	0(%r29) %r31	# 2197
	jal	init_line_elements.2908	# 2197
	ld	0(%r29) %r31	# 2197
	addi	%r29 %r29 $19	# 2197
	addi	%r3 %r0 $0	# 2196
	ld	-14(%r29) %r8	# 2196
	add	%r25 %r8 %r3	# 2196
	ld	0(%r25) %r3	# 2196
	st	-19(%r29) %r2	# 2196
	st	-20(%r29) %r3	# 2196
	addi	%r29 %r29 $-21	# 2196
	st	0(%r29) %r31	# 2196
	jal	create_pixel.2906	# 2196
	ld	0(%r29) %r31	# 2196
	addi	%r29 %r29 $21	# 2196
	add	%r3 %r0 %r2	# 2196
	ld	-20(%r29) %r2	# 2196
	addi	%r29 %r29 $-21	# 2196
	st	0(%r29) %r31	# 2196
	jal	min_caml_create_array	# 2196
	ld	0(%r29) %r31	# 2196
	addi	%r29 %r29 $21	# 2196
	addi	%r3 %r0 $0	# 2197
	ld	-14(%r29) %r8	# 2197
	add	%r25 %r8 %r3	# 2197
	ld	0(%r25) %r3	# 2197
	addi	%r3 %r3 $-2	# 2197
	addi	%r29 %r29 $-21	# 2197
	st	0(%r29) %r31	# 2197
	jal	init_line_elements.2908	# 2197
	ld	0(%r29) %r31	# 2197
	addi	%r29 %r29 $21	# 2197
	addi	%r3 %r0 $0	# 2196
	ld	-14(%r29) %r8	# 2196
	add	%r25 %r8 %r3	# 2196
	ld	0(%r25) %r3	# 2196
	st	-21(%r29) %r2	# 2196
	st	-22(%r29) %r3	# 2196
	addi	%r29 %r29 $-23	# 2196
	st	0(%r29) %r31	# 2196
	jal	create_pixel.2906	# 2196
	ld	0(%r29) %r31	# 2196
	addi	%r29 %r29 $23	# 2196
	add	%r3 %r0 %r2	# 2196
	ld	-22(%r29) %r2	# 2196
	addi	%r29 %r29 $-23	# 2196
	st	0(%r29) %r31	# 2196
	jal	min_caml_create_array	# 2196
	ld	0(%r29) %r31	# 2196
	addi	%r29 %r29 $23	# 2196
	addi	%r3 %r0 $0	# 2197
	ld	-14(%r29) %r8	# 2197
	add	%r25 %r8 %r3	# 2197
	ld	0(%r25) %r3	# 2197
	addi	%r3 %r3 $-2	# 2197
	addi	%r29 %r29 $-23	# 2197
	st	0(%r29) %r31	# 2197
	jal	init_line_elements.2908	# 2197
	ld	0(%r29) %r31	# 2197
	addi	%r29 %r29 $23	# 2197
	ld	-13(%r29) %r3	# 2391
	st	-23(%r29) %r2	# 2391
	add	%r16 %r0 %r3	# 2391
	addi	%r29 %r29 $-24	# 2391
	st	0(%r29) %r31	# 2391
	ld	0(%r16) %r24	# 2391
	jalr	%r24	# 2391
	ld	0(%r29) %r31	# 2391
	addi	%r29 %r29 $24	# 2391
	ld	-12(%r29) %r2	# 2392
	add	%r16 %r0 %r2	# 2392
	addi	%r29 %r29 $-24	# 2392
	st	0(%r29) %r31	# 2392
	ld	0(%r16) %r24	# 2392
	jalr	%r24	# 2392
	ld	0(%r29) %r31	# 2392
	addi	%r29 %r29 $24	# 2392
	addi	%r2 %r0 $4	# 2311
	ld	-11(%r29) %r3	# 2311
	add	%r16 %r0 %r3	# 2311
	addi	%r29 %r29 $-24	# 2311
	st	0(%r29) %r31	# 2311
	ld	0(%r16) %r24	# 2311
	jalr	%r24	# 2311
	ld	0(%r29) %r31	# 2311
	addi	%r29 %r29 $24	# 2311
	addi	%r2 %r0 $9	# 2312
	addi	%r3 %r0 $0	# 2312
	addi	%r8 %r0 $0	# 2312
	ld	-10(%r29) %r9	# 2312
	add	%r16 %r0 %r9	# 2312
	addi	%r29 %r29 $-24	# 2312
	st	0(%r29) %r31	# 2312
	ld	0(%r16) %r24	# 2312
	jalr	%r24	# 2312
	ld	0(%r29) %r31	# 2312
	addi	%r29 %r29 $24	# 2312
	addi	%r2 %r0 $4	# 2313
	ld	-9(%r29) %r3	# 2313
	add	%r16 %r0 %r3	# 2313
	addi	%r29 %r29 $-24	# 2313
	st	0(%r29) %r31	# 2313
	ld	0(%r16) %r24	# 2313
	jalr	%r24	# 2313
	ld	0(%r29) %r31	# 2313
	addi	%r29 %r29 $24	# 2313
	ld	-8(%r29) %r2	# 2394
	ld	-7(%r29) %r3	# 2394
	addi	%r29 %r29 $-24	# 2394
	st	0(%r29) %r31	# 2394
	jal	veccpy.2501	# 2394
	ld	0(%r29) %r31	# 2394
	addi	%r29 %r29 $24	# 2394
	addi	%r2 %r0 $0	# 1189
	ld	-6(%r29) %r3	# 1189
	add	%r25 %r3 %r2	# 1189
	ld	0(%r25) %r2	# 1189
	addi	%r2 %r2 $-1	# 1189
	ld	-4(%r29) %r8	# 1189
	ld	-5(%r29) %r9	# 1189
	add	%r3 %r0 %r2	# 1189
	add	%r16 %r0 %r9	# 1189
	add	%r2 %r0 %r8	# 1189
	addi	%r29 %r29 $-24	# 1189
	st	0(%r29) %r31	# 1189
	ld	0(%r16) %r24	# 1189
	jalr	%r24	# 1189
	ld	0(%r29) %r31	# 1189
	addi	%r29 %r29 $24	# 1189
	addi	%r2 %r0 $0	# 2396
	ld	-6(%r29) %r3	# 2396
	add	%r25 %r3 %r2	# 2396
	ld	0(%r25) %r2	# 2396
	addi	%r2 %r2 $-1	# 2396
	ld	-3(%r29) %r3	# 2396
	add	%r16 %r0 %r3	# 2396
	addi	%r29 %r29 $-24	# 2396
	st	0(%r29) %r31	# 2396
	ld	0(%r16) %r24	# 2396
	jalr	%r24	# 2396
	ld	0(%r29) %r31	# 2396
	addi	%r29 %r29 $24	# 2396
	addi	%r3 %r0 $0	# 2397
	addi	%r8 %r0 $0	# 2397
	ld	-21(%r29) %r2	# 2397
	ld	-2(%r29) %r9	# 2397
	add	%r16 %r0 %r9	# 2397
	addi	%r29 %r29 $-24	# 2397
	st	0(%r29) %r31	# 2397
	ld	0(%r16) %r24	# 2397
	jalr	%r24	# 2397
	ld	0(%r29) %r31	# 2397
	addi	%r29 %r29 $24	# 2397
	addi	%r2 %r0 $0	# 2398
	addi	%r10 %r0 $2	# 2398
	ld	-19(%r29) %r3	# 2398
	ld	-21(%r29) %r8	# 2398
	ld	-23(%r29) %r9	# 2398
	ld	-1(%r29) %r11	# 2398
	add	%r16 %r0 %r11	# 2398
	ld	0(%r16) %r24	# 2398
	jr	%r24	# 2398
.globl	min_caml_start
min_caml_start:
	addi	%r29 %r0 $1023
	addi	%r25 %r0 $10
	sll	%r29 %r29 %r25
	addi	%r29 %r29 $1023
	addi	%r28 %r0 $1023
	# Main Program Begin
	addi	%r2 %r0 $1	# 4
	addi	%r3 %r0 $0	# 4
	addi	%r29 %r29 $-1	# 4
	st	0(%r29) %r31	# 4
	jal	min_caml_create_array	# 4
	ld	0(%r29) %r31	# 4
	addi	%r29 %r29 $1	# 4
	addi	%r3 %r0 $0	# 8
	addi	%r8 %r0 l.8518	# 8
	fld	0(%r8) %f0	# 8
	st	-1(%r29) %r2	# 8
	add	%r2 %r0 %r3	# 8
	addi	%r29 %r29 $-2	# 8
	st	0(%r29) %r31	# 8
	jal	min_caml_create_float_array	# 8
	ld	0(%r29) %r31	# 8
	addi	%r29 %r29 $2	# 8
	addi	%r3 %r0 $60	# 9
	addi	%r8 %r0 $0	# 9
	addi	%r9 %r0 $0	# 9
	addi	%r10 %r0 $0	# 9
	addi	%r11 %r0 $0	# 9
	addi	%r12 %r0 $0	# 9
	add	%r13 %r0 %r28	# 9
	addi	%r28 %r28 $11	# 9
	st	10(%r13) %r2	# 9
	st	9(%r13) %r2	# 9
	st	8(%r13) %r2	# 9
	st	7(%r13) %r2	# 9
	st	6(%r13) %r12	# 9
	st	5(%r13) %r2	# 9
	st	4(%r13) %r2	# 9
	st	3(%r13) %r11	# 9
	st	2(%r13) %r10	# 9
	st	1(%r13) %r9	# 9
	st	0(%r13) %r8	# 9
	add	%r2 %r0 %r3	# 9
	add	%r3 %r0 %r13	# 9
	addi	%r29 %r29 $-2	# 9
	st	0(%r29) %r31	# 9
	jal	min_caml_create_array	# 9
	ld	0(%r29) %r31	# 9
	addi	%r29 %r29 $2	# 9
	addi	%r3 %r0 $3	# 12
	addi	%r8 %r0 l.8518	# 12
	fld	0(%r8) %f0	# 12
	st	-2(%r29) %r2	# 12
	add	%r2 %r0 %r3	# 12
	addi	%r29 %r29 $-3	# 12
	st	0(%r29) %r31	# 12
	jal	min_caml_create_float_array	# 12
	ld	0(%r29) %r31	# 12
	addi	%r29 %r29 $3	# 12
	addi	%r3 %r0 $3	# 14
	addi	%r8 %r0 l.8518	# 14
	fld	0(%r8) %f0	# 14
	st	-3(%r29) %r2	# 14
	add	%r2 %r0 %r3	# 14
	addi	%r29 %r29 $-4	# 14
	st	0(%r29) %r31	# 14
	jal	min_caml_create_float_array	# 14
	ld	0(%r29) %r31	# 14
	addi	%r29 %r29 $4	# 14
	addi	%r3 %r0 $3	# 16
	addi	%r8 %r0 l.8518	# 16
	fld	0(%r8) %f0	# 16
	st	-4(%r29) %r2	# 16
	add	%r2 %r0 %r3	# 16
	addi	%r29 %r29 $-5	# 16
	st	0(%r29) %r31	# 16
	jal	min_caml_create_float_array	# 16
	ld	0(%r29) %r31	# 16
	addi	%r29 %r29 $5	# 16
	addi	%r3 %r0 $1	# 18
	addi	%r8 %r0 l.8673	# 18
	fld	0(%r8) %f0	# 18
	st	-5(%r29) %r2	# 18
	add	%r2 %r0 %r3	# 18
	addi	%r29 %r29 $-6	# 18
	st	0(%r29) %r31	# 18
	jal	min_caml_create_float_array	# 18
	ld	0(%r29) %r31	# 18
	addi	%r29 %r29 $6	# 18
	addi	%r3 %r0 $50	# 20
	addi	%r8 %r0 $1	# 20
	addi	%r9 %r0 $-1	# 20
	st	-6(%r29) %r2	# 20
	st	-7(%r29) %r3	# 20
	add	%r3 %r0 %r9	# 20
	add	%r2 %r0 %r8	# 20
	addi	%r29 %r29 $-8	# 20
	st	0(%r29) %r31	# 20
	jal	min_caml_create_array	# 20
	ld	0(%r29) %r31	# 20
	addi	%r29 %r29 $8	# 20
	add	%r3 %r0 %r2	# 20
	ld	-7(%r29) %r2	# 20
	addi	%r29 %r29 $-8	# 20
	st	0(%r29) %r31	# 20
	jal	min_caml_create_array	# 20
	ld	0(%r29) %r31	# 20
	addi	%r29 %r29 $8	# 20
	addi	%r3 %r0 $1	# 22
	addi	%r8 %r0 $1	# 22
	addi	%r9 %r0 $0	# 22
	add	%r25 %r2 %r9	# 22
	ld	0(%r25) %r9	# 22
	st	-8(%r29) %r2	# 22
	st	-9(%r29) %r3	# 22
	add	%r3 %r0 %r9	# 22
	add	%r2 %r0 %r8	# 22
	addi	%r29 %r29 $-10	# 22
	st	0(%r29) %r31	# 22
	jal	min_caml_create_array	# 22
	ld	0(%r29) %r31	# 22
	addi	%r29 %r29 $10	# 22
	add	%r3 %r0 %r2	# 22
	ld	-9(%r29) %r2	# 22
	addi	%r29 %r29 $-10	# 22
	st	0(%r29) %r31	# 22
	jal	min_caml_create_array	# 22
	ld	0(%r29) %r31	# 22
	addi	%r29 %r29 $10	# 22
	addi	%r3 %r0 $1	# 26
	addi	%r8 %r0 l.8518	# 26
	fld	0(%r8) %f0	# 26
	st	-10(%r29) %r2	# 26
	add	%r2 %r0 %r3	# 26
	addi	%r29 %r29 $-11	# 26
	st	0(%r29) %r31	# 26
	jal	min_caml_create_float_array	# 26
	ld	0(%r29) %r31	# 26
	addi	%r29 %r29 $11	# 26
	addi	%r3 %r0 $1	# 28
	addi	%r8 %r0 $0	# 28
	st	-11(%r29) %r2	# 28
	add	%r2 %r0 %r3	# 28
	add	%r3 %r0 %r8	# 28
	addi	%r29 %r29 $-12	# 28
	st	0(%r29) %r31	# 28
	jal	min_caml_create_array	# 28
	ld	0(%r29) %r31	# 28
	addi	%r29 %r29 $12	# 28
	addi	%r3 %r0 $1	# 30
	addi	%r8 %r0 l.8636	# 30
	fld	0(%r8) %f0	# 30
	st	-12(%r29) %r2	# 30
	add	%r2 %r0 %r3	# 30
	addi	%r29 %r29 $-13	# 30
	st	0(%r29) %r31	# 30
	jal	min_caml_create_float_array	# 30
	ld	0(%r29) %r31	# 30
	addi	%r29 %r29 $13	# 30
	addi	%r3 %r0 $3	# 32
	addi	%r8 %r0 l.8518	# 32
	fld	0(%r8) %f0	# 32
	st	-13(%r29) %r2	# 32
	add	%r2 %r0 %r3	# 32
	addi	%r29 %r29 $-14	# 32
	st	0(%r29) %r31	# 32
	jal	min_caml_create_float_array	# 32
	ld	0(%r29) %r31	# 32
	addi	%r29 %r29 $14	# 32
	addi	%r3 %r0 $1	# 34
	addi	%r8 %r0 $0	# 34
	st	-14(%r29) %r2	# 34
	add	%r2 %r0 %r3	# 34
	add	%r3 %r0 %r8	# 34
	addi	%r29 %r29 $-15	# 34
	st	0(%r29) %r31	# 34
	jal	min_caml_create_array	# 34
	ld	0(%r29) %r31	# 34
	addi	%r29 %r29 $15	# 34
	addi	%r3 %r0 $3	# 36
	addi	%r8 %r0 l.8518	# 36
	fld	0(%r8) %f0	# 36
	st	-15(%r29) %r2	# 36
	add	%r2 %r0 %r3	# 36
	addi	%r29 %r29 $-16	# 36
	st	0(%r29) %r31	# 36
	jal	min_caml_create_float_array	# 36
	ld	0(%r29) %r31	# 36
	addi	%r29 %r29 $16	# 36
	addi	%r3 %r0 $3	# 38
	addi	%r8 %r0 l.8518	# 38
	fld	0(%r8) %f0	# 38
	st	-16(%r29) %r2	# 38
	add	%r2 %r0 %r3	# 38
	addi	%r29 %r29 $-17	# 38
	st	0(%r29) %r31	# 38
	jal	min_caml_create_float_array	# 38
	ld	0(%r29) %r31	# 38
	addi	%r29 %r29 $17	# 38
	addi	%r3 %r0 $3	# 41
	addi	%r8 %r0 l.8518	# 41
	fld	0(%r8) %f0	# 41
	st	-17(%r29) %r2	# 41
	add	%r2 %r0 %r3	# 41
	addi	%r29 %r29 $-18	# 41
	st	0(%r29) %r31	# 41
	jal	min_caml_create_float_array	# 41
	ld	0(%r29) %r31	# 41
	addi	%r29 %r29 $18	# 41
	addi	%r3 %r0 $3	# 43
	addi	%r8 %r0 l.8518	# 43
	fld	0(%r8) %f0	# 43
	st	-18(%r29) %r2	# 43
	add	%r2 %r0 %r3	# 43
	addi	%r29 %r29 $-19	# 43
	st	0(%r29) %r31	# 43
	jal	min_caml_create_float_array	# 43
	ld	0(%r29) %r31	# 43
	addi	%r29 %r29 $19	# 43
	addi	%r3 %r0 $2	# 46
	addi	%r8 %r0 $0	# 46
	st	-19(%r29) %r2	# 46
	add	%r2 %r0 %r3	# 46
	add	%r3 %r0 %r8	# 46
	addi	%r29 %r29 $-20	# 46
	st	0(%r29) %r31	# 46
	jal	min_caml_create_array	# 46
	ld	0(%r29) %r31	# 46
	addi	%r29 %r29 $20	# 46
	addi	%r3 %r0 $2	# 48
	addi	%r8 %r0 $0	# 48
	st	-20(%r29) %r2	# 48
	add	%r2 %r0 %r3	# 48
	add	%r3 %r0 %r8	# 48
	addi	%r29 %r29 $-21	# 48
	st	0(%r29) %r31	# 48
	jal	min_caml_create_array	# 48
	ld	0(%r29) %r31	# 48
	addi	%r29 %r29 $21	# 48
	addi	%r3 %r0 $1	# 50
	addi	%r8 %r0 l.8518	# 50
	fld	0(%r8) %f0	# 50
	st	-21(%r29) %r2	# 50
	add	%r2 %r0 %r3	# 50
	addi	%r29 %r29 $-22	# 50
	st	0(%r29) %r31	# 50
	jal	min_caml_create_float_array	# 50
	ld	0(%r29) %r31	# 50
	addi	%r29 %r29 $22	# 50
	addi	%r3 %r0 $3	# 53
	addi	%r8 %r0 l.8518	# 53
	fld	0(%r8) %f0	# 53
	st	-22(%r29) %r2	# 53
	add	%r2 %r0 %r3	# 53
	addi	%r29 %r29 $-23	# 53
	st	0(%r29) %r31	# 53
	jal	min_caml_create_float_array	# 53
	ld	0(%r29) %r31	# 53
	addi	%r29 %r29 $23	# 53
	addi	%r3 %r0 $3	# 55
	addi	%r8 %r0 l.8518	# 55
	fld	0(%r8) %f0	# 55
	st	-23(%r29) %r2	# 55
	add	%r2 %r0 %r3	# 55
	addi	%r29 %r29 $-24	# 55
	st	0(%r29) %r31	# 55
	jal	min_caml_create_float_array	# 55
	ld	0(%r29) %r31	# 55
	addi	%r29 %r29 $24	# 55
	addi	%r3 %r0 $3	# 58
	addi	%r8 %r0 l.8518	# 58
	fld	0(%r8) %f0	# 58
	st	-24(%r29) %r2	# 58
	add	%r2 %r0 %r3	# 58
	addi	%r29 %r29 $-25	# 58
	st	0(%r29) %r31	# 58
	jal	min_caml_create_float_array	# 58
	ld	0(%r29) %r31	# 58
	addi	%r29 %r29 $25	# 58
	addi	%r3 %r0 $3	# 59
	addi	%r8 %r0 l.8518	# 59
	fld	0(%r8) %f0	# 59
	st	-25(%r29) %r2	# 59
	add	%r2 %r0 %r3	# 59
	addi	%r29 %r29 $-26	# 59
	st	0(%r29) %r31	# 59
	jal	min_caml_create_float_array	# 59
	ld	0(%r29) %r31	# 59
	addi	%r29 %r29 $26	# 59
	addi	%r3 %r0 $3	# 60
	addi	%r8 %r0 l.8518	# 60
	fld	0(%r8) %f0	# 60
	st	-26(%r29) %r2	# 60
	add	%r2 %r0 %r3	# 60
	addi	%r29 %r29 $-27	# 60
	st	0(%r29) %r31	# 60
	jal	min_caml_create_float_array	# 60
	ld	0(%r29) %r31	# 60
	addi	%r29 %r29 $27	# 60
	addi	%r3 %r0 $3	# 63
	addi	%r8 %r0 l.8518	# 63
	fld	0(%r8) %f0	# 63
	st	-27(%r29) %r2	# 63
	add	%r2 %r0 %r3	# 63
	addi	%r29 %r29 $-28	# 63
	st	0(%r29) %r31	# 63
	jal	min_caml_create_float_array	# 63
	ld	0(%r29) %r31	# 63
	addi	%r29 %r29 $28	# 63
	addi	%r3 %r0 $0	# 67
	addi	%r8 %r0 l.8518	# 67
	fld	0(%r8) %f0	# 67
	st	-28(%r29) %r2	# 67
	add	%r2 %r0 %r3	# 67
	addi	%r29 %r29 $-29	# 67
	st	0(%r29) %r31	# 67
	jal	min_caml_create_float_array	# 67
	ld	0(%r29) %r31	# 67
	addi	%r29 %r29 $29	# 67
	add	%r3 %r0 %r2	# 67
	addi	%r2 %r0 $0	# 68
	st	-29(%r29) %r3	# 68
	addi	%r29 %r29 $-30	# 68
	st	0(%r29) %r31	# 68
	jal	min_caml_create_array	# 68
	ld	0(%r29) %r31	# 68
	addi	%r29 %r29 $30	# 68
	addi	%r3 %r0 $0	# 69
	add	%r8 %r0 %r28	# 69
	addi	%r28 %r28 $2	# 69
	st	1(%r8) %r2	# 69
	ld	-29(%r29) %r2	# 69
	st	0(%r8) %r2	# 69
	add	%r2 %r0 %r3	# 69
	add	%r3 %r0 %r8	# 69
	addi	%r29 %r29 $-30	# 69
	st	0(%r29) %r31	# 69
	jal	min_caml_create_array	# 69
	ld	0(%r29) %r31	# 69
	addi	%r29 %r29 $30	# 69
	add	%r3 %r0 %r2	# 69
	addi	%r2 %r0 $5	# 70
	addi	%r29 %r29 $-30	# 70
	st	0(%r29) %r31	# 70
	jal	min_caml_create_array	# 70
	ld	0(%r29) %r31	# 70
	addi	%r29 %r29 $30	# 70
	addi	%r3 %r0 $0	# 74
	addi	%r8 %r0 l.8518	# 74
	fld	0(%r8) %f0	# 74
	st	-30(%r29) %r2	# 74
	add	%r2 %r0 %r3	# 74
	addi	%r29 %r29 $-31	# 74
	st	0(%r29) %r31	# 74
	jal	min_caml_create_float_array	# 74
	ld	0(%r29) %r31	# 74
	addi	%r29 %r29 $31	# 74
	addi	%r3 %r0 $3	# 75
	addi	%r8 %r0 l.8518	# 75
	fld	0(%r8) %f0	# 75
	st	-31(%r29) %r2	# 75
	add	%r2 %r0 %r3	# 75
	addi	%r29 %r29 $-32	# 75
	st	0(%r29) %r31	# 75
	jal	min_caml_create_float_array	# 75
	ld	0(%r29) %r31	# 75
	addi	%r29 %r29 $32	# 75
	addi	%r3 %r0 $60	# 76
	ld	-31(%r29) %r8	# 76
	st	-32(%r29) %r2	# 76
	add	%r2 %r0 %r3	# 76
	add	%r3 %r0 %r8	# 76
	addi	%r29 %r29 $-33	# 76
	st	0(%r29) %r31	# 76
	jal	min_caml_create_array	# 76
	ld	0(%r29) %r31	# 76
	addi	%r29 %r29 $33	# 76
	add	%r3 %r0 %r28	# 77
	addi	%r28 %r28 $2	# 77
	st	1(%r3) %r2	# 77
	ld	-32(%r29) %r2	# 77
	st	0(%r3) %r2	# 77
	addi	%r8 %r0 $0	# 81
	addi	%r9 %r0 l.8518	# 81
	fld	0(%r9) %f0	# 81
	st	-33(%r29) %r3	# 81
	add	%r2 %r0 %r8	# 81
	addi	%r29 %r29 $-34	# 81
	st	0(%r29) %r31	# 81
	jal	min_caml_create_float_array	# 81
	ld	0(%r29) %r31	# 81
	addi	%r29 %r29 $34	# 81
	add	%r3 %r0 %r2	# 81
	addi	%r2 %r0 $0	# 82
	st	-34(%r29) %r3	# 82
	addi	%r29 %r29 $-35	# 82
	st	0(%r29) %r31	# 82
	jal	min_caml_create_array	# 82
	ld	0(%r29) %r31	# 82
	addi	%r29 %r29 $35	# 82
	add	%r3 %r0 %r28	# 83
	addi	%r28 %r28 $2	# 83
	st	1(%r3) %r2	# 83
	ld	-34(%r29) %r2	# 83
	st	0(%r3) %r2	# 83
	addi	%r2 %r0 $180	# 84
	addi	%r8 %r0 $0	# 84
	addi	%r9 %r0 l.8518	# 84
	fld	0(%r9) %f0	# 84
	add	%r9 %r0 %r28	# 84
	addi	%r28 %r28 $3	# 84
	fst	2(%r9) %f0	# 84
	st	1(%r9) %r3	# 84
	st	0(%r9) %r8	# 84
	add	%r3 %r0 %r9	# 84
	addi	%r29 %r29 $-35	# 84
	st	0(%r29) %r31	# 84
	jal	min_caml_create_array	# 84
	ld	0(%r29) %r31	# 84
	addi	%r29 %r29 $35	# 84
	addi	%r3 %r0 $1	# 88
	addi	%r8 %r0 $0	# 88
	st	-35(%r29) %r2	# 88
	add	%r2 %r0 %r3	# 88
	add	%r3 %r0 %r8	# 88
	addi	%r29 %r29 $-36	# 88
	st	0(%r29) %r31	# 88
	jal	min_caml_create_array	# 88
	ld	0(%r29) %r31	# 88
	addi	%r29 %r29 $36	# 88
	add	%r3 %r0 %r28	# 581
	addi	%r28 %r28 $6	# 581
	addi	%r8 %r0 read_screen_settings.2610	# 581
	st	0(%r3) %r8	# 581
	ld	-4(%r29) %r8	# 581
	st	5(%r3) %r8	# 581
	ld	-27(%r29) %r9	# 581
	st	4(%r3) %r9	# 581
	ld	-26(%r29) %r10	# 581
	st	3(%r3) %r10	# 581
	ld	-25(%r29) %r11	# 581
	st	2(%r3) %r11	# 581
	ld	-3(%r29) %r12	# 581
	st	1(%r3) %r12	# 581
	add	%r12 %r0 %r28	# 614
	addi	%r28 %r28 $3	# 614
	addi	%r13 %r0 read_light.2612	# 614
	st	0(%r12) %r13	# 614
	ld	-5(%r29) %r13	# 614
	st	2(%r12) %r13	# 614
	ld	-6(%r29) %r14	# 614
	st	1(%r12) %r14	# 614
	add	%r15 %r0 %r28	# 677
	addi	%r28 %r28 $2	# 677
	addi	%r10 %r0 read_nth_object.2617	# 677
	st	0(%r15) %r10	# 677
	ld	-2(%r29) %r10	# 677
	st	1(%r15) %r10	# 677
	add	%r9 %r0 %r28	# 760
	addi	%r28 %r28 $3	# 760
	addi	%r11 %r0 read_object.2619	# 760
	st	0(%r9) %r11	# 760
	st	2(%r9) %r15	# 760
	ld	-1(%r29) %r11	# 760
	st	1(%r9) %r11	# 760
	add	%r15 %r0 %r28	# 793
	addi	%r28 %r28 $2	# 793
	addi	%r8 %r0 read_and_network.2627	# 793
	st	0(%r15) %r8	# 793
	ld	-8(%r29) %r8	# 793
	st	1(%r15) %r8	# 793
	add	%r14 %r0 %r28	# 802
	addi	%r28 %r28 $7	# 802
	addi	%r11 %r0 read_parameter.2629	# 802
	st	0(%r14) %r11	# 802
	st	6(%r14) %r3	# 802
	st	5(%r14) %r9	# 802
	st	4(%r14) %r12	# 802
	st	3(%r14) %r15	# 802
	ld	-10(%r29) %r3	# 802
	st	2(%r14) %r3	# 802
	st	1(%r14) %r8	# 802
	add	%r9 %r0 %r28	# 828
	addi	%r28 %r28 $2	# 828
	addi	%r11 %r0 solver_rect_surface.2631	# 828
	st	0(%r9) %r11	# 828
	ld	-11(%r29) %r11	# 828
	st	1(%r9) %r11	# 828
	add	%r12 %r0 %r28	# 843
	addi	%r28 %r28 $2	# 843
	addi	%r15 %r0 solver_rect.2640	# 843
	st	0(%r12) %r15	# 843
	st	1(%r12) %r9	# 843
	add	%r9 %r0 %r28	# 852
	addi	%r28 %r28 $2	# 852
	addi	%r15 %r0 solver_surface.2646	# 852
	st	0(%r9) %r15	# 852
	st	1(%r9) %r11	# 852
	add	%r15 %r0 %r28	# 904
	addi	%r28 %r28 $2	# 904
	st	-36(%r29) %r14	# 904
	addi	%r14 %r0 solver_second.2665	# 904
	st	0(%r15) %r14	# 904
	st	1(%r15) %r11	# 904
	add	%r14 %r0 %r28	# 933
	addi	%r28 %r28 $5	# 933
	st	-37(%r29) %r2	# 933
	addi	%r2 %r0 solver.2671	# 933
	st	0(%r14) %r2	# 933
	st	4(%r14) %r9	# 933
	st	3(%r14) %r15	# 933
	st	2(%r14) %r12	# 933
	st	1(%r14) %r10	# 933
	add	%r2 %r0 %r28	# 965
	addi	%r28 %r28 $2	# 965
	addi	%r9 %r0 solver_rect_fast.2675	# 965
	st	0(%r2) %r9	# 965
	st	1(%r2) %r11	# 965
	add	%r9 %r0 %r28	# 998
	addi	%r28 %r28 $2	# 998
	addi	%r12 %r0 solver_surface_fast.2682	# 998
	st	0(%r9) %r12	# 998
	st	1(%r9) %r11	# 998
	add	%r12 %r0 %r28	# 1007
	addi	%r28 %r28 $2	# 1007
	addi	%r15 %r0 solver_second_fast.2688	# 1007
	st	0(%r12) %r15	# 1007
	st	1(%r12) %r11	# 1007
	add	%r15 %r0 %r28	# 1027
	addi	%r28 %r28 $5	# 1027
	addi	%r3 %r0 solver_fast.2694	# 1027
	st	0(%r15) %r3	# 1027
	st	4(%r15) %r9	# 1027
	st	3(%r15) %r12	# 1027
	st	2(%r15) %r2	# 1027
	st	1(%r15) %r10	# 1027
	add	%r3 %r0 %r28	# 1047
	addi	%r28 %r28 $2	# 1047
	addi	%r9 %r0 solver_surface_fast2.2698	# 1047
	st	0(%r3) %r9	# 1047
	st	1(%r3) %r11	# 1047
	add	%r9 %r0 %r28	# 1055
	addi	%r28 %r28 $2	# 1055
	addi	%r12 %r0 solver_second_fast2.2705	# 1055
	st	0(%r9) %r12	# 1055
	st	1(%r9) %r11	# 1055
	add	%r12 %r0 %r28	# 1074
	addi	%r28 %r28 $5	# 1074
	st	-38(%r29) %r14	# 1074
	addi	%r14 %r0 solver_fast2.2712	# 1074
	st	0(%r12) %r14	# 1074
	st	4(%r12) %r3	# 1074
	st	3(%r12) %r9	# 1074
	st	2(%r12) %r2	# 1074
	st	1(%r12) %r10	# 1074
	add	%r2 %r0 %r28	# 1171
	addi	%r28 %r28 $2	# 1171
	addi	%r3 %r0 iter_setup_dirvec_constants.2724	# 1171
	st	0(%r2) %r3	# 1171
	st	1(%r2) %r10	# 1171
	add	%r3 %r0 %r28	# 1196
	addi	%r28 %r28 $2	# 1196
	addi	%r9 %r0 setup_startp_constants.2729	# 1196
	st	0(%r3) %r9	# 1196
	st	1(%r3) %r10	# 1196
	add	%r9 %r0 %r28	# 1265
	addi	%r28 %r28 $2	# 1265
	addi	%r14 %r0 check_all_inside.2754	# 1265
	st	0(%r9) %r14	# 1265
	st	1(%r9) %r10	# 1265
	add	%r14 %r0 %r28	# 1285
	addi	%r28 %r28 $8	# 1285
	st	-39(%r29) %r2	# 1285
	addi	%r2 %r0 shadow_check_and_group.2760	# 1285
	st	0(%r14) %r2	# 1285
	st	7(%r14) %r15	# 1285
	st	6(%r14) %r11	# 1285
	st	5(%r14) %r10	# 1285
	ld	-33(%r29) %r2	# 1285
	st	4(%r14) %r2	# 1285
	st	3(%r14) %r13	# 1285
	ld	-14(%r29) %r13	# 1285
	st	2(%r14) %r13	# 1285
	st	1(%r14) %r9	# 1285
	st	-40(%r29) %r3	# 1315
	add	%r3 %r0 %r28	# 1315
	addi	%r28 %r28 $3	# 1315
	st	-41(%r29) %r12	# 1315
	addi	%r12 %r0 shadow_check_one_or_group.2763	# 1315
	st	0(%r3) %r12	# 1315
	st	2(%r3) %r14	# 1315
	st	1(%r3) %r8	# 1315
	add	%r12 %r0 %r28	# 1330
	addi	%r28 %r28 $6	# 1330
	addi	%r14 %r0 shadow_check_one_or_matrix.2766	# 1330
	st	0(%r12) %r14	# 1330
	st	5(%r12) %r15	# 1330
	st	4(%r12) %r11	# 1330
	st	3(%r12) %r3	# 1330
	st	2(%r12) %r2	# 1330
	st	1(%r12) %r13	# 1330
	add	%r3 %r0 %r28	# 1366
	addi	%r28 %r28 $10	# 1366
	addi	%r14 %r0 solve_each_element.2769	# 1366
	st	0(%r3) %r14	# 1366
	ld	-13(%r29) %r14	# 1366
	st	9(%r3) %r14	# 1366
	ld	-23(%r29) %r15	# 1366
	st	8(%r3) %r15	# 1366
	st	7(%r3) %r11	# 1366
	ld	-38(%r29) %r2	# 1366
	st	6(%r3) %r2	# 1366
	st	5(%r3) %r10	# 1366
	st	-42(%r29) %r12	# 1366
	ld	-12(%r29) %r12	# 1366
	st	4(%r3) %r12	# 1366
	st	3(%r3) %r13	# 1366
	ld	-15(%r29) %r13	# 1366
	st	2(%r3) %r13	# 1366
	st	1(%r3) %r9	# 1366
	st	-43(%r29) %r9	# 1407
	add	%r9 %r0 %r28	# 1407
	addi	%r28 %r28 $3	# 1407
	addi	%r13 %r0 solve_one_or_network.2773	# 1407
	st	0(%r9) %r13	# 1407
	st	2(%r9) %r3	# 1407
	st	1(%r9) %r8	# 1407
	add	%r13 %r0 %r28	# 1417
	addi	%r28 %r28 $8	# 1417
	addi	%r12 %r0 trace_or_matrix.2777	# 1417
	st	0(%r13) %r12	# 1417
	st	7(%r13) %r14	# 1417
	st	6(%r13) %r15	# 1417
	st	5(%r13) %r11	# 1417
	st	4(%r13) %r2	# 1417
	st	3(%r13) %r9	# 1417
	st	2(%r13) %r3	# 1417
	st	1(%r13) %r8	# 1417
	add	%r2 %r0 %r28	# 1444
	addi	%r28 %r28 $4	# 1444
	addi	%r3 %r0 judge_intersection.2781	# 1444
	st	0(%r2) %r3	# 1444
	st	3(%r2) %r13	# 1444
	st	2(%r2) %r14	# 1444
	ld	-10(%r29) %r3	# 1444
	st	1(%r2) %r3	# 1444
	add	%r9 %r0 %r28	# 1459
	addi	%r28 %r28 $10	# 1459
	addi	%r12 %r0 solve_each_element_fast.2783	# 1459
	st	0(%r9) %r12	# 1459
	st	9(%r9) %r14	# 1459
	ld	-24(%r29) %r12	# 1459
	st	8(%r9) %r12	# 1459
	ld	-41(%r29) %r13	# 1459
	st	7(%r9) %r13	# 1459
	st	6(%r9) %r11	# 1459
	st	5(%r9) %r10	# 1459
	st	-44(%r29) %r2	# 1459
	ld	-12(%r29) %r2	# 1459
	st	4(%r9) %r2	# 1459
	ld	-14(%r29) %r10	# 1459
	st	3(%r9) %r10	# 1459
	ld	-15(%r29) %r15	# 1459
	st	2(%r9) %r15	# 1459
	ld	-43(%r29) %r12	# 1459
	st	1(%r9) %r12	# 1459
	add	%r12 %r0 %r28	# 1500
	addi	%r28 %r28 $3	# 1500
	addi	%r15 %r0 solve_one_or_network_fast.2787	# 1500
	st	0(%r12) %r15	# 1500
	st	2(%r12) %r9	# 1500
	st	1(%r12) %r8	# 1500
	add	%r15 %r0 %r28	# 1510
	addi	%r28 %r28 $7	# 1510
	addi	%r10 %r0 trace_or_matrix_fast.2791	# 1510
	st	0(%r15) %r10	# 1510
	st	6(%r15) %r14	# 1510
	st	5(%r15) %r13	# 1510
	st	4(%r15) %r11	# 1510
	st	3(%r15) %r12	# 1510
	st	2(%r15) %r9	# 1510
	st	1(%r15) %r8	# 1510
	add	%r8 %r0 %r28	# 1534
	addi	%r28 %r28 $4	# 1534
	addi	%r9 %r0 judge_intersection_fast.2795	# 1534
	st	0(%r8) %r9	# 1534
	st	3(%r8) %r15	# 1534
	st	2(%r8) %r14	# 1534
	st	1(%r8) %r3	# 1534
	add	%r9 %r0 %r28	# 1555
	addi	%r28 %r28 $3	# 1555
	addi	%r10 %r0 get_nvector_rect.2797	# 1555
	st	0(%r9) %r10	# 1555
	ld	-16(%r29) %r10	# 1555
	st	2(%r9) %r10	# 1555
	st	1(%r9) %r2	# 1555
	add	%r11 %r0 %r28	# 1563
	addi	%r28 %r28 $2	# 1563
	addi	%r12 %r0 get_nvector_plane.2799	# 1563
	st	0(%r11) %r12	# 1563
	st	1(%r11) %r10	# 1563
	add	%r12 %r0 %r28	# 1571
	addi	%r28 %r28 $3	# 1571
	addi	%r13 %r0 get_nvector_second.2801	# 1571
	st	0(%r12) %r13	# 1571
	st	2(%r12) %r10	# 1571
	ld	-14(%r29) %r13	# 1571
	st	1(%r12) %r13	# 1571
	add	%r15 %r0 %r28	# 1609
	addi	%r28 %r28 $2	# 1609
	st	-45(%r29) %r11	# 1609
	addi	%r11 %r0 utexture.2806	# 1609
	st	0(%r15) %r11	# 1609
	ld	-17(%r29) %r11	# 1609
	st	1(%r15) %r11	# 1609
	st	-46(%r29) %r9	# 1687
	add	%r9 %r0 %r28	# 1687
	addi	%r28 %r28 $3	# 1687
	st	-47(%r29) %r12	# 1687
	addi	%r12 %r0 add_light.2809	# 1687
	st	0(%r9) %r12	# 1687
	st	2(%r9) %r11	# 1687
	ld	-19(%r29) %r12	# 1687
	st	1(%r9) %r12	# 1687
	add	%r13 %r0 %r28	# 1704
	addi	%r28 %r28 $9	# 1704
	addi	%r12 %r0 trace_reflections.2813	# 1704
	st	0(%r13) %r12	# 1704
	ld	-42(%r29) %r12	# 1704
	st	8(%r13) %r12	# 1704
	ld	-35(%r29) %r12	# 1704
	st	7(%r13) %r12	# 1704
	st	6(%r13) %r3	# 1704
	st	5(%r13) %r10	# 1704
	st	4(%r13) %r8	# 1704
	st	3(%r13) %r2	# 1704
	ld	-15(%r29) %r12	# 1704
	st	2(%r13) %r12	# 1704
	st	1(%r13) %r9	# 1704
	st	-48(%r29) %r8	# 1733
	add	%r8 %r0 %r28	# 1733
	addi	%r28 %r28 $25	# 1733
	st	-49(%r29) %r9	# 1733
	addi	%r9 %r0 trace_ray.2818	# 1733
	st	0(%r8) %r9	# 1733
	st	24(%r8) %r15	# 1733
	st	23(%r8) %r13	# 1733
	st	22(%r8) %r14	# 1733
	st	21(%r8) %r11	# 1733
	ld	-24(%r29) %r9	# 1733
	st	20(%r8) %r9	# 1733
	ld	-23(%r29) %r13	# 1733
	st	19(%r8) %r13	# 1733
	ld	-42(%r29) %r14	# 1733
	st	18(%r8) %r14	# 1733
	ld	-40(%r29) %r13	# 1733
	st	17(%r8) %r13	# 1733
	ld	-19(%r29) %r13	# 1733
	st	16(%r8) %r13	# 1733
	st	15(%r8) %r3	# 1733
	ld	-2(%r29) %r13	# 1733
	st	14(%r8) %r13	# 1733
	st	13(%r8) %r10	# 1733
	ld	-37(%r29) %r9	# 1733
	st	12(%r8) %r9	# 1733
	ld	-1(%r29) %r9	# 1733
	st	11(%r8) %r9	# 1733
	ld	-5(%r29) %r9	# 1733
	st	10(%r8) %r9	# 1733
	ld	-44(%r29) %r9	# 1733
	st	9(%r8) %r9	# 1733
	st	8(%r8) %r2	# 1733
	ld	-14(%r29) %r2	# 1733
	st	7(%r8) %r2	# 1733
	st	6(%r8) %r12	# 1733
	ld	-47(%r29) %r9	# 1733
	st	5(%r8) %r9	# 1733
	ld	-46(%r29) %r9	# 1733
	st	4(%r8) %r9	# 1733
	ld	-45(%r29) %r9	# 1733
	st	3(%r8) %r9	# 1733
	ld	-6(%r29) %r9	# 1733
	st	2(%r8) %r9	# 1733
	ld	-49(%r29) %r9	# 1733
	st	1(%r8) %r9	# 1733
	add	%r9 %r0 %r28	# 1826
	addi	%r28 %r28 $15	# 1826
	st	-50(%r29) %r8	# 1826
	addi	%r8 %r0 trace_diffuse_ray.2824	# 1826
	st	0(%r9) %r8	# 1826
	st	14(%r9) %r15	# 1826
	st	13(%r9) %r11	# 1826
	st	12(%r9) %r14	# 1826
	st	11(%r9) %r3	# 1826
	st	10(%r9) %r13	# 1826
	st	9(%r9) %r10	# 1826
	ld	-5(%r29) %r3	# 1826
	st	8(%r9) %r3	# 1826
	ld	-48(%r29) %r8	# 1826
	st	7(%r9) %r8	# 1826
	st	6(%r9) %r2	# 1826
	st	5(%r9) %r12	# 1826
	ld	-47(%r29) %r2	# 1826
	st	4(%r9) %r2	# 1826
	ld	-46(%r29) %r2	# 1826
	st	3(%r9) %r2	# 1826
	ld	-45(%r29) %r2	# 1826
	st	2(%r9) %r2	# 1826
	ld	-18(%r29) %r2	# 1826
	st	1(%r9) %r2	# 1826
	add	%r8 %r0 %r28	# 1845
	addi	%r28 %r28 $2	# 1845
	addi	%r10 %r0 iter_trace_diffuse_rays.2827	# 1845
	st	0(%r8) %r10	# 1845
	st	1(%r8) %r9	# 1845
	add	%r9 %r0 %r28	# 1871
	addi	%r28 %r28 $6	# 1871
	addi	%r10 %r0 trace_diffuse_ray_80percent.2836	# 1871
	st	0(%r9) %r10	# 1871
	ld	-24(%r29) %r10	# 1871
	st	5(%r9) %r10	# 1871
	ld	-40(%r29) %r11	# 1871
	st	4(%r9) %r11	# 1871
	ld	-1(%r29) %r12	# 1871
	st	3(%r9) %r12	# 1871
	st	2(%r9) %r8	# 1871
	ld	-30(%r29) %r14	# 1871
	st	1(%r9) %r14	# 1871
	add	%r15 %r0 %r28	# 1897
	addi	%r28 %r28 $4	# 1897
	addi	%r13 %r0 calc_diffuse_using_1point.2840	# 1897
	st	0(%r15) %r13	# 1897
	st	3(%r15) %r9	# 1897
	ld	-19(%r29) %r9	# 1897
	st	2(%r15) %r9	# 1897
	st	1(%r15) %r2	# 1897
	add	%r13 %r0 %r28	# 1916
	addi	%r28 %r28 $3	# 1916
	addi	%r3 %r0 calc_diffuse_using_5points.2843	# 1916
	st	0(%r13) %r3	# 1916
	st	2(%r13) %r9	# 1916
	st	1(%r13) %r2	# 1916
	add	%r3 %r0 %r28	# 1936
	addi	%r28 %r28 $2	# 1936
	addi	%r2 %r0 do_without_neighbors.2849	# 1936
	st	0(%r3) %r2	# 1936
	st	1(%r3) %r15	# 1936
	add	%r2 %r0 %r28	# 1951
	addi	%r28 %r28 $2	# 1951
	addi	%r15 %r0 neighbors_exist.2852	# 1951
	st	0(%r2) %r15	# 1951
	ld	-20(%r29) %r15	# 1951
	st	1(%r2) %r15	# 1951
	st	-51(%r29) %r2	# 1988
	add	%r2 %r0 %r28	# 1988
	addi	%r28 %r28 $3	# 1988
	addi	%r14 %r0 try_exploit_neighbors.2865	# 1988
	st	0(%r2) %r14	# 1988
	st	2(%r2) %r3	# 1988
	st	1(%r2) %r13	# 1988
	add	%r13 %r0 %r28	# 2015
	addi	%r28 %r28 $2	# 2015
	addi	%r14 %r0 write_ppm_header.2872	# 2015
	st	0(%r13) %r14	# 2015
	st	1(%r13) %r15	# 2015
	add	%r14 %r0 %r28	# 2035
	addi	%r28 %r28 $2	# 2035
	st	-52(%r29) %r13	# 2035
	addi	%r13 %r0 write_rgb.2876	# 2035
	st	0(%r14) %r13	# 2035
	st	1(%r14) %r9	# 2035
	add	%r13 %r0 %r28	# 2052
	addi	%r28 %r28 $7	# 2052
	st	-53(%r29) %r3	# 2052
	addi	%r3 %r0 pretrace_diffuse_rays.2878	# 2052
	st	0(%r13) %r3	# 2052
	st	6(%r13) %r10	# 2052
	st	5(%r13) %r11	# 2052
	st	4(%r13) %r12	# 2052
	st	3(%r13) %r8	# 2052
	ld	-30(%r29) %r3	# 2052
	st	2(%r13) %r3	# 2052
	ld	-18(%r29) %r8	# 2052
	st	1(%r13) %r8	# 2052
	add	%r8 %r0 %r28	# 2082
	addi	%r28 %r28 $10	# 2082
	addi	%r10 %r0 pretrace_pixels.2881	# 2082
	st	0(%r8) %r10	# 2082
	ld	-4(%r29) %r10	# 2082
	st	9(%r8) %r10	# 2082
	ld	-50(%r29) %r10	# 2082
	st	8(%r8) %r10	# 2082
	ld	-23(%r29) %r10	# 2082
	st	7(%r8) %r10	# 2082
	ld	-25(%r29) %r10	# 2082
	st	6(%r8) %r10	# 2082
	ld	-22(%r29) %r10	# 2082
	st	5(%r8) %r10	# 2082
	st	4(%r8) %r9	# 2082
	ld	-28(%r29) %r11	# 2082
	st	3(%r8) %r11	# 2082
	st	2(%r8) %r13	# 2082
	ld	-21(%r29) %r11	# 2082
	st	1(%r8) %r11	# 2082
	add	%r13 %r0 %r28	# 2107
	addi	%r28 %r28 $7	# 2107
	addi	%r12 %r0 pretrace_line.2888	# 2107
	st	0(%r13) %r12	# 2107
	ld	-27(%r29) %r12	# 2107
	st	6(%r13) %r12	# 2107
	ld	-26(%r29) %r12	# 2107
	st	5(%r13) %r12	# 2107
	st	4(%r13) %r10	# 2107
	st	3(%r13) %r8	# 2107
	st	2(%r13) %r15	# 2107
	st	1(%r13) %r11	# 2107
	add	%r8 %r0 %r28	# 2123
	addi	%r28 %r28 $7	# 2123
	addi	%r12 %r0 scan_pixel.2892	# 2123
	st	0(%r8) %r12	# 2123
	st	6(%r8) %r14	# 2123
	st	5(%r8) %r2	# 2123
	st	4(%r8) %r9	# 2123
	ld	-51(%r29) %r2	# 2123
	st	3(%r8) %r2	# 2123
	st	2(%r8) %r15	# 2123
	ld	-53(%r29) %r2	# 2123
	st	1(%r8) %r2	# 2123
	add	%r2 %r0 %r28	# 2143
	addi	%r28 %r28 $4	# 2143
	addi	%r9 %r0 scan_line.2898	# 2143
	st	0(%r2) %r9	# 2143
	st	3(%r2) %r8	# 2143
	st	2(%r2) %r13	# 2143
	st	1(%r2) %r15	# 2143
	add	%r8 %r0 %r28	# 2223
	addi	%r28 %r28 $2	# 2223
	addi	%r9 %r0 calc_dirvec.2918	# 2223
	st	0(%r8) %r9	# 2223
	st	1(%r8) %r3	# 2223
	add	%r9 %r0 %r28	# 2244
	addi	%r28 %r28 $2	# 2244
	addi	%r12 %r0 calc_dirvecs.2926	# 2244
	st	0(%r9) %r12	# 2244
	st	1(%r9) %r8	# 2244
	add	%r8 %r0 %r28	# 2258
	addi	%r28 %r28 $2	# 2258
	addi	%r12 %r0 calc_dirvec_rows.2931	# 2258
	st	0(%r8) %r12	# 2258
	st	1(%r8) %r9	# 2258
	add	%r9 %r0 %r28	# 2277
	addi	%r28 %r28 $2	# 2277
	addi	%r12 %r0 create_dirvec_elements.2937	# 2277
	st	0(%r9) %r12	# 2277
	ld	-1(%r29) %r12	# 2277
	st	1(%r9) %r12	# 2277
	add	%r14 %r0 %r28	# 2284
	addi	%r28 %r28 $4	# 2284
	st	-54(%r29) %r8	# 2284
	addi	%r8 %r0 create_dirvecs.2940	# 2284
	st	0(%r14) %r8	# 2284
	st	3(%r14) %r12	# 2284
	st	2(%r14) %r3	# 2284
	st	1(%r14) %r9	# 2284
	add	%r8 %r0 %r28	# 2296
	addi	%r28 %r28 $3	# 2296
	addi	%r9 %r0 init_dirvec_constants.2942	# 2296
	st	0(%r8) %r9	# 2296
	st	2(%r8) %r12	# 2296
	ld	-39(%r29) %r9	# 2296
	st	1(%r8) %r9	# 2296
	st	-55(%r29) %r14	# 2303
	add	%r14 %r0 %r28	# 2303
	addi	%r28 %r28 $5	# 2303
	addi	%r11 %r0 init_vecset_constants.2945	# 2303
	st	0(%r14) %r11	# 2303
	st	4(%r14) %r12	# 2303
	st	3(%r14) %r9	# 2303
	st	2(%r14) %r8	# 2303
	st	1(%r14) %r3	# 2303
	add	%r3 %r0 %r28	# 2330
	addi	%r28 %r28 $6	# 2330
	addi	%r8 %r0 setup_rect_reflection.2956	# 2330
	st	0(%r3) %r8	# 2330
	ld	-35(%r29) %r8	# 2330
	st	5(%r3) %r8	# 2330
	ld	-37(%r29) %r11	# 2330
	st	4(%r3) %r11	# 2330
	st	3(%r3) %r12	# 2330
	ld	-5(%r29) %r15	# 2330
	st	2(%r3) %r15	# 2330
	st	1(%r3) %r9	# 2330
	st	-56(%r29) %r14	# 2344
	add	%r14 %r0 %r28	# 2344
	addi	%r28 %r28 $6	# 2344
	st	-57(%r29) %r13	# 2344
	addi	%r13 %r0 setup_surface_reflection.2959	# 2344
	st	0(%r14) %r13	# 2344
	st	5(%r14) %r8	# 2344
	st	4(%r14) %r11	# 2344
	st	3(%r14) %r12	# 2344
	st	2(%r14) %r15	# 2344
	st	1(%r14) %r9	# 2344
	add	%r8 %r0 %r28	# 2359
	addi	%r28 %r28 $4	# 2359
	addi	%r11 %r0 setup_reflections.2962	# 2359
	st	0(%r8) %r11	# 2359
	st	3(%r8) %r14	# 2359
	st	2(%r8) %r3	# 2359
	ld	-2(%r29) %r3	# 2359
	st	1(%r8) %r3	# 2359
	add	%r3 %r0 %r28	# 2381
	addi	%r28 %r28 $17	# 2381
	addi	%r11 %r0 rt.2964	# 2381
	st	0(%r3) %r11	# 2381
	ld	-52(%r29) %r11	# 2381
	st	16(%r3) %r11	# 2381
	ld	-32(%r29) %r11	# 2381
	st	15(%r3) %r11	# 2381
	st	14(%r3) %r8	# 2381
	st	13(%r3) %r10	# 2381
	st	12(%r3) %r2	# 2381
	ld	-36(%r29) %r2	# 2381
	st	11(%r3) %r2	# 2381
	ld	-57(%r29) %r2	# 2381
	st	10(%r3) %r2	# 2381
	st	9(%r3) %r12	# 2381
	ld	-33(%r29) %r2	# 2381
	st	8(%r3) %r2	# 2381
	st	7(%r3) %r15	# 2381
	st	6(%r3) %r9	# 2381
	ld	-56(%r29) %r2	# 2381
	st	5(%r3) %r2	# 2381
	ld	-20(%r29) %r2	# 2381
	st	4(%r3) %r2	# 2381
	ld	-21(%r29) %r2	# 2381
	st	3(%r3) %r2	# 2381
	ld	-55(%r29) %r2	# 2381
	st	2(%r3) %r2	# 2381
	ld	-54(%r29) %r2	# 2381
	st	1(%r3) %r2	# 2381
	addi	%r2 %r0 $128	# 2402
	addi	%r8 %r0 $128	# 2402
	add	%r16 %r0 %r3	# 2402
	add	%r3 %r0 %r8	# 2402
	addi	%r29 %r29 $-58	# 2402
	st	0(%r29) %r31	# 2402
	ld	0(%r16) %r24	# 2402
	jalr	%r24	# 2402
	ld	0(%r29) %r31	# 2402
	addi	%r29 %r29 $58	# 2402
	addi	%r2 %r0 $0	# 2404
	# Main Program End
	halt

# Library Begin
# create_array
min_caml_create_array:
	# r2: array size -> array addr
	# r3: initial value
	add	%r8 %r0 %r2
	add	%r2 %r0 %r28
	addi	%r10 %r0 min_caml_create_array_loop
min_caml_create_array_loop:
	beq	%r8 %r0 min_caml_create_array_exit
	st	0(%r28) %r3
	addi	%r8 %r8 $-1
	addi	%r28 %r28 $1
	jr	%r10
min_caml_create_array_exit:
	jr	%r31
# create_float_array
min_caml_create_float_array:
	# r2: array size -> array addr
	# r9: addr
	# f0: initial value
	add	%r8 %r0 %r2
	add	%r2 %r0 %r28
	addi	%r10 %r0 min_caml_create_float_array_loop
min_caml_create_float_array_loop:
	beq	%r8 %r0 min_caml_create_float_array_exit
	fst	0(%r28) %f0
	addi	%r8 %r8 $-1
	addi	%r28 %r28 $1
	jr	%r10
min_caml_create_float_array_exit:
	jr	%r31
# div10 (unsigned)
min_caml_div10:
	# http://stackoverflow.com/a/19076173
	# http://homepage.cs.uiowa.edu/~jones/bcd/divide.html
	# r2: x/10, r8: x(unsigned), r9: 1, r10: 3
	add	%r8 %r0 %r2
	addi	%r9 %r0 $2
	srl	%r2 %r8 %r9
	add	%r2 %r2 %r8
	addi	%r9 %r0 $1
	srl	%r2 %r2 %r9
	add	%r2 %r2 %r8
	addi	%r10 %r0 $3
	srl	%r2 %r2 %r10
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r9
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r10
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r9
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r10
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r9
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r10
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r9
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r10
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r9
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r10
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r9
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r10
	add	%r2 %r2 %r8
	srl	%r2 %r2 %r9
	add	%r2 %r2 %r8
	addi	%r10 %r0 $4
	srl	%r2 %r2 %r10
	jr	%r31
# print_newline
min_caml_print_newline:
	addi	%r8 %r0 $0x0a  # LF
	send8	%r8
	jr	%r31
# print_char (print_byte)
min_caml_print_byte:
min_caml_print_char:
	send8	%r2
	jr	%r31
# print_int (32bit, byte -> ASCII)
min_caml_print_int:
	# x : signed 32 bit int
	# マイナスだけ出力
	slt	%r8 %r2 %r0
	beq	%r8 %r0 min_caml_print_int_positive
	addi	%r8 %r0 $0x2d # '-'
	send8	%r8
	sub	%r2 %r0 %r2
min_caml_print_int_positive:
	# 下から1桁ずつASCIIに直して上から出力
	# r2: x -> x/10, r8: x -> x mod 10, r12: counter
	addi	%r12 %r0 $8
	add	%r8 %r0 %r0
	add	%r9 %r0 %r0
min_caml_print_int_loop:
	# max 10 digits
	# divide by 10
	st	-1(%r29) %r2
	st	-2(%r29) %r8
	st	-3(%r29) %r9
	st	-4(%r29) %r12
	addi	%r29 %r29 $-5
	st	0(%r29) %r31
	jal	min_caml_div10
	ld	0(%r29) %r31
	addi	%r29 %r29 $5
	ld	-1(%r29) %r8
	ld	-4(%r29) %r12	
	# multiply by 10
	addi	%r9 %r0 $1
	sll	%r10 %r2 %r9
	addi	%r9 %r0 $3
	sll	%r11 %r2 %r9
	add	%r10 %r10 %r11
	# x mod 10
	sub	%r10 %r8 %r10
	# [0-9] in binary -> ASCII
	addi	%r10 %r10 $0x30	
	ld	-2(%r29) %r8
	ld	-3(%r29) %r9
	addi	%r13 %r0 $8
	sll	%r9 %r9 %r13
	addi	%r14 %r0 $24
	srl	%r11 %r8 %r14
	add	%r9 %r9 %r11
	sll	%r8 %r8 %r13
	add	%r8 %r8 %r10
	# loop check
	beq	%r2 %r0 min_caml_print_int_send
	addi	%r12 %r12 $-1
	beq	%r12 %r0 min_caml_print_int_loop_exit
	addi	%r13 %r0 min_caml_print_int_loop
	jr	%r13
min_caml_print_int_loop_exit:
	# rest 2 digits
	# r2: x/(10^7), r8: upper 4 bytes ASCII, r9: lower 4 bytes ASCII
	# remark: byte sequence is reversed
	# divide by 10
	st	-1(%r29) %r2
	st	-2(%r29) %r8
	st	-3(%r29) %r9
	addi	%r29 %r29 $-4
	st	0(%r29) %r31
	jal	min_caml_div10
	ld	0(%r29) %r31
	addi	%r29 %r29 $4
	ld	-1(%r29) %r8
	# multiply by 10
	addi	%r9 %r0 $1
	sll	%r10 %r2 %r9
	addi	%r9 %r0 $1
	sll	%r11 %r2 %r9
	add	%r10 %r10 %r11
	# x mod 10
	sub	%r10 %r8 %r10
	# [0-9] in binary -> ASCII
	addi	%r10 %r10 $0x30
	beq	%r2 %r0 min_caml_print_int_send_9
	# rest 1 digit
	addi	%r2 %r2 $0x30
	send8	%r2
min_caml_print_int_send_9:
	send8	%r10
	ld	-2(%r29) %r8
	ld	-3(%r29) %r9
min_caml_print_int_send:
	addi	%r10 %r0 $8
	send8	%r8
	srl	%r8 %r8 %r10
	beq	%r8 %r0 min_caml_print_int_exit
	send8	%r8
	srl	%r8 %r8 %r10
	beq	%r8 %r0 min_caml_print_int_exit
	send8	%r8
	srl	%r8 %r8 %r10
	beq	%r8 %r0 min_caml_print_int_exit
	send8	%r8
	beq	%r9 %r0 min_caml_print_int_exit
	send8	%r9
	srl	%r9 %r9 %r10
	beq	%r9 %r0 min_caml_print_int_exit
	send8	%r9
	srl	%r9 %r9 %r10
	beq	%r9 %r0 min_caml_print_int_exit
	send8	%r9
	srl	%r9 %r9 %r10
	beq	%r9 %r0 min_caml_print_int_exit
	send8	%r9
min_caml_print_int_exit:
	jr	%r31
# print_int (32bit, byte -> byte)
min_caml_print_int_byte:
	addi	%r9 %r0 $24
	srl	%r10 %r2 %r9
	send8	%r10
	addi	%r9 %r0 $16
	srl	%r10 %r2 %r9
	send8	%r10
	addi	%r9 %r0 $8
	srl	%r10 %r2 %r9
	send8	%r10
	send8	%r2
	jr	%r31	
# print_float (32bit, byte -> byte)
min_caml_print_float_byte:
	fst	-1(%r29) %f0
	ld	-1(%r29) %r8
	addi	%r9 %r0 $24
	srl	%r10 %r8 %r9
	send8	%r10
	addi	%r9 %r0 $16
	srl	%r10 %r8 %r9
	send8	%r10
	addi	%r9 %r0 $8
	srl	%r10 %r8 %r9
	send8	%r10
	send8	%r8
	jr	%r31	
# read_int (32bit, ASCII -> byte)
min_caml_read_int:
	# [0-9-]が送られてくるまでrecv8し続ける。
	# その後[0-9]が送られ続けてくる間受け取り、それ以外が来たらbreak
	# オーバーフローしたときの挙動はundefinedとしておく
	# こっそりr3に、区切り文字(数字の直後の1文字)のASCIIを入れて返す(read_float用)
	# r2: ans, r3: buffer, r8: FLAG, r9: '0', r10: '9', r11, r12, r13, r14: temp
	addi	%r9 %r0 $0x30
	addi	%r10 %r0 $0x39
	addi	%r3 %r0 $0
	# 最初の1bitはマイナスかもしれない
	addi	%r11 %r0 $0x2d  # '-'
	addi	%r12 %r0 min_caml_read_int_start
min_caml_read_int_start:
	recv8	%r3
	beq	%r3 %r11 min_caml_read_int_negative
	slt	%r13 %r3 %r9
	slt	%r14 %r10 %r3
	add	%r13 %r13 %r14
	beq	%r13 %r0 min_caml_read_int_positive
	jr	%r12
min_caml_read_int_negative:
	addi	%r8 %r0 $1
	addi	%r2 %r0 $0
	addi	%r11 %r0 min_caml_read_int_loop
	jr	%r11
min_caml_read_int_positive:
	addi	%r8 %r0 $0
	addi	%r2 %r3 $-48  # ASCII to binary
min_caml_read_int_loop:
	# recieve
	recv8	%r3
	slt	%r11 %r3 %r9
	bneq	%r11 %r0 min_caml_read_int_sign
	slt	%r11 %r10 %r3
	bneq	%r11 %r0 min_caml_read_int_sign
	# multiply by 10
	addi	%r13 %r0 $1
	sll	%r11 %r2 %r13
	addi	%r13 %r0 $3
	sll	%r12 %r2 %r13
	add	%r2 %r11 %r12
	# add a digit
	addi	%r3 %r3 $-48
	add	%r2 %r2 %r3
	addi	%r11 %r0 min_caml_read_int_loop
	jr	%r11
min_caml_read_int_sign:
	# 符号判定
	beq	%r8 %r0 min_caml_read_int_exit
	sub	%r2 %r0 %r2
min_caml_read_int_exit:
	jr	%r31
# read_float (32bit, ASCII -> byte)
min_caml_read_float:
	# 整数部分を受け取り、区切り文字が'.'なら小数点以下も読み取る
	# float_of_intの分の誤差も入ることに注意。
	# 整数も受け取る。".1"(= 0.1)みたいなのには対応していない。
	addi	%r29 %r29 $-2
	st	0(%r29) %r31
	jal	min_caml_read_int
	st	1(%r29) %r3  # r3の区切り文字情報をストアしておく
	jal	min_caml_float_of_int
	ld	0(%r29) %r31
	addi	%r29 %r29 $2
	ld	-1(%r29) %r8
	addi	%r9 %r0 $0x2e  # '.'
	bneq	%r8 %r9 min_caml_read_float_exit
	# ここから小数点以下
	# 1.1と1.01を区別するため、read_intは使えない
	# r2: ans, r3: #(head zeros) r8: buffer, r9: '0', r10: '9', r11: temp
	# f0: integer part
	addi	%r9 %r0 $0x30
	addi	%r10 %r0 $0x39
	addi	%r11 %r0 min_caml_read_float_loop1
	addi	%r3 %r0 $0
	addi	%r8 %r0 $0
	# 先頭の0を数えつつ上桁を探す
min_caml_read_float_loop1:
	recv8	%r8
	slt	%r12 %r8 %r9
	bneq	%r12 %r0 min_caml_read_float_exit
	slt	%r12 %r10 %r8
	bneq	%r12 %r0 min_caml_read_float_exit
	bneq	%r8 %r9 min_caml_read_float_loop1_exit
	addi	%r3 %r3 $1
	jr	%r11
min_caml_read_float_loop1_exit:
	addi	%r2 %r8 $-48
min_caml_read_float_loop2:
	# recieve
	recv8	%r8
	slt	%r11 %r8 %r9
	bneq	%r11 %r0 min_caml_read_float_loop2_exit
	slt	%r11 %r10 %r8
	bneq	%r11 %r0 min_caml_read_float_loop2_exit
	# multiply by 10
	addi	%r13 %r0 $1
	sll	%r11 %r2 %r13
	addi	%r13 %r0 $3
	sll	%r12 %r2 %r13
	add	%r2 %r11 %r12
	# add a digit
	addi	%r8 %r8 $-48
	add	%r2 %r2 %r8
	addi	%r11 %r0 min_caml_read_float_loop2
	jr	%r11
min_caml_read_float_loop2_exit:
	fst	-1(%r29) %f0
	st	-2(%r29) %r3
	addi	%r29 %r29 $-3
	st	0(%r29) %r31
	jal	min_caml_float_of_int
	ld	0(%r29) %r31
	addi	%r29 %r29 $3
	fld	-1(%r29) %f1
	ld	-2(%r29) %r3
	# 小数点以下の部分を0.fffまでずらし、更に頭の0の個数だけずらす
	addi	%r8 %r0 min_caml_float_1
	fld	0(%r8) %f2
	addi	%r8 %r0 min_caml_read_float_c1
	fld	0(%r8) %f3
	addi	%r8 %r0 min_caml_read_float_loop3
min_caml_read_float_loop3:
	# r3: #(head zero)
	# f0: 小数点以下, f1: 整数部分, f2: 1.0f, f3: 0.1f
	fslt	%f0 %f2
	bclt	min_caml_read_float_loop3_exit
	fmul	%f0 %f0 %f3
	jr	%r8
min_caml_read_float_loop3_exit:
	addi	%r8 %r0 min_caml_read_float_loop4
min_caml_read_float_loop4:
	slt	%r9 %r0 %r3
	beq	%r9 %r0 min_caml_read_float_loop4_exit
	addi	%r3 %r3 $-1
	fmul	%f0 %f0 %f3
	jr	%r8
min_caml_read_float_loop4_exit:
	# 符号の兼ね合いを見つつ整数部分と小数点以下の部分を足す
	addi	%r8 %r0 min_caml_float_0
	fld	0(%r8) %f2
	fslt	%f1 %f2
	bclf	min_caml_read_float_loop_exit_positive
	fneg	%f0 %f0
min_caml_read_float_loop_exit_positive:
	fadd	%f0 %f0 %f1
min_caml_read_float_exit:
	jr	%r31
# read_int_byte (32bit, byte -> byte)
min_caml_read_int_byte:
	addi	%r8 %r0 $8
	recv8	%r2
	sll	%r2 %r2 %r8
	recv8	%r2
	sll	%r2 %r2 %r8
	recv8	%r2
	sll	%r2 %r2 %r8
	recv8	%r2
	jr	%r31
# read_float_byte (32bit, byte -> byte)
min_caml_read_float_byte:
	addi	%r8 %r0 $8
	recv8	%r2
	sll	%r2 %r2 %r8
	recv8	%r2
	sll	%r2 %r2 %r8
	recv8	%r2
	sll	%r2 %r2 %r8
	recv8	%r2
	st	-1(%r29) %r2
	fld	-1(%r29) %f0
	jr	%r31
# float_of_int
min_caml_float_of_int:
	# FLAGを決めてabsをする
	slt	%r8 %r2 %r0
	beq	%r8 %r0 min_caml_float_of_int_flag_positive
	addi	%r9 %r0 $1
	sub	%r11 %r0 %r2
	addi	%r10 %r0 min_caml_float_of_int_after_flag
	jr	%r10
min_caml_float_of_int_flag_positive:
	addi	%r9 %r0 $0
	add	%r11 %r0 %r2
min_caml_float_of_int_after_flag:
	addiu32	%r8 %r0 $8388608
	slt	%r10 %r11 %r8
	beq	%r10 %r0 min_caml_float_of_int_big
	# |x| < 838860
	# 8388608.0f + xにして、8388608.0fを引く
	# r2: x, r8: const or addr, r9: FLAG, r10: temp, r11: |x|
	# f0: answer
	addiu32	%r8 %r0 $0x4b000000
	add	%r10 %r11 %r8
	st	-1(%r29) %r10
	fld	-1(%r29) %f0
	addi	%r8 %r0 min_caml_float_int_c1
	fld	0(%r8) %f1
	fadd	%f0 %f0 %f1
	# FLAG
	beq	%r9 %r0 min_caml_float_of_int_small_positive
	fneg	%f0 %f0
min_caml_float_of_int_small_positive:
	jr	%r31
min_caml_float_of_int_big:
	# |x| >= 8388608
	# x = m*8388608 + nとしてfloat_of_int(8388608)*m+float_of_int(n)を求める
	# r2: x, r8: |x| or n, r9: FLAG, r10: 8388608, r11: -8388608, r12: temp
	# f0: answer, f1: 8388608.0
	addi	%r8 %r0 min_caml_float_0
	fld	0(%r8) %f0
	addi	%r8 %r0 min_caml_float_int_c2
	fld	0(%r8) %f1
	add	%r8 %r0 %r11
	add	%r9 %r0 %r0
	addiu32	%r10 %r0 $8388608
	addiu32	%r11 %r0 $4286578688 # -8388608
min_caml_float_of_int_big_loop:
	# float_of_int(8388608)*mを求める
	fadd	%f0 %f0 %f1
	add	%r8 %r8 %r11
	slt	%r12 %r10 %r8
	beq	%r12 %r0 min_caml_float_of_int_big_loop
	# float_of_int(n)を求める
	st	-1(%r29) %r2
	fst	-2(%r29) %f0
	addi	%r29 %r29 $-3
	st	0(%r29) %r31
	add	%r2 %r0 %r8
	jal	min_caml_float_of_int
	ld	0(%r29) %r31
	addi	%r29 %r29 $3
	fld	-2(%r29) %f1
	ld	-1(%r29) %r2
	# 足し算する
	fadd	%f0 %f0 %f1
	# FLAG
	beq	%r9 %r0 min_caml_float_of_int_big_positive
	fneg	%f0 %f0
min_caml_float_of_int_big_positive:
	jr	%r31
##
## libmincaml_int_float.S
## むっちゃ大きい数に対してはまだむちゃくちゃ遅い！
## 加算を倍々に足すやつにすべき(あとでする)
##

# int_of_float (a.k.a. truncate)
min_caml_int_of_float:
min_caml_truncate:
	# FLAGを決めてabsをする
	addi	%r9 %r0 min_caml_float_0
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclt	min_caml_int_of_float_flag_negative
	addi	%r8 %r0 $0
	beq	%r0 %r0 min_caml_int_of_float_after_flag
min_caml_int_of_float_flag_negative:
	addi	%r8 %r0 $1
	fneg	%f0 %f0
min_caml_int_of_float_after_flag:
	addi	%r9 %r0 min_caml_float_int_c2
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclf	min_caml_int_of_float_big
	# |x| < 8388608.0
	# r2: answer, r8: FLAG, r9: addr, r10: imm, r11: const for shift
	# f0: |x|, f1: 8388608.0
	fadd	%f0 %f0 %f1
	fst	-1(%r29) %f0
	ld	-1(%r29) %r2
	addiu32	%r10 %r0 $0x4b000000
	sub	%r2 %r2 %r10
	nop
	# FLAGの調整
	beq	%r8 %r0 min_caml_int_of_float_small_positive
	sub	%r2 %r0 %r2
min_caml_int_of_float_small_positive:
	jr	%r31
min_caml_int_of_float_big:
	# |x| >= 8388608.0
	# r2: answer, r8: FLAG, r9: addr, r10: imm, r11: const for shift
	# f0: |x|, f1: 8388608.0, f2: -8388608.0
	fneg	%f2 %f1
	addi	%r2 %r0 $0
	# m回8388608を足す
min_caml_int_of_float_big_loop:
	fadd	%f0 %f0 %f2
	addiu32 %r11 %r0 $8388608
	add	%r2 %r2 %r11
	fslt	%f0 %f1
	bclf	min_caml_int_of_float_big_loop
	# int_of_float(n)を足す
	st	-1(%r29) %r2
	addi	%r29 %r29 $-2
	st	0(%r29) %r31
	jal	min_caml_int_of_float
	ld	0(%r29) %r31
	addi	%r29 %r29 $2
	ld	-1(%r29) %r3
	add	%r2 %r2 %r3
	# FLAGの調整
	beq	%r8 %r0 min_caml_int_of_float_big_positive
	sub	%r2 %r0 %r2
min_caml_int_of_float_big_positive:
	jr	%r31
# float_of_int
min_caml_float_of_int:
	# FLAGを決めてabsをする
	slt	%r8 %r2 %r0
	beq	%r8 %r0 min_caml_float_of_int_flag_positive
	addi	%r9 %r0 $1
	sub	%r11 %r0 %r2
	addi	%r10 %r0 min_caml_float_of_int_after_flag
	jr	%r10
min_caml_float_of_int_flag_positive:
	addi	%r9 %r0 $0
	add	%r11 %r0 %r2
min_caml_float_of_int_after_flag:
	addiu32	%r8 %r0 $8388608
	slt	%r10 %r11 %r8
	beq	%r10 %r0 min_caml_float_of_int_big
	# |x| < 838860
	# 8388608.0f + xにして、8388608.0fを引く
	# r2: x, r8: const or addr, r9: FLAG, r10: temp, r11: |x|
	# f0: answer
	addiu32	%r8 %r0 $0x4b000000
	add	%r10 %r11 %r8
	st	-1(%r29) %r10
	fld	-1(%r29) %f0
	addi	%r8 %r0 min_caml_float_int_c1
	fld	0(%r8) %f1
	fadd	%f0 %f0 %f1
	# FLAG
	beq	%r9 %r0 min_caml_float_of_int_small_positive
	fneg	%f0 %f0
min_caml_float_of_int_small_positive:
	jr	%r31
min_caml_float_of_int_big:
	# |x| >= 8388608
	# x = m*8388608 + nとしてfloat_of_int(8388608)*m+float_of_int(n)を求める
	# r2: x, r8: |x| or n, r9: FLAG, r10: 8388608, r11: -8388608, r12: temp
	# f0: answer, f1: 8388608.0
	addi	%r8 %r0 min_caml_float_0
	fld	0(%r8) %f0
	addi	%r8 %r0 min_caml_float_int_c2
	fld	0(%r8) %f1
	add	%r8 %r0 %r11
	add	%r9 %r0 %r0
	addiu32	%r10 %r0 $8388608
	sub	%r11 %r0 %r10
min_caml_float_of_int_big_loop:
	# float_of_int(8388608)*mを求める
	fadd	%f0 %f0 %f1
	add	%r8 %r8 %r11
	slt	%r12 %r8 %r10
	beq	%r12 %r0 min_caml_float_of_int_big_loop
	# float_of_int(n)を求める
	st	-1(%r29) %r2
	fst	-2(%r29) %f0
	addi	%r29 %r29 $-3
	st	0(%r29) %r31
	add	%r2 %r0 %r8
	jal	min_caml_float_of_int
	ld	0(%r29) %r31
	addi	%r29 %r29 $3
	fld	-2(%r29) %f1
	ld	-1(%r29) %r2
	# 足し算する
	fadd	%f0 %f0 %f1
	# FLAG
	beq	%r9 %r0 min_caml_float_of_int_big_positive
	fneg	%f0 %f0
min_caml_float_of_int_big_positive:
	jr	%r31
# ffloor
min_caml_floor:
	# float_of_int( int_of_float( x ) )をする
	# |x| >= 8388608のとき元々整数
	# |x| < 8388608のときもっと速くできるがとりあえず実装
	# f0: x
	addi	%r8 %r0 min_caml_float_int_c2
	fld	0(%r8) %f1
	fslt	%f0 %f1
	bclf	min_caml_floor_exit
	addi	%r8 %r0 min_caml_float_int_c1
	fld	0(%r8) %f1
	fslt	%f1 %f0
	bclf	min_caml_floor_exit
min_caml_floor_small:
	fst	-1(%r29) %f0
	addi	%r29 %r29 $-2
	st	0(%r29) %r31
	jal	min_caml_int_of_float
	jal	min_caml_float_of_int
	ld	0(%r29) %r31
	addi	%r29 %r29 $2
	fld	-1(%r29) %f1
	# f0: float_of_int(int_of_float(x)), f1: x, f2: -1.0f, f3: 0.0f, f4: 1.0f
	# %f0-1 < x < %f0となっているときは-1する
	addi	%r8 %r0 min_caml_float_minus_1
	fld	0(%r8) %f2
	fslt	%f1 %f0
	bclf	min_caml_floor_sign
	fadd	%f3 %f0 %f2
	fslt	%f3 %f1
	bclf	min_caml_floor_sign
	fadd	%f0 %f0 %f2
min_caml_floor_sign:
	jr	%r31
	# x<0ならfloor(x)+1を求めているので-1する
	addi	%r8 %r0 min_caml_float_0
	fld	0(%r8) %f3
	fslt	%f1 %f3
	bclf	min_caml_floor_exit
	fadd	%f0 %f0 %f2
min_caml_floor_exit:
	jr	%r31
# cos
min_caml_cos:
	# 定義域を[0, 2pi)にする
	# r8: FLAG, r9: addr
	# f0: x, f1: pi, f3: pi/2, f4: temp
	fabs	%f0 %f0
	addi	%r29 %r29 $-1
	st	0(%r29) %r31
	jal	min_caml_reduction_2pi
	ld	0(%r29) %r31
	addi	%r29 %r29 $1
	addi	%r8 %r0 $0
	# x >= piならx := x - pi, FLAG reverse
	addi	%r9 %r0 min_caml_pi
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclt	min_caml_cos_2
	fneg	%f4 %f1
	fadd	%f0 %f0 %f4
	beq	%r8 %r0 min_caml_cos_1_0
	addi	%r8 %r0 $0
	beq	%r0 %r0 min_caml_cos_2
min_caml_cos_1_0:
	addi	%r8 %r0 $1
min_caml_cos_2:
	# x >= pi/2ならx := pi - x, FLAG reverse
	addi	%r9 %r0 min_caml_half_pi
	fld	0(%r9) %f3
	fslt	%f0 %f3
	bclt	min_caml_cos_3
	fneg	%f4 %f0
	fadd	%f0 %f1 %f4
	beq	%r8 %r0 min_caml_cos_2_0
	addi	%r8 %r0 $0
	beq	%r0 %r0 min_caml_cos_3
min_caml_cos_2_0:
	addi	%r8 %r0 $1
min_caml_cos_3:
	# x <= pi/4ならkernel_cos, そうでないならx := pi/2 - x, kernel_sinする
	addi	%r9 %r0 min_caml_quarter_pi
	fld	0(%r9) %f4
	fslt	%f4 %f0
	bclf	min_caml_kernel_cos
	fneg	%f4 %f0
	fadd	%f0 %f3 %f4
	beq	%r0 %r0 min_caml_kernel_sin
min_caml_kernel_cos:
	# Tayler展開で計算する
	# r8: flag, r9: addr
	# f0: answer, f1: x^2, f3: const
	fmul	%f1 %f0 %f0
	addi	%r9 %r0 min_caml_kernel_cos_c3
	fld	0(%r9) %f3
	fmul	%f0 %f3 %f1
	addi	%r9 %r0 min_caml_kernel_cos_c2
	fld	0(%r9) %f3
	fadd	%f0 %f0 %f3
	fmul	%f0 %f0 %f1
	addi	%r9 %r0 min_caml_kernel_cos_c1
	fld	0(%r9) %f3
	fadd	%f0 %f0 %f3
	fmul	%f0 %f0 %f1
	addi	%r9 %r0 min_caml_float_1
	fld	0(%r9) %f3
	fadd	%f0 %f0 %f3
	beq	%r8 %r0 min_caml_kernel_cos_positive
	fabs	%f0 %f0
	fneg	%f0 %f0
	jr	%r31
min_caml_kernel_cos_positive:
	fabs	%f0 %f0
	jr	%r31
# sin
min_caml_sin:
	# 定義域を[0, 2pi)にする
	# r8: FLAG, r9: addr
	# f0: x, f1: pi, f3: pi/2, f4: temp
	addi	%r9 %r0 min_caml_float_0
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclt	min_caml_sin_flag_negative
	addi	%r8 %r0 $0
	beq	%r0 %r0 min_caml_sin_after_flag
min_caml_sin_flag_negative:
	addi	%r8 %r0 $1
	fabs	%f0 %f0
min_caml_sin_after_flag:
	st	-1(%r29) %r8
	addi	%r29 %r29 $-2
	st	0(%r29) %r31
	jal	min_caml_reduction_2pi
	ld	0(%r29) %r31
	addi	%r29 %r29 $2
	ld	-1(%r29) %r8
	# x >= piならx := x - pi, FLAG reverse
	addi	%r9 %r0 min_caml_pi
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclt	min_caml_sin_2
	fneg	%f4 %f1
	fadd	%f0 %f0 %f4
	beq	%r8 %r0 min_caml_sin_1_0
	addi	%r8 %r0 $0
	beq	%r0 %r0 min_caml_sin_2
min_caml_sin_1_0:
	addi	%r8 %r0 $1
min_caml_sin_2:
	# x >= pi/2ならx := pi - x
	addi	%r9 %r0 min_caml_half_pi
	fld	0(%r9) %f3
	fslt	%f0 %f3
	bclt	min_caml_sin_3
	fneg	%f4 %f0
	fadd	%f0 %f1 %f4
min_caml_sin_3:
	# x <= pi/4ならkernel_sin, そうでないならx := pi/2 - x, kernel_cosする
	addi	%r9 %r0 min_caml_quarter_pi
	fld	0(%r9) %f4
	fslt	%f4 %f0
	bclf	min_caml_kernel_sin
	fneg	%f4 %f0
	fadd	%f0 %f3 %f4
	beq	%r0 %r0 min_caml_kernel_cos
min_caml_kernel_sin:
	# Tayler展開で計算する
	# r8: flag, r9: addr
	# f0: x or answer, f1: temp, f2: x^2, f3: const
	fmul	%f2 %f0 %f0
	addi	%r9 %r0 min_caml_kernel_sin_c3
	fld	0(%r9) %f3
	fmul	%f1 %f3 %f2
	addi	%r9 %r0 min_caml_kernel_sin_c2
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	addi	%r9 %r0 min_caml_kernel_sin_c1
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	fmul	%f1 %f1 %f0
	fadd	%f0 %f1 %f0
	beq	%r8 %r0 min_caml_kernel_sin_positive
	fabs	%f0 %f0
	fneg	%f0 %f0
	jr	%r31
min_caml_kernel_sin_positive:
	fabs	%f0 %f0
	jr	%r31
# cos & sin
min_caml_reduction_2pi:
	# f0を[0, 2pi)にする
	# f1: 2*pi, f2: 0.5, f3: p, f4: 2.0 or -p
	addi	%r9 %r0 min_caml_2pi
	fld	0(%r9) %f1
	fmov	%f3 %f1
	addi	%r9 %r0 min_caml_float_half
	fld	0(%r9) %f2
	addi	%r9 %r0 min_caml_float_2
	fld	0(%r9) %f4
min_caml_reduction_2pi_while1:
	fslt	%f0 %f3
	bclt	min_caml_reduction_2pi_while2
	fmul	%f3 %f3 %f4
	beq	%r0 %r0 min_caml_reduction_2pi_while1
min_caml_reduction_2pi_while2:
	fslt	%f0 %f1
	bclt	min_caml_reduction_2pi_while2_exit
	fslt	%f0 %f3
	bclt	min_caml_reduction_2pi_while2_after_if
	fneg	%f4 %f3
	fadd	%f0 %f0 %f4
min_caml_reduction_2pi_while2_after_if:
	fmul	%f3 %f3 %f2
	beq	%r0 %r0 min_caml_reduction_2pi_while2
min_caml_reduction_2pi_while2_exit:
	jr	%r31
# atan
min_caml_atan:
	# r8: FLAG, r9: addr
	# f0: x, f1: pi, f2: 0.5, f3: temp(pi/4, pi/2), f4: temp, f5: temp
	addi	%r9 %r0 min_caml_float_0
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclt	min_caml_atan_flag_negative
	addi	%r8 %r0 $0
	addi	%r9 %r0 min_caml_atan_after_flag
	jr	%r9
min_caml_atan_flag_negative:
	addi	%r8 %r0 $1
	fabs	%f0 %f0
min_caml_atan_after_flag:
	addi	%r9 %r0 min_caml_atan_c1
	fld	0(%r9) %f4
	fslt	%f0 %f4
	bclf	min_caml_atan_2
	# |x| < 0.4375
	# kernel_atan(|x|)を返す
	addi	%r29 %r29 $-1
	st	0(%r29) %r31
	jal	min_caml_kernel_atan
	ld	0(%r29) %r31
	addi	%r29 %r29 $1
	beq	%r8 %r0 min_caml_atan_positive
	fabs	%f0 %f0
	fneg	%f0 %f0
	jr	%r31
min_caml_atan_positive:
	fabs	%f0 %f0
	jr	%r31
min_caml_atan_2:
	addi	%r9 %r0 min_caml_atan_c2
	fld	0(%r9) %f4
	fslt	%f0 %f4
	bclf	min_caml_atan_3
	# 0.4375 <= |x| < 2.4375
	# pi/4 + kernel_atan((|x|-1)/(|x|+1)) = kernel_atan(|x|)を返す
	# r8: FLAG, r9: addr
	# f0: x, f1: pi, f2: 0.5, f3: temp(pi/4), f4: |x|+1, f5: |x|-1
	addi	%r9 %r0 min_caml_float_1
	fld	0(%r9) %f3
	fadd	%f4 %f0 %f3
	fneg	%f3 %f3
	fadd	%f5 %f0 %f3
	finv	%f4 %f4
	fmul	%f0 %f4 %f5
	addi	%r29 %r29 $-1
	st	0(%r29) %r31
	jal	min_caml_kernel_atan
	ld	0(%r29) %r31
	addi	%r29 %r29 $1
	addi	%r9 %r0 min_caml_quarter_pi
	fld	0(%r9) %f3
	fadd	%f0 %f0 %f3
	beq	%r8 %r0 min_caml_atan_positive
	fabs	%f0 %f0
	fneg	%f0 %f0
	jr	%r31
min_caml_atan_3:
	# |x| >= 2.4375
	# pi/2 - kernel_atan(1/|x|) = kernel_atan(|x|)を返す
	# r8: FLAG, r9: addr
	# f0: x, f1: pi, f2: 0.5, f3: temp(pi/2), f4: temp, f5: temp
	finv	%f0 %f0
	addi	%r29 %r29 $-1
	st	0(%r29) %r31
	jal	min_caml_kernel_atan
	ld	0(%r29) %r31
	addi	%r29 %r29 $1
	fneg	%f4 %f0
	addi	%r9 %r0 min_caml_half_pi
	fld	0(%r9) %f0
	fadd	%f0 %f0 %f4
	beq	%r8 %r0 min_caml_atan_positive
	fabs	%f0 %f0
	fneg	%f0 %f0
	jr	%r31
min_caml_kernel_atan:
	# Tayler展開で計算する
	# r8には触らないようにする, r9: addr
	# f0: x or answer, f1: temp, f2: x^2, f3: const
	fmul	%f2 %f0 %f0
	addi	%r9 %r0 min_caml_kernel_atan_c6
	fld	0(%r9) %f3
	fmul	%f1 %f3 %f2
	addi	%r9 %r0 min_caml_kernel_atan_c5
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	addi	%r9 %r0 min_caml_kernel_atan_c4
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	addi	%r9 %r0 min_caml_kernel_atan_c3
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	addi	%r9 %r0 min_caml_kernel_atan_c2
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	addi	%r9 %r0 min_caml_kernel_atan_c1
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	fmul	%f1 %f1 %f0
	fadd	%f0 %f1 %f0
	jr	%r31
# Library End
