# nah, nah :D
# a) answer = 301/302(+drop off)
.data
arr: .word 1,1
.text
main:
la $s0, arr
addi $t1, $s0, 400
LOOP:
lw $s1, 0($s0)
add $s2, $s2, $s1
lw $s1, 4($s0)
add $s2, $s2, $s1
addi $s0, $s0, 8
bne $t1, $s0, LOOP
