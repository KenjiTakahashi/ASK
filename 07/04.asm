.text
main:
li $v0, 5
syscall
add $a0, $v0, $0
li $v0, 5
syscall
add $a1, $v0, $0
jal NEWTON
OUT:
add $a0, $v0, $0
li $v0, 1
syscall
li $v0, 10
syscall
NEWTON:
beq $a1, $0, END
beq $a1, $a0, END
j REC
END:
addi $v0, $0, 1
jr $ra
REC:
addi $sp, $sp, -16
sw $ra, 0($sp)
sw $a0, 4($sp)
sw $a1, 8($sp)
sub $a0, $a0, 1
sub $a1, $a1, 1
jal NEWTON
sw $v0, 12($sp)
lw $a0, 4($sp)
lw $a1, 8($sp)
sub $a0, $a0, 1
jal NEWTON
lw $t0, 12($sp)
add $v0, $v0, $t0
lw $ra, 0($sp)
addi $sp, $sp, 16
jr $ra
