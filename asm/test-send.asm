.data
.text
.globl min_caml_start
min_caml_start:
    addi %r2 %r0 $0
    addi %r3 %r0 $8
    addi %r4 %r0 $5
    addiu32 %r9 %r0 $0x12345678
recv-loop:
    recv8 %r5
    sll  %r5 %r5 %r3
    addi %r4 %r4 $-1
    bneq %r4 %r0 recv-loop
    addi %r4 %r0 $4
send-loop:
    send8 %r5
    srl  %r5 %r5 %r3
    addi %r4 %r4 $-1
    bneq %r4 %r0 send-loop
    halt
