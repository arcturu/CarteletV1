.data
min_caml_pi:
	.long	0x40490fdb
min_caml_float_0:
	.long	0x00000000
min_caml_float_1:
	.long	0x3f800000
min_caml_float_minus_1:
	.long	0xbf800000
min_caml_float_half:
	.long	0x3f000000
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
l.39:	# 48.300300
	.long	0x42413382
l.37:	# 4.500000
	.long	0x40900000
l.35:	# -12.300000
	.long	0xc144cccd
.text
.globl	min_caml_start
min_caml_start:
	addi	%r29 %r0 $1023
	addi	%r1 %r0 $10
	sll	%r29 %r29 %r1
	addi	%r29 %r0 $1023
	# Main Program Begin
	addi	%r16 %r0 l.35	# 7
	fld	0(%r16) %f0	# 7
	fabs	%r2 %f0	# 7
	fsqrt	%r2 %f0	# 7
	addi	%r29 %r29 $-1	# 7
	st	0(%r29) %r31	# 7
	jal	min_caml_cos	# 7
	ld	0(%r29) %r31	# 7
	addi	%r29 %r29 $1	# 7
	addi	%r29 %r29 $-1	# 7
	st	0(%r29) %r31	# 7
	jal	min_caml_sin	# 7
	ld	0(%r29) %r31	# 7
	addi	%r29 %r29 $1	# 7
	addi	%r16 %r0 l.37	# 8
	fld	0(%r16) %f1	# 8
	fadd	%f0 %f0 %f1	# 8
	addi	%r16 %r0 l.39	# 8
	fld	0(%r16) %f1	# 8
	fneg	%f1 %f1	# 8
	fadd	%f0 %f0 %f1	# 8
	addi	%r16 %r0 $10000	# 9
	fst	-1(%r29) %f0	# 9
	addi	%r29 %r29 $-3	# 9
	st	0(%r29) %r31	# 9
	jal	min_caml_float_of_int	# 9
	ld	0(%r29) %r31	# 9
	addi	%r29 %r29 $3	# 9
	fld	-1(%r29) %f1	# 9
	fmul	%f0 %f1 %f0	# 9
	addi	%r29 %r29 $-3	# 6
	st	0(%r29) %r31	# 6
	jal	min_caml_int_of_float	# 6
	ld	0(%r29) %r31	# 6
	addi	%r29 %r29 $3	# 6
	add	%r2 %r16 %r0	# 6
	addi	%r29 %r29 $-3	# 5
	st	0(%r29) %r31	# 5
	jal	min_caml_print_int	# 5
	ld	0(%r29) %r31	# 5
	addi	%r29 %r29 $3	# 5
	add	%r2 %r16 %r0	# 5
	# Main Program End
	halt

# Library Start
# print_newline
min_caml_print_newline:
	# LF is 0x0a = 10
	addi	%r1 %r0 $10
	send8	%r1
	jr	%r31
# print_char (print_byte)
min_caml_print_byte:
min_caml_print_char:
	send8	%r16
	jr	%r31
# print_int(32bit)
min_caml_print_int:
	addi	%r8 %r0 $8
	send8	%r16
	srl	%r16 %r16 %r8
	send8	%r16
	srl	%r16 %r16 %r8
	send8	%r16
	srl	%r16 %r16 %r8
	send8	%r16
	jr	%r31
# print_float(32bit)
min_caml_print_float:
	fst	-1(%r29) %f0
	ld	-1(%r29) %r8
	addi	%r9 %r0 $8
	send8	%r8
	srl	%r8 %r9 %r9
	send8	%r8
	srl	%r8 %r9 %r9
	send8	%r8
	srl	%r8 %r8 %r9
	send8	%r8
	jr	%r31	
# read_int
min_caml_read_int:
	addi	%r8 %r0 $8
	recv8	%r16
	sll	%r16 %r16 %r8
	recv8	%r16
	sll	%r16 %r16 %r8
	recv8	%r16
	sll	%r16 %r16 %r8
	recv8	%r16
	jr	%r31
