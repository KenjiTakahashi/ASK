.data
str: .space 64
.text
main:
la $a0, str
li $a1, 64
li $v0, 8
syscall
li $t1, 32
li $t7, 10
loop:
lb $t2, ($a0)
beq $t2, $t7, end
beq $t2, $t1, skip
xor $t2, $t2, $t1
sb $t2, ($a0)
skip:
addi $a0, $a0, 1
j loop
end:
li $v0, 4
la $a0, str
syscall
li $v0, 10
syscall
