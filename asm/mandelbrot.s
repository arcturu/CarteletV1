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
l.107:	# 0.000000
	.long	0x0
l.105:	# 1.000000
	.long	0x3f800000
l.102:	# 1.500000
	.long	0x3fc00000
l.100:	# 400.000000
	.long	0x43c80000
l.98:	# 4.000000
	.long	0x40800000
.text
dbl.38:
	fadd	%f0 %f0 %f0	# 1
	jr	%r31	# 1
iloop.54:
	addi	%r25 %r2 $0	# 12
	beq	%r25 %r0 beq.126	# 12
	fneg	%f3 %f3	# 13
	fadd	%f2 %f2 %f3	# 13
	fadd	%f2 %f2 %f4	# 13
	fst	-1(%r29) %f4	# 14
	st	-3(%r29) %r2	# 14
	fst	-5(%r29) %f2	# 14
	fst	-7(%r29) %f5	# 14
	fst	-9(%r29) %f1	# 14
	addi	%r29 %r29 $-11	# 14
	st	0(%r29) %r31	# 14
	jal	dbl.38	# 14
	ld	0(%r29) %r31	# 14
	addi	%r29 %r29 $11	# 14
	fld	-9(%r29) %f1	# 14
	fmul	%f0 %f0 %f1	# 14
	fld	-7(%r29) %f5	# 14
	fadd	%f1 %f0 %f5	# 14
	fld	-5(%r29) %f0	# 17
	fmul	%f2 %f0 %f0	# 17
	fmul	%f3 %f1 %f1	# 18
	fadd	%f4 %f2 %f3	# 19
	addi	%r2 %r0 l.98	# 19
	fld	0(%r2) %f6	# 19
	fslt	%f6 %f4	# 19
	bclt	bclt.128	# 19
	ld	-3(%r29) %r2	# 20
	addi	%r2 %r2 $-1	# 20
	fld	-1(%r29) %f4	# 20
	addi	%r25 %r0 iloop.54	# 20
	jr	%r31	# 20
bclt.128:
	addi	%r2 %r0 $0	# 19
	addi	%r25 %r0 min_caml_print_int	# 19
    jr  %r25
	jr	%r31	# 19
beq.126:
	addi	%r2 %r0 $1	# 12
	addi	%r25 %r0 min_caml_print_int	# 12
    jr  %r25
	jr	%r31	# 12
xloop.44:
	sub	%r25 %r0 %r2	# 8
	addi	%r25 %r25 $400	# 8
	slt	%r25 %r0 %r25	# 8
	beq	%r25 %r0 beq.129	# 8
	st	-1(%r29) %r2	# 9
	st	-2(%r29) %r3	# 9
	addi	%r29 %r29 $-3	# 9
	st	0(%r29) %r31	# 9
	jal	min_caml_float_of_int	# 9
	ld	0(%r29) %r31	# 9
	addi	%r29 %r29 $3	# 9
	addi	%r29 %r29 $-3	# 9
	st	0(%r29) %r31	# 9
	jal	dbl.38	# 9
	ld	0(%r29) %r31	# 9
	addi	%r29 %r29 $3	# 9
	addi	%r2 %r0 l.100	# 9
	fld	0(%r2) %f1	# 9
	finv	%f1 %f1	# 9
	fmul	%f0 %f0 %f1	# 9
	addi	%r2 %r0 l.102	# 9
	fld	0(%r2) %f1	# 9
	fneg	%f1 %f1	# 9
	fadd	%f0 %f0 %f1	# 9
	ld	-2(%r29) %r2	# 10
	fst	-3(%r29) %f0	# 10
	addi	%r29 %r29 $-5	# 10
	st	0(%r29) %r31	# 10
	jal	min_caml_float_of_int	# 10
	ld	0(%r29) %r31	# 10
	addi	%r29 %r29 $5	# 10
	addi	%r29 %r29 $-5	# 10
	st	0(%r29) %r31	# 10
	jal	dbl.38	# 10
	ld	0(%r29) %r31	# 10
	addi	%r29 %r29 $5	# 10
	addi	%r2 %r0 l.100	# 10
	fld	0(%r2) %f1	# 10
	finv	%f1 %f1	# 10
	fmul	%f0 %f0 %f1	# 10
	addi	%r2 %r0 l.105	# 10
	fld	0(%r2) %f1	# 10
	fneg	%f1 %f1	# 10
	fadd	%f5 %f0 %f1	# 10
	addi	%r2 %r0 $1000	# 21
	addi	%r3 %r0 l.107	# 21
	fld	0(%r3) %f0	# 21
	addi	%r3 %r0 l.107	# 21
	fld	0(%r3) %f1	# 21
	addi	%r3 %r0 l.107	# 21
	fld	0(%r3) %f2	# 21
	addi	%r3 %r0 l.107	# 21
	fld	0(%r3) %f3	# 21
	fld	-3(%r29) %f4	# 21
	addi	%r29 %r29 $-5	# 21
	st	0(%r29) %r31	# 21
	jal	iloop.54	# 21
	ld	0(%r29) %r31	# 21
	addi	%r29 %r29 $5	# 21
	ld	-1(%r29) %r2	# 40
	addi	%r2 %r2 $1	# 40
	ld	-2(%r29) %r3	# 40
	addi	%r25 %r0 xloop.44	# 40
	jr	%r31	# 40