# read_float
min_caml_read_float:
	addi	%r8 %r0 $8
	recv8	%r16
	sll	%r16 %r16 %r8
	recv8	%r16
	sll	%r16 %r16 %r8
	recv8	%r16
	sll	%r16 %r16 %r8
	recv8	%r16
	st	-1(%r29) %r2
	fld	-1(%r29) %f0
	jr	%r31
# create_array
min_caml_create_array:
	add	%r2 %r0 %r28
	add	%r8 %r0 %r16
	add	%r9 %r0 %r28
	addi	%r1 %r0 min_caml_create_array_loop
min_caml_create_array_loop:
	st	0(%r9) %r17
	addi	%r8 %r8 $-1
	addi	%r9 %r9 $1
	beq	%r8 %r0 min_caml_create_array_exit
	jr	%r1
min_caml_create_array_exit:
	jr	%r31
# create_float
min_caml_create_float_array:
	add	%r2 %r0 %r28
	add	%r8 %r0 %r16
	add	%r9 %r0 %r28
	addi	%r1 %r0 min_caml_create_array_loop
min_caml_create_array_loop:
	fst	0(%r9) %f0
	addi	%r8 %r8 $-1
	addi	%r9 %r9 $1
	beq	%r8 %r0 min_caml_create_array_exit
	jr	%r1
min_caml_create_array_exit:
	jr	%r31
# ffloor
min_caml_floor:
	# float_of_int( int_of_float( x ) )をする
	# |x| < 8388608ならもっと速くできるがとりあえず実装
	fst	-1(%r29) %f0
	addi	%r29 %r29 $-2
	st	0(%r29) %r31
	jal	min_caml_int_of_float
	jal	min_caml_float_of_int
	ld	0(%r29) %r31
	addi	%r29 %r29 $2
	fld	1(%r29) %f1
	# f0: float_of_int(int_of_float(x)), f1: x
	fseq	%r8 %r16
	bclt	min_caml_floor_exit
	addi	%r8 %r0 min_caml_float_minus_1
	fld	0(%r8) %f2
	fadd	%f1 %f1 %f2
	fslt	%f1 %f0
	bclf	min_caml_floor_exit
	fmov	%f0 %f1
min_caml_floor_exit:
	jr	%r31
# truncate
min_caml_truncate:
	# int_of_float(x+0.5)
	addi	%r8 %r0 min_caml_float_half
	fld	0(%r8) %f1
	fadd	%f0 %f0 %f1
# int_of_float
min_caml_int_of_float:
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
	addi	%r9 %r0 min_caml_float_int_c1
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclf	min_caml_int_of_float_big
	# |x| < 8388608.0
	# r8: FLAG, r9: addr
	# f0: |x|, f1: 8388608.0
	fadd	%f0 %f0 %f1
	fst	-1(%r29) %f0
	ld	-1(%r29) %r10
	# FLAGの調整
	beq	%r8 %r0 min_caml_int_of_float_small_positive
	sub	%r16 %r0 %r16
min_caml_int_of_float_small_positive:
	jr	%r31
min_caml_int_of_float_big:
	# |x| >= 8388608.0
	# r8: FLAG, r9: addr, r16: answer
	# f0: |x|, f1: 8388608.0, f2: -8388608.0
	fneg	%f2 %f1
	addi	%r16 %r0 $0
	# m回8388608を足す
min_caml_int_of_float_big_loop:
	fadd	%f0 %f2 %f3
	fslt	%f0 %f1
	bclf	min_caml_int_of_float_big_loop
	# int_of_float(n)を足す
	st	-1(%r29) %r16
	addi	%r29 %r29 $-2
	st	0(%r29) %r31
	jal	min_caml_int_of_float
	ld	0(%r29) %r31
	addi	%r29 %r29 $2
	ld	-1(%r29) %r17
	add	%r16 %r16 %r17
	# FLAGの調整
	beq	%r8 %r0 min_caml_int_of_float_big_positive
	sub	%r16 %r0 %r16
