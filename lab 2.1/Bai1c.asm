.data
	stringIn: .space 11
.text
main:

la $a0, stringIn
addi $t1,$0,10
li $v0,8
syscall 

li $v0,4
la $a0,stringIn
syscall 
