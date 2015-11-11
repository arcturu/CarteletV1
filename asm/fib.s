.data
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
min_caml_float_minus_1:
	.long	0xbf800000
min_caml_float_half:
	.long	0x3f000000
.text
fib.10:
	sub	%r25 %r0 %r2	# 2
	addi	%r25 %r25 $1	# 2
	slt	%r25 %r25 %r0	# 2
	beq	%r25 %r0 beq.24	# 2
	addi	%r3 %r2 $-1	# 3
	st	-1(%r29) %r2	# 3
	add	%r2 %r0 %r3	# 3
	addi	%r29 %r29 $-2	# 3
	st	0(%r29) %r31	# 3
	jal	fib.10	# 3
	ld	0(%r29) %r31	# 3
	addi	%r29 %r29 $2	# 3
	ld	-1(%r29) %r3	# 3
	addi	%r3 %r3 $-2	# 3
	st	-2(%r29) %r2	# 3
	add	%r2 %r0 %r3	# 3
	addi	%r29 %r29 $-3	# 3
	st	0(%r29) %r31	# 3
	jal	fib.10	# 3
	ld	0(%r29) %r31	# 3
	addi	%r29 %r29 $3	# 3
	ld	-2(%r29) %r3	# 3
	add	%r2 %r3 %r2	# 3
	jr	%r31	# 3
beq.24:
	jr	%r31	# 2
.globl	min_caml_start
min_caml_start:
	addi	%r29 %r0 $1023
	addi	%r25 %r0 $10
	sll	%r29 %r29 %r25
	addi	%r29 %r29 $1023
	addi	%r28 %r0 $1023
	# Main Program Begin
	addi	%r2 %r0 $33	# 4
	addi	%r29 %r29 $-1	# 4
	st	0(%r29) %r31	# 4
	jal	fib.10	# 4
	ld	0(%r29) %r31	# 4
	addi	%r29 %r29 $1	# 4
	addi	%r29 %r29 $-1	# 4
	st	0(%r29) %r31	# 4
	jal	min_caml_print_int	# 4
	ld	0(%r29) %r31	# 4
	addi	%r29 %r29 $1	# 4
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
# Library End
