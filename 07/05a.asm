.data
arr: .word 0,1,2,3,4,5,6,7,8,9
.text
main:
li $v0, 5
syscall
add $a1, $v0, $0 # int n;
li $v0, 5
add $a2, $v0, $0 # int x;
syscall
la $a0, arr # int &a[0];
li $v0, 0 # int res=0;
li $t0, 0 # int i=0;
for:
beq $a1, $t0, endfor # for(; i!=n ;)
sll $t1, $t0, 2
add $a3, $a0, $t1
lw $t2, ($a3)
bne $t2, $a2, skip
addi $v0, $v0, 1
skip:
addi $t0, $t0, 1
j for
endfor:
add $a0, $v0, $0
li $v0, 1
syscall
li $v0, 10
syscall
