.data

.text
main:
li $t1,100
li $t2,3
li $v0,5
syscall
add $a0,$0,$v0
li $t6,-5
li $t7,3

blt $a0,$t6,else
bge $a0,$t7,else
add $a0,$t1,$t2
li $v0,1
syscall
li $v0,10
syscall

else:
mult $t1,$t2
mflo $a0
li $v0,1
syscall
