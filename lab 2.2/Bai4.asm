
.data

.text
main:

li $v0,5
syscall
add $t0,$0,$v0

beq $t0,0, return1
beq $t0,1,return2
j return3

return1:
li $a0,0
li $v0,1
syscall
li $v0,10
syscall

return2:
li $a0,1
li $v0,1
syscall
li $v0,10
syscall

return3:
li $t1,0
li $t2,1
li $t3,2

for:
bgt $t3,$t0,end
addi $t3,$t3,1
add $a0,$t1,$t2
ori $t1,$t2,0
ori $t2,$a0,0
j for

end:
li $v0,1
syscall














