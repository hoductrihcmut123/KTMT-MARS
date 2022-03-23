.data
array: .word 5,6,-342,5,7,12353,4,2,3,8,9
.text
main:
la $a1,array
lw $t1,8($a1)
lw $t2,20($a1)
sub $a0,$t1,$t2
li $v0,1
syscall 




