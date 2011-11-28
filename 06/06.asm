# a)
# if f > 1 then
#   g = f + f;
#   f = 0;
# endif;
# g = g + 1;

.data
f: .word 1
g: .word 0
.text
main:
lw $s1, f
lw $s3, g
li $s2, 1
beq $s1, $s2, E
slt $t0, $s1, $s2
bne $t0, $0, L
E:
add $s3, $s1, $s1
li $s1, 0
L:
addi $s3, $s3, 1

# b)
# f = 1;
# while f < 10 do
#   f = f + 1;
# endwhile;

li $s1, 1
li $s7, 10
Loop:
slt $t0, $s1, $s7
beq $t0, $0, End
addi $s1, $s1, 1
j Loop
End:

# c)
# g = 0;
# for f = 1 to 10 do
#   g = g + f;

li $s1, 1
li $s3, 0
li $s7, 10
Loop2:
slt $t0, $s1, $s7
beq $t0, $0, End2
add $s3, $s3, $s1
addi $s1, $s1, 1
j Loop2
End2:
