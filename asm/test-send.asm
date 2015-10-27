.data
.text
.globl min_caml_start
min_caml_start:
addiu %r1 %r0 $1
addi %r2 %r0 $0x0041
addiu %r4 %r4 $0xcccc
loop:
send8 %r1
addi %r1 %r1 $1
addi %r3 &r0 $0
loop2:
addi %r3 %r3 $1
bneq %r3 %r4 loop2
bneq %r1 %r2 loop
halt