min_caml_int_of_float_big_positive:
	jr	%r31
# float_of_int
min_caml_float_of_int:
	# FLAGを決めてabsをする
	slt	%r8 %r16 %r0
	beq	%r8 %r0 min_caml_float_of_int_flag_positive
	addi	%r9 %r0 $1
	sub	%r11 %r0 %r16
	beq %r0 %r0 min_caml_float_of_int_after_flag
min_caml_float_of_int_flag_positive:
	addi	%r9 %r0 $0
	add	%r11 %r0 %r16
min_caml_float_of_int_after_flag:
	slt	%r10 %r11 %r8
	beq	%r10 %r0 min_caml_float_of_int_big
	# |x| < 838860
	# 8388608を足して8388608.0fを引く
	# r8: const or addr, r9: FLAG, r10: temp, r11: |x|, r16: x
	# f0: answer
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
	# r8: |x| or n, r9: FLAG, r10: 8388608, r11: -8388608, r12: temp, r16: x
	# f0: answer, f1: 8388608.0
	addi	%r8 %r0 min_caml_float_0
	fld	0(%r8) %f0
	addi	%r8 %r0 min_caml_float_int_c2
	fld	0(%r8) %f1
	add	%r8 %r0 %r11
	add	%r9 %r0 %r0
min_caml_float_of_int_big_loop:
	# float_of_int(8388608)*mを求める
	fadd	%f0 %f0 %f1
	add	%r8 %r8 %r11
	slt	%r12 %r10 %r8
	beq	%r12 %r0 min_caml_float_of_int_big_loop
	# float_of_int(n)を求める
	st	-1(%r29) %r16
	fst	-2(%r29) %f0
	addi	%r29 %r29 $-3
	st	0(%r29) %r31
	add	%r16 %r0 %r8
	jal	min_caml_float_of_int
	ld	0(%r29) %r31
	addi	%r29 %r29 $3
	fld	-2(%r29) %f1
	ld	-1(%r29) %r16
	# 足し算する
	fadd	%f0 %f0 %f1
	# FLAG
	beq	%r9 %r0 min_caml_float_of_int_big_positive
	fneg	%f0 %f0
min_caml_float_of_int_big_positive:
	jr	%r31
# cos
min_caml_cos:
	# 定義域を[0, 2pi)にする
	# r8: FLAG, r9: addr
	# f0: x, f1: pi, f2: 0.5, f3: temp(pi/2), f4: temp
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
	fneg	%f3 %f1
	fadd	%f0 %f0 %f3
	addi	%r8 %r8 $1
	addi	%r9 %r0 $1
	sll	%r8 %r8 %r9
min_caml_cos_2:
	# x >= pi/2ならx := pi - x, FLAG reverse
	addi	%r9 %r0 min_caml_float_half
	fld	0(%r9) %f2
	fmul	%f3 %f1 %f2
	fslt	%f0 %f3
	bclt	min_caml_cos_3
	fneg	%f4 %f0
	fadd	%f0 %f1 %f4
	addi	%r8 %r8 $1
	addi	%r9 %r0 $1
	sll	%r8 %r8 %r9
min_caml_cos_3:
	# x <= pi/4ならkernel_cos, そうでないならx := pi/2 - x, kernel_sinする
	fmul	%f4 %f3 %f2
	fslt	%f4 %f0
	bclf	min_caml_kernel_cos
	fneg	%f4 %f0
	fadd	%f0 %f3 %f4
	beq	 %r0 %r0 min_caml_kernel_sin
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
	fmul	%f0 %f0 %f2
	addi	%r9 %r0 min_caml_kernel_cos_c1
	fld	0(%r9) %f3
	fadd	%f0 %f0 %f2
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
	# f0: x, f1: pi, f2: 0.5, f3: temp(pi/2), f4: temp
	addi	%r9 %r0 min_caml_float_0
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclt	min_caml_sin_flag_negative
	addi	%r8 %r0 $0
	addi	%r9 %r0 min_caml_sin_after_flag
	jr	%r9
