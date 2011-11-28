.text
li $a0, 10
li $a1, 4
gcd:
addi $t0, $a0, 0
addi $t1, $a1, 0
loop:
beq $t1, $0, done
div $t0, $t1
addi $t0, $t1, 0
mfhi $t1
j loop
done:
addi $v0, $t0, 0
mult $a0, $a1
mflo $t1
div $t1, $v0
mflo $v1