beq.129:
	jr	%r31	# 8
yloop.40:
	sub	%r25 %r0 %r2	# 5
	addi	%r25 %r25 $400	# 5
	slt	%r25 %r0 %r25	# 5
	beq	%r25 %r0 beq.131	# 5
	addi	%r3 %r0 $0	# 41
	st	-1(%r29) %r2	# 41
	add	%r24 %r0 %r3	# 41
	add	%r3 %r0 %r2	# 41
	add	%r2 %r0 %r24	# 41
	addi	%r29 %r29 $-2	# 41
	st	0(%r29) %r31	# 41
	jal	xloop.44	# 41
	ld	0(%r29) %r31	# 41
	addi	%r29 %r29 $2	# 41
	ld	-1(%r29) %r2	# 43
	addi	%r2 %r2 $1	# 43
	addi	%r25 %r0 yloop.40	# 43
	jr	%r31	# 43
beq.131:
	jr	%r31	# 5
.globl	min_caml_start
min_caml_start:
	addi	%r29 %r0 $1023
	addi	%r25 %r0 $10
	sll	%r29 %r29 %r25
	addi	%r29 %r29 $1023
	addi	%r28 %r0 $1023
	# Main Program Begin
	addi	%r2 %r0 $0	# 44
	addi	%r29 %r29 $-1	# 44
	st	0(%r29) %r31	# 44
	jal	yloop.40	# 44
	ld	0(%r29) %r31	# 44
	addi	%r29 %r29 $1	# 44
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
	st	0(%r28) %r3
	addi	%r8 %r8 $-1
	addi	%r28 %r28 $1
	beq	%r8 %r0 min_caml_create_array_exit
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
	addi	%r10 %r0 min_caml_create_array_loop
min_caml_create_array_loop:
	fst	0(%r28) %f0
	addi	%r8 %r8 $-1
	addi	%r28 %r28 $1
	beq	%r8 %r0 min_caml_create_array_exit
	jr	%r10
min_caml_create_array_exit:
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
	addi	%r8 %r0 $8
	send8	%r2
	srl	%r2 %r2 %r8
	send8	%r2
	srl	%r2 %r2 %r8
	send8	%r2
	srl	%r2 %r2 %r8
	send8	%r2
	jr	%r31
# print_float (32bit, byte -> byte)
min_caml_print_float_byte:
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
##
## libmincaml_int_float.S
## むっちゃ大きい数に対してはまだむちゃくちゃ遅い！
## 加算を倍々に足すやつにすべき(あとでする)
##

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
	addi	%r9 %r0 min_caml_int_of_float_after_flag
	jr	%r9
min_caml_int_of_float_flag_negative:
	addi	%r8 %r0 $1
	fneg	%f0 %f0
min_caml_int_of_float_after_flag:
	addi	%r9 %r0 min_caml_float_int_c2
	fld	0(%r9) %f1
	fslt	%f0 %f1
	bclf	min_caml_int_of_float_big
	# |x| < 8388608.0
	# r8: FLAG, r9: addr, r10: imm, r11: const for shift
	# f0: |x|, f1: 8388608.0
	fadd	%f0 %f0 %f1
	fst	-1(%r29) %f0
	ld	-1(%r29) %r2
	addiu32	%r10 %r0 $0x4b000000
	sub	%r10 %r0 %r10
	add	%r2 %r2 %r10 
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
# Library End
