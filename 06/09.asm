.text
li $s0, 196
li $s1, 0
for:
beq $s0, $0, endfor
subi $t0, $s0, 1
and $s0, $s0, $t0
addi $s1, $s1, 1
j for
endfor:
