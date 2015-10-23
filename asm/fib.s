.data
.text
fib.10:
	sub	%r1 %r0 %r16	# 2
	addi	%r1 %r1 $1	# 2
	slt	%r1 %r1 %r0	# 2
	beq	%r1 %r0 beq.24	# 2
	addi	%r17 %r16 $-1	# 3
	st	0(%r29) %r16	# 3
	addi	%r29 %r29 $-5	# 3
	st	0(%r31) %r29	# 3
	jal	fib.10	# 3
	ld	0(%r29) %r31	# 3
	addi	%r29 %r29 $5	# 3
	add	%r2 %r16 %r0	# 3
	ld	0(%r29) %r17	# 3
	addi	%r17 %r17 $-2	# 3
	st	4(%r29) %r16	# 3
	addi	%r29 %r29 $-9	# 3
	st	0(%r31) %r29	# 3
	jal	fib.10	# 3
	ld	0(%r29) %r31	# 3
	addi	%r29 %r29 $9	# 3
	add	%r2 %r16 %r0	# 3
	ld	4(%r29) %r17	# 3
	add	%r16 %r17 %r16	# 3
	jr	%r31	# 3
beq.24:
	jr	%r31	# 2
.globl	min_caml_start
min_caml_start:
	addi	%r29 %r0 $1023
	addi	%r1 %r0 $10
	sll	%r29 %r29 %r1
	addi	%r29 %r0 $1023
	# Main Program Begin
	addi	%r16 %r0 $30	# 4
	addi	%r29 %r29 $-1	# 4
	st	0(%r31) %r29	# 4
	jal	fib.10	# 4
	ld	0(%r29) %r31	# 4
	addi	%r29 %r29 $1	# 4
	add	%r2 %r16 %r0	# 4
	addi	%r29 %r29 $-1	# 4
	st	0(%r31) %r29	# 4
    send %r1
	ld	0(%r29) %r31	# 4
	addi	%r29 %r29 $1	# 4
	add	%r2 %r16 %r0	# 4
	# Main Program End
	halt