min_caml_sin_flag_negative:
	addi	%r8 %r0 $1
min_caml_sin_after_flag:
	fabs	%f0 %f0
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
	fneg	%f3 %f1
	fadd	%f0 %f0 %f3
	addi	%r8 %r8 $1
	addi	%r9 %r0 $1
	sll	%r8 %r8 %r9
min_caml_sin_2:
	# x >= pi/2ならx := pi - x
	addi	%r9 %r0 min_caml_float_half
	fld	0(%r9) %f2
	fmul	%f3 %f1 %f2
	fslt	%f0 %f3
	bclt	min_caml_sin_3
	fneg	%f4 %f0
	fadd	%f0 %f1 %f4
min_caml_sin_3:
	# x <= pi/4ならkernel_sin, そうでないならx := pi/2 - x, kernel_cosする
	fmul	%f4 %f3 %f2
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
	fmul	%f0 %f1 %f0
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
	# f1: 2*pi, f2: 0.5, f3: p
	addi	%r9 %r0 min_caml_pi
	fld	0(%r9) %f1
	addi	%r9 %r0 min_caml_float_half
	fld	0(%r9) %f1
	fadd	%f0 %f1 %f1
	fmov	%f3 %f0
min_caml_reduction_2pi_cont:
	fslt	%f0 %f1
	bclt	min_caml_reduction_2pi_exit
	fslt	%f0 %f3
	bclt	min_caml_reduction_2pi_after_if
	fneg	%f4 %f3
	fadd	%f0 %f4 %f0
min_caml_reduction_2pi_after_if:
	fmul	%f3 %f3 %f2
min_caml_reduction_2pi_exit:
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
min_caml_atan_after_flag:
	fabs	%f0 %f0
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
	fld	0(%r9) %f4
	fslt	%f0 %f4
	bclf	min_caml_atan_3
	# 0.4375 <= |x| < 2.4375
	# pi/4 + kernel_atan((|x|+1)/(|x|-1)) = kernel_atan(|x|)を返す
	addi	%r9 %r0 min_caml_float_1
	fld	0(%r9) %f3
	fadd	%f4 %f0 %f3
	fneg	%f3 %f3
	fadd	%f5 %f0 %f3
	finv	%f5 %f5
	fmul	%f0 %f4 %f5
	addi	%r29 %r29 $-1
	st	0(%r29) %r31
	jal	min_caml_kernel_atan
	ld	0(%r29) %r31
	addi	%r29 %r29 $1
	addi	%r9 %r0 min_caml_pi
	fld	0(%r9) %f1
	addi	%r9 %r0 min_caml_float_half
	fld	0(%r9) %f2
	fmul	%f3 %f1 %f2
	fmul	%f3 %f3 %f2
	fadd	%f0 %f0 %f3
	beq	%r8 %r0 min_caml_atan_positive
	fabs	%f0 %f0
	fneg	%f0 %f0
	jr	%r31
min_caml_atan_3:
	# |x| >= 2.4375
	# pi/2 - kernel_atan(1/|x|) = kernel_atan(|x|)を返す
	finv	%f0 %f0
	addi	%r29 %r29 $-1
	st	0(%r29) %r31
	jal	min_caml_kernel_atan
	ld	0(%r29) %r31
	addi	%r29 %r29 $1
	fneg	%f4 %f0
	addi	%r9 %r0 min_caml_pi
	fld	0(%r9) %f1
	addi	%r9 %r0 min_caml_float_half
	fld	0(%r9) %f2
	fmul	%f0 %f1 %f2
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
	fld	0(%r9) %f3
	fmul	%f1 %f3 %f2
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	fld	0(%r9) %f3
	fadd	%f1 %f1 %f3
	fmul	%f1 %f1 %f2
	fmul	%f0 %f1 %f0
	jr	%r31
# Library End
