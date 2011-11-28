.text
main:
li $v0, 5
syscall
add $a0, $v0, $0
jal FIB
OUT:
add $a0, $v0, $0
li $v0, 1
syscall
li $v0, 10 # for MARS strangines...
syscall
FIB:
bgt $a0, 1, REC # addi $t7, $0, 1; slt $t7, $t7, $a0; bne $t7, $0, REC
add $v0, $0, $a0
jr $ra
REC:
addi $sp, $sp, -12
sw $ra, 0($sp)
sw $a0, 4($sp)
sub $a0, $a0, 1
jal FIB
sw $v0, 8($sp)
lw $a0, 4($sp)
sub $a0, $a0, 2
jal FIB
lw $t0, 8($sp)
add $v0, $v0, $t0
lw $ra, 0($sp)
addi $sp, $sp, 12
jr $ra
