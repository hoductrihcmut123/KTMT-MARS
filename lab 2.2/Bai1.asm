
.data

stringa: .asciiz "\nComputer Science and Engineering, HCMUT\n"
stringb: .asciiz "\nComputer Architecture 2020\n"
.text
main:

li $v0,5
syscall 
addu $t1,$0,$v0

ori $t2,$0,2
divu $t1,$t2
mfhi $t3
ori $t4,$0,1

bne $t3,$t4, else
la $a0,stringa
li $v0,4
syscall 
li $v0,10
syscall 

else:
la $a0,stringb
li $v0,4
syscall 
