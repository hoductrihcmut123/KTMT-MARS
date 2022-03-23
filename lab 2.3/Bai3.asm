.data

.text
main:
addi $a0, $zero, 100 
addi $a1, $zero, 0
add $a2, $zero, $zero 
loop:
beq $a0, $a1, exit
add $a2, $a2, $a1
addi $a1, $a1, 1
j loop
exit:

move $a0,$a2
li $v0,1
syscall

