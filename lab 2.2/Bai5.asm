.data

charArray: .asciiz "Computr Architctur CSE-HCMUT"

.text
main:

li $t0,0
la $t1,charArray

while:
lb $t2,($t1)
beq $t2,'e',cout
beq $t2,'\0',end
addi,$t0,$t0,1
addi $t1,$t1,1
j while

cout:
add $a0,$t0,$0
li $v0,1
syscall
li $v0,10
syscall

end:
li $a0,-1
li $v0,1
syscall











