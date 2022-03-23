.data
iArray:.word 1,2,3,4,-5,6,7,8,9,10
iArray_size:.word 10
space: .asciiz " "
endl: .asciiz "\n"
.text
main:
la $a0,iArray
lb $a1,iArray_size
jal print
la $a0,iArray
lb $a1,iArray_size
jal range

range:
addi $sp,$sp,-4
sw  $ra,0($sp)
jal max
move $t5,$v0
jal min
move $t6,$v0
sub $a0,$t5,$t6
li $v0,1
syscall
lw $ra,0($sp)
addi $sp,$sp,4
li $v0,10
syscall


max:
move $t0,$a0   # address pointer
li $t1,0	# i
lw $t7,0($a0) # max value
for1:
bge $t1,$a1,exit1
lw $t2,0($t0)
bgt $t7,$t2,continue1
addu $t7,$t2,$0
continue1:
addiu $t1,$t1,1 
addiu $t0,$t0,4
move $v0,$t7
j for1

exit1:

jr $ra


min:
move $t0,$a0   # address pointer
li $t1,0	# i
lw $t8,0($a0) # min value
for2:
bge $t1,$a1,exit2
lw $t2,0($t0)
blt $t8,$t2,continue2
addu $t8,$t2,$0
continue2:
addiu $t1,$t1,1 
addiu $t0,$t0,4
move $v0,$t8
j for2

exit2:
jr $ra


print:
addu $t1, $a0, $0
sll $t5, $a1, 2
addu $t2, $t5, $a0
lw $t3, ($a0)
loopPrint:
bgeu $t1, $t2, endPrint
li $v0, 1
lw $a0, ($t1)
syscall
li $v0, 4
la $a0, space
syscall
addiu $t1, $t1, 4
j loopPrint
endPrint:
la $a0, endl
syscall
jr $ra



