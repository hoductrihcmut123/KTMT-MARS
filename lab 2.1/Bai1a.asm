.data

.text
main:
li $v0,5
syscall 
add $a1,$0,$v0	

li $v0,5
syscall 
add $a2,$0,$v0	

li $v0,5
syscall 
add $a3 ,$0,$v0	

subu $a0,$a1,$a2
addu $a0,$a0,$a3
li $v0,1
syscall 















