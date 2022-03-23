.data
cArray:.asciiz "toi di hoc\n"
cArray_size:.byte 10

.text
main:
la $a0,cArray
lb $a1,cArray_size
li $v0,4
la $a0,cArray
 syscall
jal reverse

 li $v0,4
 la $a0,cArray
 syscall
 li $v0,10
 syscall

reverse:
move $t5,$a0 #pointer
 srl $t1,$a1,1
 li $t0,0
 for:

 bge $t0,$t1,exit
 lb $t2, 0($t5)
 subu $t4,$a1,$t0
 addi $t4,$t4,-1
 addu $t4,$t4,$a0
 lb $t3,0($t4)
 sb $t3, 0($t5)
 sb $t2, 0($t4)
 addiu $t0,$t0,1
 addiu $t5,$t5,1
 j for
 
 exit:
 jr $ra
 
