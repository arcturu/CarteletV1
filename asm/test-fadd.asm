addi r1 r0 0x7f7f
addi r16 r0 16
sll r1 r1 r16
addi r1 r1 0xffff
addi r2 r0 0x7f00
sll r2 r2 r16
addi r2 r2 0x0001
addi r3 r0 9
addi r4 r0 10
st r3 r1
addi r3 r3 1
st r3 r2
fld r3 f2
subi r3 r3 1
fld r3 f1
fadd f1 f1 f2
fst r4 f1
ld r4 r9
send r9
halt
