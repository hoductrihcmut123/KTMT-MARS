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
add $a3,$0,$v0

add $s0,$a1,$a2
add $s0,$s0,$a3
or $a0,$0,$s0
li $v0,1
syscall 
