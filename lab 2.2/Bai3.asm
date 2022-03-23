
.data
.text
main:
li $t1,200
li $t2,4

li $v0,5
syscall
add $t0,$0,$v0

beq $t0,1 ,case1
beq $t0,2 ,case2
beq $t0,3 ,case3
beq $t0,4 ,case4
j default

case1:
add $a0,$t1,$t2
li $v0,1
syscall
li $v0,10
syscall

case2:
sub $a0,$t1,$t2
li $v0,1
syscall
li $v0,10
syscall

case3:
mult $t1,$t2
mflo $a0
li $v0,1
syscall
li $v0,10
syscall

case4:
div $t1,$t2
mflo $a0
li $v0,1
syscall
li $v0,10
syscall

default:
li $a0,0
li $v0,1
syscall

















