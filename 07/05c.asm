.data
arr: .word 0,1,2,3,4,5,6,7,8,9
.text
main:
li $v0, 5
syscall
add $a1, $v0, $0 # int n;
li $v0, 5
syscall
add $a2, $v0, $0 # int x;
la $a0, arr # int &a[0];
li $v0, 0 # int res=0;
sll $t1, $a1, 2
add $t1, $a0, $t1 # int &array[n];
for:
beq $a0, $t1, endfor
lw $t2, ($a0)
bne $t2, $a2, skip
addi $v0, $v0, 1
skip:
addi $a0, $a0, 4
j for
endfor:
add $a0, $v0, $0
li $v0, 1
syscall
li $v0, 10
syscall
