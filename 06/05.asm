# yeees, it is MIPS ASM finally.
# $s0 = f
# $s1 = g
# $s2 = h
# $s3 = &A[0]
# $s4 = &B[0]

.data
f: .word 23
g: .word 0
h: .word 10
A: .word 10,30,12,1234,21938
B: .word 2,32,11
.text
main:
# g= -f + h + B[1]
lw $s0, f
lw $s1, g
lw $s2, h
la $s3, A
la $s4, B
sub $s7, $0, $s0 # $s7 = -f
add $s7, $s7, $s2 # $s7 = -f + h
lw $s5, 4($s3)
add $s1, $s7, $s3 # yeah

# f = A[B[g]+1]
lw $s0, f
lw $s1, g
lw $s2, h
add $s6, $s1, $s4 # $s6 = &B[0] + g
lw $s6, ($s6) # $s6 = B[g]
addi $s6, $s6, 1 # $s6 = B[g] + 1
mul $s6, $s6, 4
add $s6, $s6, $s3 # $s6 = &A[0] + B[g] + 1
lw $s0, ($s6)
